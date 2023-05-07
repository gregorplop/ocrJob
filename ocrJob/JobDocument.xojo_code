#tag Class
Protected Class JobDocument
	#tag Method, Flags = &h0
		Sub Constructor(initDocFile as FolderItem, initPages as Integer)
		  InputDocFile = new FolderItem(initDocFile)
		  Pages = initPages
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDuration4Display() As string
		  Return Duration4Display(OCREndTimestamp , OCRStartTimestamp)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		CmdLineParams As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			-2                                   OcrJob error
			-1                                   File not processed yet
			
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
		#tag EndNote
		ExitCode As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		InputDocFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		ListIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OCREndTimestamp As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		OCRStartTimestamp As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputDocFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Pages As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TextFile As FolderItem
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ListIndex"
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
		#tag ViewProperty
			Name="CmdLineParams"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExitCode"
			Visible=false
			Group="Behavior"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pages"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
