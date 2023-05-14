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
		State As ocrJob.DocumentStates
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
			Name="State"
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
