#tag Module
Protected Module ocrJob
	#tag Method, Flags = &h21
		Private Sub Conc(extends  byref s as String, appendum as string)
		  s = s + appendum
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Conc(extends s as String, appendum as string) As string
		  Return s + appendum
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DocState2Description(DocState as ocrJob.DocumentStates) As string
		  select case DocState
		    
		  case ocrJob.DocumentStates.ocrJobError
		    Return "ocrJob Error"
		  case ocrJob.DocumentStates.Cancelled
		    Return "Cancelled"
		  case ocrJob.DocumentStates.InProgress
		    return "In Progress"
		  case ocrJob.DocumentStates.Pending
		    return "Pending"
		  case ocrJob.DocumentStates.ExitCode_OK
		    return "OK"
		  case ocrJob.DocumentStates.ExitCode_BadArgs
		    Return "Invalid args"
		  case ocrJob.DocumentStates.ExitCode_InputFile
		    Return "Invalid PDF"
		  case ocrJob.DocumentStates.ExitCode_MissingDependency
		    Return "Missing dependency"
		  case ocrJob.DocumentStates.ExitCode_InvalidOutputPDF
		    Return "Invalid PDF output"
		  case ocrJob.DocumentStates.ExitCode_FileAccessError
		    Return "Permission error"
		  case ocrJob.DocumentStates.ExitCode_AlreadyDoneOCR
		    Return "Already OCR'd"
		  case ocrJob.DocumentStates.ExitCode_ChildProcessError
		    Return "Child process error"
		  case ocrJob.DocumentStates.ExitCode_EncryptedPDF
		    Return "Encrypted PDF"
		  case ocrJob.DocumentStates.ExitCode_InvalidConfigTesseract
		    Return "Invalid Tesseract conf"
		  case ocrJob.DocumentStates.ExitCode_PDFAConversionFailed
		    Return "PDF/A convert error"
		  case ocrJob.DocumentStates.ExitCode_OtherError
		    Return "Other error"
		  case ocrJob.DocumentStates.ExitCode_CtrlC
		    Return "Interrupted"
		  else
		    Return "Unknown error"
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Duration4Display(startStamp as DateTime, endStamp as DateTime) As string
		  if IsNull(endStamp) or IsNull(startStamp) then Return "N/A"
		  
		  dim d as DateInterval = endStamp - startStamp
		  
		  dim dd as String
		  
		  dd = Format(d.Hours , "00") + ":" + Format(d.Minutes , "00") + ":" + Format(d.Seconds , "00")
		  
		  if d.Days > 0 then dd = d.Days.ToString + " " + dd
		  
		  Return dd
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Extension(extends f as FolderItem) As String
		  dim filename() as String = f.Name.Split(".")
		  
		  if filename.LastIndex = 0 then
		    
		    Return ""
		    
		  else
		    
		    Return filename.Pop
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isInstalledOcrmypdf(versionOutput as string) As Boolean
		  dim first2bytes as String = versionOutput.Left(2)
		  
		  if first2bytes.IsNumeric then // just a practical rule
		    Return true
		  else
		    Return false
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isInstalledPdfinfo(versionDataOutput as string) As Boolean
		  if versionDataOutput.Contains("pdfinfo") and versionDataOutput.Contains("version") then
		    Return true
		  else
		    Return False
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isInstalledTesseract(versionDataOutput as string) As Boolean
		  if versionDataOutput.Contains("tesseract") and versionDataOutput.Contains("leptonica") then
		    Return true
		  else
		    Return False
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function JobState2Description(JobState as ocrJob.JobStates) As string
		  select case JobState
		    
		  case ocrJob.JobStates.CancelRequested
		    Return "Cancel Requested"
		  case ocrJob.JobStates.Configured
		    Return "Configured"
		  case ocrJob.JobStates.Done_Cancelled
		    Return "Finished/Cancelled"
		  case ocrJob.JobStates.Done_Errors
		    Return "Finished/With Errors"
		  case ocrJob.JobStates.Done_Flawless
		    Return "Finished/Flawless"
		  case ocrJob.JobStates.Done_Unreliable
		    Return "Finished/Unreliable"
		  case ocrJob.JobStates.Done_Valid
		    Return "Finished/Valid"
		  case ocrJob.JobStates.Running
		    Return "Running"
		  case ocrJob.JobStates.Uninitialized
		    Return "Uninitialized"
		    
		  else
		    Return "Undefined!"
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NameWithoutExtension(extends f as FolderItem) As String
		  dim filename() as String = f.Name.Split(".")
		  
		  if filename.LastIndex = 0 then
		    
		    Return filename(0)
		    
		  else
		    
		    call filename.Pop
		    
		    Return String.FromArray(filename , ".")
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ocrmypdfHelp() As string
		  dim s as new Shell
		  s.ExecuteMode = shell.ExecuteModes.Synchronous
		  
		  s.Execute("ocrmypdf" , "--help")
		  
		  Return s.Result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ocrmypdfVersionData() As string
		  dim s as new Shell
		  s.ExecuteMode = shell.ExecuteModes.Synchronous
		  
		  s.Execute("ocrmypdf" , "--version")
		  
		  Return s.Result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function pdfinfo(fileName as string) As string
		  dim s as new Shell
		  s.ExecuteMode = shell.ExecuteModes.Synchronous
		  
		  //s.Execute("pdfinfo" , """" + filename + """") // doesn't work like this
		  s.Execute("pdfinfo """ + filename + """")
		  
		  
		  Return s.Result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function pdfinfoVersionData() As string
		  dim s as new Shell
		  s.ExecuteMode = shell.ExecuteModes.Synchronous
		  
		  s.Execute("pdfinfo" , "-v")
		  
		  Return s.Result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function pdfinfo_pages(extends pdfinfo_result as string) As integer
		  dim lines() as String = pdfinfo_result.Split(EndOfLine.Native)
		  
		  dim pagecount as Integer = 0
		  
		  for i as Integer = 0 to lines.LastIndex
		    
		    if lines(i).Left(6) = "Pages:" then
		      dim s as String = lines(i).Replace("Pages:" , "").Trim
		      pagecount = s.CDbl
		      exit for i
		    end if
		    
		  next i
		  
		  Return pagecount
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PDFSurvey(Root as FolderItem, byref Result() as FolderItem, Recursive as Boolean, byref KillFlag as Boolean)
		  for each fsobj as FolderItem in root.Children
		    
		    Thread.Current.YieldToNext // make UI more responsive
		    
		    if KillFlag then Return
		    
		    if fsobj.IsFolder and Recursive then
		      
		      PDFSurvey(fsobj , Result , Recursive, KillFlag)
		      
		    else
		      
		      if fsobj.Name.Right(4).Lowercase = ".pdf" then // only pdf files
		        Result.Add fsobj
		      end if
		      
		    end if
		    
		  next 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Quote(extends  byref s as String)
		  if s.Length > 0 then s = chr(34) + s + Chr(34)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Quote(extends s as String) As String
		  if s.Length > 0 then return chr(34) + s + Chr(34)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TesseractListLangs() As string()
		  dim s as new Shell
		  s.ExecuteMode = shell.ExecuteModes.Synchronous
		  
		  s.Execute("tesseract" , "--list-langs")
		  
		  
		  dim result() as String = s.Result.Split(EndOfLine.Native)
		  
		  //result.RemoveAt(0)
		  result.RemoveAt(result.LastIndex)
		  
		  Return result
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TesseractVersionData() As string
		  dim s as new Shell
		  s.ExecuteMode = shell.ExecuteModes.Synchronous
		  
		  s.Execute("tesseract" , "--version")
		  
		  Return s.Result
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Attributions
		
		
		<a href="https://www.flaticon.com/free-icons/ocr" title="ocr icons">Ocr icons created by Freepik - Flaticon</a>
	#tag EndNote

	#tag Note, Name = Dependencies
		Windows Native dependencies
		https://ocrmypdf.readthedocs.io/en/latest/installation.html#native-windows
		
		-Tesseract:
		choco install --pre tesseract
		
		-or download from:
		https://github.com/UB-Mannheim/tesseract/wiki
		
		-Others:
		choco install python3
		choco install ghostscript
		choco install pngquant
		pip install ocrmypdf
		
		
		-For ocrJob use:
		choco install xpdf-utils
		
		-ALL THE ABOVE NEED TO BE IN THE SYSTEM PATH
		
	#tag EndNote

	#tag Note, Name = LICENSE
		MIT LICENSE
		
		Copyright (c) 2023 Georgios Poulopoulos
		
		Permission is hereby granted, free of charge, to any person obtaining a copy
		of this software and associated documentation files (the "Software"), to deal
		in the Software without restriction, including without limitation the rights
		to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
		copies of the Software, and to permit persons to whom the Software is
		furnished to do so, subject to the following conditions:
		
		The above copyright notice and this permission notice shall be included in all
		copies or substantial portions of the Software.
		
		THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
		IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
		FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
		AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
		LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
		OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
		SOFTWARE.
		
	#tag EndNote

	#tag Note, Name = States
		Document Level:
		
		-99                                  Unknown
		-4                                   ocrJob Error
		-3                                   Cancelled
		-2                                   In Progress
		-1                                   Pending
		
		0   ExitCode.ok                      Everything worked as expected.
		1   ExitCode.bad_args                Invalid arguments, exited with an error.
		2   ExitCode.input_file              The input file does not seem to be a valid PDF.
		3   ExitCode.missing_dependency      An external program required by OCRmyPDF is missing.
		4   ExitCode.invalid_output_pdf      An output file was created, but it does not seem to be a valid PDF. The file will be available.
		5   ExitCode.file_access_error       The user running OCRmyPDF does not have sufficient permissions to read the input file and write the output file.
		6   ExitCode.already_done_ocr        The file already appears to contain text so it may not need OCR. See output message.
		7   ExitCode.child_process_error     An error occurred in an external program (child process) and OCRmyPDF cannot continue.
		8   ExitCode.encrypted_pdf           The input PDF is encrypted. OCRmyPDF does not read encrypted PDFs. Use another program such as qpdf to remove encryption.
		9   ExitCode.invalid_config          A custom configuration file was forwarded to Tesseract using --tesseract-config, and Tesseract rejected this file.
		10  ExitCode.pdfa_conversion_failed  A valid PDF was created, PDF/A conversion failed. The file will be available.
		15  ExitCode.other_error             Some other error occurred.
		130 ExitCode.ctrl_c                  The program was interrupted by pressing Ctrl+C.
		
		
		
		
		Job outcomes:
		
		Flawless     <- all 0
		Valid        <- all 0 or 6
		Unreliable   <- at least one 10
		Errors       <- at least one 2,3,4,5,7,8,9,15 or -2
		Cancelled    <- at least one -3 , 130
	#tag EndNote


	#tag Enum, Name = DocumentStates, Type = Integer, Flags = &h1
		Unknown = -99
		  ocrJobError = -4
		  Cancelled = -3
		  InProgress = -2
		  Pending = -1
		  ExitCode_OK = 0
		  ExitCode_BadArgs = 1
		  ExitCode_InputFile = 2
		  ExitCode_MissingDependency = 3
		  ExitCode_InvalidOutputPDF = 4
		  ExitCode_FileAccessError = 5
		  ExitCode_AlreadyDoneOCR = 6
		  ExitCode_ChildProcessError = 7
		  ExitCode_EncryptedPDF = 8
		  ExitCode_InvalidConfigTesseract = 9
		  ExitCode_PDFAConversionFailed = 10
		  ExitCode_OtherError = 15
		ExitCode_CtrlC = 130
	#tag EndEnum

	#tag Enum, Name = JobStates, Type = Integer, Flags = &h1
		Uninitialized
		  Configured
		  Running
		  CancelRequested
		  Done_Flawless
		  Done_Valid
		  Done_Unreliable
		  Done_Errors
		Done_Cancelled
	#tag EndEnum

	#tag Enum, Name = LoggingPolicies, Type = Integer, Flags = &h1
		NoLog
		  LogFileInFolders
		AutosaveProgressAndConsoleToLogFolder
	#tag EndEnum

	#tag Enum, Name = OutputFilenameAppendumPolicies, Type = Integer, Flags = &h1
		Suffix
		Prefix
	#tag EndEnum

	#tag Enum, Name = OutputFilePolicies, Type = Integer, Flags = &h1
		Overwrite
		CreateFile
	#tag EndEnum

	#tag Enum, Name = SidecarFilenamePolicies, Type = Integer, Flags = &h1
		SameAsSource
		SameAsTarget
	#tag EndEnum


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
End Module
#tag EndModule
