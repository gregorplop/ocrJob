#tag Class
Protected Class JobStatistics
	#tag Method, Flags = &h0
		Function JobStampID() As string
		  if IsNull(JobStartTimestamp) then
		    Return "NOSTAMP" + DateTime.Now.SecondsFrom1970.ToString
		    
		  else
		    
		    Return JobStartTimestamp.SQLDateTime.ReplaceAll("-" , "").ReplaceAll(" " , "").ReplaceAll(":" , "")
		    
		  end if
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		DocsFailed As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DocsProcessed As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DocsProcessedWithWarnings As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DocsSkippedOCR As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		DocsTotal As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		FoldersTotal As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		JobEndTimestamp As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		JobStartTimestamp As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		PagesTotal As Integer = 0
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
			Name="DocsTotal"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DocsProcessed"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DocsFailed"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DocsSkippedOCR"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PagesTotal"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FoldersTotal"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DocsProcessedWithWarnings"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
