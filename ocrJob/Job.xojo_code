#tag Class
Protected Class Job
	#tag Method, Flags = &h0
		Function BuildBatchFile(file as FolderItem, byref ErrorMsg as string) As Boolean
		  ErrorMsg = ""
		  
		  if IsNull(file) then
		    ErrorMsg = "Invalid batch file path"
		    Return false
		  end if
		  
		  if file.Exists then
		    ErrorMsg = "Batch file exists"
		    Return false
		  end if
		  
		  try
		    dim stream as TextOutputStream = TextOutputStream.Create(file)
		    
		    for i as Integer = 0 to folders.LastIndex
		      for j as Integer = 0 to folders(i).Documents.LastIndex
		        stream.WriteLine("ocrmypdf " + folders(i).Documents(j).CmdLineParams)
		      next j
		    next i
		    
		    stream.Close
		    
		  Catch e as IOException
		    ErrorMsg = "Error creating batch file: " + e.ErrorNumber.ToString
		    Return false
		  end try
		  
		  Return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BuildCommandArguments(folderidx as integer, docidx as integer)
		  // this method parses the last document item for the folderidx folder
		  
		  // for keeping code cleaner
		  dim args as String = ""
		  dim doc as ocrJob.JobDocument = Folders(folderidx).Documents(docidx)
		  
		  args = "--language " + Conf.language + " "
		  
		  args = args.Conc(Conf.ProcessingPolicy).Conc(" ")
		  
		  args = args.Conc("--output-type ").conc(Conf.output_type).conc(" ")
		  
		  args = args.Conc("--optimize ").conc(Conf.optimize.ToString).conc(" ")
		  
		  args = args.Conc(Conf.Clean).conc(" ")
		  
		  args = args.Conc(if(Conf.FastWebView , "--fast-web-view 0 " , "-fast-web-view 9999 "))
		  
		  if Conf.Deskew then args.Conc("--deskew ")
		  
		  if Conf.Rotate then
		    args.Conc("--rotate-pages --rotate-pages-threshold ")
		    args = args.Conc(Conf.RotateThreshold.ToString).conc(" ")
		  end if
		  
		  if Conf.CustomParams <> "" then args = args.Conc(Conf.CustomParams).conc(" ")
		  
		  
		  if Conf.output_type = "none" then  // do not generate an output pdf
		    
		    if Conf.sidecar then 
		      doc.TextFile  = doc.InputDocFile.Parent.Child(doc.InputDocFile.NameWithoutExtension + ".TXT")
		      args = args.Conc("--sidecar ").conc(doc.TextFile.NativePath).conc(" ")
		    end if
		    
		    args = args.Conc(doc.InputDocFile.NativePath).conc(" -")
		    
		    
		    
		  else  // we output a pdf file
		    
		    
		    select case Conf.OutputFilePolicy
		    case ocrJob.OutputFilePolicies.Overwrite
		      
		      doc.OutputDocFile = new FolderItem(doc.InputDocFile)
		      
		      
		    case ocrJob.OutputFilePolicies.CreateFile
		      
		      select case Conf.OutputFilenameAppendumPolicy
		        
		      case ocrJob.OutputFilenameAppendumPolicies.Prefix
		        doc.OutputDocFile = doc.InputDocFile.Parent.Child(Conf.OutputFilenameAppendumValue + doc.InputDocFile.Name)
		        
		      case ocrJob.OutputFilenameAppendumPolicies.Suffix
		        doc.OutputDocFile = doc.InputDocFile.Parent.Child(doc.InputDocFile.NameWithoutExtension + Conf.OutputFilenameAppendumValue + "." + doc.InputDocFile.Extension)
		        
		      end select
		      
		    end Select
		    
		    
		    if Conf.sidecar then
		      select case Conf.SidecarPolicy
		      case ocrJob.SidecarFilenamePolicies.SameAsSource
		        doc.TextFile  = doc.InputDocFile.Parent.Child(doc.InputDocFile.NameWithoutExtension + ".TXT")
		      case ocrJob.SidecarFilenamePolicies.SameAsTarget
		        doc.TextFile  = doc.OutputDocFile.Parent.Child(doc.OutputDocFile.NameWithoutExtension + ".TXT")
		      end Select
		      
		      args = args.Conc("--sidecar ").conc(doc.TextFile.NativePath.quote).conc(" ")
		      
		    end if
		    
		    
		    args = args.Conc(doc.InputDocFile.NativePath.quote).conc(" ").conc(doc.OutputDocFile.NativePath.quote)
		    
		  end if
		  
		  
		  doc.CmdLineParams = args
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CompileTextReport() As string
		  dim reportlines(-1) as string
		  dim horzsep as String = chr(9)
		  
		  reportlines.Add ""
		  reportlines.Add "Job: " + Stats.JobStampID + horzsep + "Status: " + JobState2Description(State)
		  reportlines.Add "Base folder: " + conf.BaseFolder.NativePath + horzsep + "PDF Folders: " + Integer(Folders.LastIndex + 1).ToString
		  reportlines.Add "Documents: " + Stats.DocsTotal.ToString + horzsep + "Pages: " + Stats.PagesTotal.ToString
		  reportlines.Add "Started at: " + stats.JobStartTimestamp.SQLDateTime + horzsep + "Finished at: " + stats.JobEndTimestamp.SQLDateTime + horzsep + "Duration: " + ocrJob.Duration4Display(stats.JobStartTimestamp , stats.JobEndTimestamp)
		  reportlines.add ""
		  reportlines.add "Documents breakdown: "
		  reportlines.Add "Flawless      (code 0)                        = " + stats.DocsFlawless.ToString
		  reportlines.add "Already OCR'd (code 6)                        = " + stats.DocsAlreadyOCR.ToString
		  reportlines.add "Unreliable    (code 10)                       = " + stats.DocsUnreliable.ToString
		  reportlines.Add "Errors        (codes 2,3,4,5,7,8,9,15,-4,-99) = " + stats.DocsErrors.ToString
		  reportlines.Add "Cancelled     (codes 130 , -3)                = " + stats.DocsCancelled.ToString
		  reportlines.Add "------------------------------------------"
		  reportlines.Add "Total                                         = " + stats.DocsTotal.ToString
		  
		  Return String.FromArray(reportlines , EndOfLine.Native)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(initConf as ocrJob.JobConfiguration)
		  Conf = initConf
		  
		  if IsNull(Conf) Then
		    State = ocrJob.JobStates.Uninitialized
		  else
		    State = ocrJob.JobStates.Configured
		  end if
		  
		  Redim CreatedFiles(-1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteCreatedFiles()
		  dim f as FolderItem
		  
		  while CreatedFiles.LastIndex >= 0 
		    f = new FolderItem(CreatedFiles.Pop)
		    
		    if f.Exists then f.Remove
		    
		  wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FinalizeDocument(ProcessedDoc as ocrJob.JobDocument, ExitCode as Integer)
		  ProcessedDoc.OCREndTimestamp = DateTime.Now
		  
		  select case ExitCode
		    
		  case 0
		    Stats.DocsFlawless = Stats.DocsFlawless + 1
		  case 6
		    Stats.DocsAlreadyOCR = Stats.DocsAlreadyOCR + 1
		  case 10
		    Stats.DocsUnreliable = Stats.DocsUnreliable + 1
		  case 2 , 3 , 4 , 5 , 7 , 8 , 9 , 15 , -4 , -99
		    Stats.DocsErrors = Stats.DocsErrors + 1
		  case -3 , 130
		    stats.DocsCancelled = Stats.DocsCancelled + 1
		    
		  else
		    raise new RuntimeException("Internal error: Unexpected document state: " + ExitCode.ToString , 666)
		    
		  end Select
		  
		  ProcessedDoc.State = ocrJob.DocumentStates(ExitCode)
		  
		  
		  
		  // created file list for cleanup on job cancel
		  if ExitCode <> Integer(ocrJob.DocumentStates.Cancelled) then
		    
		    if not IsNull(ProcessedDoc.OutputDocFile) then
		      if ProcessedDoc.InputDocFile.NativePath <> ProcessedDoc.OutputDocFile.NativePath then
		        CreatedFiles.Add ProcessedDoc.OutputDocFile
		      end if
		    end if
		    
		    if not IsNull(ProcessedDoc.TextFile) then
		      CreatedFiles.Add ProcessedDoc.TextFile
		    end if
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FinalizeJob()
		  if Stats.DocsCancelled > 0 then 
		    State = ocrJob.JobStates.Done_Cancelled
		    
		  elseif Stats.DocsErrors > 0 then 
		    State = ocrJob.JobStates.Done_Errors
		    
		  elseif Stats.DocsUnreliable > 0 then 
		    State = ocrJob.JobStates.Done_Unreliable
		    
		  elseif Stats.DocsAlreadyOCR > 0 then 
		    State = ocrJob.JobStates.Done_AlreadyOCR
		    
		  elseif Stats.DocsFlawless = stats.DocsTotal then 
		    State = ocrJob.JobStates.Done_Flawless
		    
		    
		  else
		    
		    state = ocrJob.JobStates.Uninitialized // this shouldn't happen:signify internal error
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FolderIndex(folder as FolderItem) As integer
		  for i as Integer = 0 to Folders.LastIndex
		    
		    if folder.NativePath = Folders(i).JobFolderitem.NativePath then Return i
		    
		  next i
		  
		  Return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCursorsAtListIndex(ListIndex as Integer) As pair
		  for i as Integer = 0 to Folders.LastIndex
		    for j as Integer = 0 to Folders(i).Documents.LastIndex
		      if ListIndex = Folders(i).Documents(j).ListIndex then Return new Pair(i , j)
		    next j
		  next i
		  
		  Return new Pair(-1 , -1)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDuration4Display() As string
		  Return Duration4Display(Stats.JobEndTimestamp , Stats.JobStartTimestamp)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetJobState() As ocrJob.JobStates
		  Return State
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNextDocument() As ocrJob.JobDocument
		  // technically, it gets the current document and increments cursors afterwards
		  // if EOJ , it returns nil
		  
		  try
		    
		    dim currentDoc as ocrJob.JobDocument
		    currentDoc = Folders(FolderCursor).Documents(DocumentCursor)
		    
		    if State = ocrJob.JobStates.CancelRequested then 
		      currentDoc.State = ocrJob.DocumentStates.Cancelled // signify cancel, external app has to honor it
		    else // we go on as planned
		      currentDoc.State = ocrJob.DocumentStates.InProgress
		      currentDoc.OCRStartTimestamp = DateTime.Now // ocr is (probably) about to start right after
		    end if
		    
		    // now increment the cursors appropriately so the next document is avaliable upon request
		    if DocumentCursor < Folders(FolderCursor).Documents.LastIndex then
		      DocumentCursor = DocumentCursor + 1
		      
		    else // finished with this folder, go to the next
		      
		      FolderCursor = FolderCursor + 1  // don't worry when to stop, it's going to generate an exception at the end
		      DocumentCursor = 0
		      
		    end if
		    
		    
		    Return currentDoc
		    
		  Catch e as OutOfBoundsException // the end of the job
		    
		    Stats.JobEndTimestamp = DateTime.Now
		    
		    Return nil
		    
		  end try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isJobEmpty() As Boolean
		  if Folders.LastIndex < 0 then
		    Return true
		  else
		    Return false
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadSurveyData(SurveyData() as FolderItem, byref KillFlag as Boolean)
		  dim pagecount as Integer
		  dim folderidx as Integer
		  dim ListIndex as Integer = 0
		  
		  Stats = new ocrJob.JobStatistics
		  
		  for i as Integer = 0 to SurveyData.LastIndex // go through the raw document list
		    
		    Thread.Current.YieldToNext // make UI more responsive
		    
		    if KillFlag then Return
		    
		    if Conf.IgnoreIfSubstring and Conf.IgnoreIfSubstringValue <> "" then // implement ignore rule
		      if SurveyData(i).Name.Contains(Conf.IgnoreIfSubstringValue) then Continue for i
		    end if
		    
		    // this is an call to an external CLI program - it might slow things down considerably!
		    pagecount = pdfinfo(SurveyData(i).NativePath).pdfinfo_pages  // pagecount will be -1 if pdfinfo error
		    
		    
		    folderidx = FolderIndex(SurveyData(i).Parent)
		    
		    if folderidx = -1 then //doesnt exist, create it
		      Folders.Add new ocrJob.JobFolder(SurveyData(i).Parent)
		      folderidx = Folders.LastIndex
		    end if
		    
		    // now create the document
		    
		    Folders(folderidx).Documents.Add new ocrJob.JobDocument(SurveyData(i) , pagecount)
		    
		    // update the stats
		    Stats.DocsTotal = Stats.DocsTotal + 1
		    if pagecount > 0 then Stats.PagesTotal = Stats.PagesTotal + pagecount
		    Stats.FoldersTotal = Folders.LastIndex + 1
		    
		    // this ought to be the document list row index
		    Folders(folderidx).Documents(Folders(folderidx).Documents.LastIndex).ListIndex = Stats.DocsTotal - 1
		    
		    //set all documents to Pending
		    Folders(folderidx).Documents(Folders(folderidx).Documents.LastIndex).State = ocrJob.DocumentStates.Pending
		    
		    
		    // now build the command line for processing this document, according to the loaded configuration
		    
		    BuildCommandArguments(folderidx , Folders(folderidx).Documents.LastIndex)
		    
		    
		  next i
		  
		  FolderCursor = 0
		  DocumentCursor = 0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequestCancel() As integer
		  KillFlag = true
		  State = ocrJob.JobStates.CancelRequested
		  
		  dim DocIndexAtCancel as Integer = -1
		  
		  dim doc as ocrJob.JobDocument = GetNextDocument
		  DocIndexAtCancel = if(IsNull(doc) , -1 , doc.ListIndex)
		  
		  // cancel all pending documents
		  while not IsNull(doc)
		    FinalizeDocument(doc , Integer(ocrJob.DocumentStates.Cancelled))
		    doc = GetNextDocument
		  wend
		  
		  Return DocIndexAtCancel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Start()
		  KillFlag = false
		  Stats.JobStartTimestamp = DateTime.Now
		  FolderCursor = 0
		  DocumentCursor = 0
		  State = ocrJob.JobStates.Running
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Conf As ocrJob.JobConfiguration
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CreatedFiles() As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DocumentCursor As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FolderCursor As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Folders() As ocrJob.JobFolder
	#tag EndProperty

	#tag Property, Flags = &h21
		Private KillFlag As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private State As ocrJob.JobStates = ocrJob.JobStates.Uninitialized
	#tag EndProperty

	#tag Property, Flags = &h0
		Stats As ocrJob.JobStatistics
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
