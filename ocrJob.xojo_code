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
		Function ocrmypdfExitCodeDescription(exitcode as Integer) As string
		  select case exitcode
		    
		  case -3
		    Return "ocrJob Error"
		  case -2
		    return "ocrJob Cancel"
		  case -1
		    return "Pending"
		  case 0
		    return "OK"
		  case 1
		    Return "Invalid args"
		  case 2
		    Return "Invalid PDF"
		  case 3
		    Return "Missing dependency"
		  case 4
		    Return "Invalid PDF output"
		  case 5
		    Return "Permission error"
		  case 6
		    Return "Already OCR'd"
		  case 7
		    Return "Child process error"
		  case 8
		    Return "Encrypted PDF"
		  case 9
		    Return "Invalid Tesseract conf"
		  case 10
		    Return "PDF/A convert error"
		  case 15
		    Return "Other error"
		  case 130
		    Return "Interrupted"
		  else
		    Return "Unknown error"
		  end select
		  
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
		  
		  dim pagecount as Integer = -1
		  
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

	#tag Note, Name = MIT LICENSE
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


	#tag Enum, Name = LoggingPolicies, Type = Integer, Flags = &h0
		NoLog
		LogFileInFolders
	#tag EndEnum

	#tag Enum, Name = OutputFilenameAppendumPolicies, Type = Integer, Flags = &h0
		Suffix
		Prefix
	#tag EndEnum

	#tag Enum, Name = OutputFilePolicies, Type = Integer, Flags = &h0
		Overwrite
		CreateFile
	#tag EndEnum

	#tag Enum, Name = SidecarFilenamePolicies, Type = Integer, Flags = &h0
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
