#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Sub Opening()
		  try
		    App.CmdLineArgs = BuildCmdLineArgs(System.CommandLine)
		    
		  Catch e as RuntimeException
		    MessageBox e.Message
		    app.CmdLineArgs = new Dictionary
		  end try
		  
		  
		  if App.CmdLineArgs.HasKey("logfolder") then
		    LogFolder = new FolderItem(App.CmdLineArgs.Value("logfolder").StringValue)
		    if IsNull(LogFolder) then
		      MessageBox "Log folder """ + App.CmdLineArgs.Value("logfolder").StringValue + """ is invalid!"
		    else
		      if not LogFolder.Exists then
		        MessageBox "Log folder """ + App.CmdLineArgs.Value("logfolder").StringValue + """ does not exist!"
		        LogFolder = nil
		      end if
		    end if
		  end if
		  
		  WorkflowParams = new Dictionary
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function BuildCmdLineArgs(CmdLineArgs as String) As Dictionary
		  
		  const phaseParameterName as String = "1" // we use it as an enum, doesn't matter the value
		  Const phaseParameterValue as String = "2"
		  
		  const AssignChar as String = "="
		  const space as String = " "
		  const ParamChar as String = "-"
		  const ParamCharsCountIsDelimiter as Integer = 2
		  const QuoteChar as String = """"
		  Const empty as String = ""
		  
		  dim phase as String
		  dim CmdLineLastIndex as Integer = CmdLineArgs.Length - 1
		  dim InsideQuote as Boolean = false
		  dim PrevChar as String 
		  dim CurrChar as String
		  dim NextChar as String
		  dim ConsDelimiterCount as Integer // consecutive param delimiters count
		  
		  dim ParamName as String = empty
		  dim ParamValue as String = empty
		  
		  dim PastExePath as Boolean = false
		  
		  dim args as new Dictionary
		  
		  for i as Integer = 0 to CmdLineLastIndex
		    
		    PrevChar = CurrChar
		    CurrChar = CmdLineArgs.Middle(i , 1)
		    if i < CmdLineLastIndex then NextChar = CmdLineArgs.Middle(i + 1 , 1)
		    
		    if CurrChar = QuoteChar then 
		      if phase = phaseParameterName then
		        raise new RuntimeException("Parse error: unxepected quote!" , 2)
		      else
		        InsideQuote = not InsideQuote
		        Continue for i
		      end if
		    end if
		    
		    if PastExePath = false then
		      if not InsideQuote and CurrChar = space then PastExePath = true
		      Continue for i
		    end if
		    
		    // what follows is raw parameters
		    
		    if not InsideQuote then
		      if CurrChar = ParamChar and PrevChar <> CurrChar then
		        ConsDelimiterCount = 1
		      ElseIf CurrChar = ParamChar and PrevChar = CurrChar then
		        ConsDelimiterCount = ConsDelimiterCount + 1
		      else
		        ConsDelimiterCount = 0
		      end if
		    end if
		    
		    //==============================================
		    
		    if not InsideQuote and ConsDelimiterCount = 2 then
		      select case phase
		      case phaseParameterName
		        args.Value(ParamName.Trim) = ""
		        ParamName = ""
		        ParamValue = ""
		        
		      case phaseParameterValue
		        args.Value(ParamName.Trim) = ParamValue.Trim
		        phase = phaseParameterName
		        ParamName = ""
		        ParamValue = ""
		        
		      else
		        phase = phaseParameterName
		        
		      end select
		      Continue for i
		    end if
		    
		    if not InsideQuote and CurrChar = AssignChar then 
		      phase = phaseParameterValue
		      Continue for i
		    end if
		    
		    if ConsDelimiterCount = 0 then
		      select case phase
		      case phaseParameterName
		        ParamName = ParamName + CurrChar
		      case phaseParameterValue
		        ParamValue = ParamValue + CurrChar
		      end Select
		    end if
		    
		    
		    
		  next i
		  
		  if phase = phaseParameterName then args.Value(ParamName.trim) = ""
		  if phase = phaseParameterValue then args.Value(ParamName.Trim) = ParamValue.Trim
		  
		  Return args
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BuildCmdLineArgs_old(CmdLineArgs as string) As Dictionary
		  // simple way, does not take into account double quotes and the like
		  // todo: more complex method
		  
		  dim args() as String = CmdLineArgs.Split("--")
		  dim argsDict as new Dictionary
		  
		  args.RemoveAt(0) // remove executable path
		  
		  for i as Integer = 0 to args.LastIndex
		    argsDict.Value(args(i).NthField("=" , 1).Lowercase.Trim) = args(i).NthField("=" , 2).Trim
		  next i
		  
		  Return argsDict
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		CmdLineArgs As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		LogFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		WorkflowParams As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
