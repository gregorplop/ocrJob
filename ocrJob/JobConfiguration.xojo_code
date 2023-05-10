#tag Class
Protected Class JobConfiguration
	#tag Property, Flags = &h0
		BaseFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Clean As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomParams As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Deskew As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FastWebView As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		IgnoreIfSubstring As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		IgnoreIfSubstringValue As string
	#tag EndProperty

	#tag Property, Flags = &h0
		language As string
	#tag EndProperty

	#tag Property, Flags = &h0
		LoggingPolicy As ocrJob.LoggingPolicies
	#tag EndProperty

	#tag Property, Flags = &h0
		optimize As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputFilenameAppendumPolicy As ocrJob.OutputFilenameAppendumPolicies
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputFilenameAppendumValue As string
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputFilePolicy As ocrJob.OutputFilePolicies
	#tag EndProperty

	#tag Property, Flags = &h0
		output_type As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ProcessingPolicy As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Recursive As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Rotate As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		RotateThreshold As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sidecar As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		SidecarPolicy As ocrJob.SidecarFilenamePolicies
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
		#tag ViewProperty
			Name="Recursive"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProcessingPolicy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="language"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="output_type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sidecar"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SidecarPolicy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ocrJob.SidecarFilenamePolicies"
			EditorType="Enum"
			#tag EnumValues
				"0 - SameAsSource"
				"1 - SameAsTarget"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputFilePolicy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ocrJob.OutputFilePolicies"
			EditorType="Enum"
			#tag EnumValues
				"0 - Overwrite"
				"1 - CreateFile"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputFilenameAppendumPolicy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ocrJob.OutputFilenameAppendumPolicies"
			EditorType="Enum"
			#tag EnumValues
				"0 - Suffix"
				"1 - Prefix"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="OutputFilenameAppendumValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="optimize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Clean"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FastWebView"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Deskew"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rotate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RotateThreshold"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LoggingPolicy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ocrJob.LoggingPolicies"
			EditorType="Enum"
			#tag EnumValues
				"0 - NoLog"
				"1 - LogFileInFolders"
				"2 - AutosaveProgressAndConsoleToLogFolder"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoreIfSubstring"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoreIfSubstringValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomParams"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
