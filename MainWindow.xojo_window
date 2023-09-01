#tag DesktopWindow
Begin DesktopWindow MainWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   False
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   True
   Height          =   730
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   False
   MinimumHeight   =   730
   MinimumWidth    =   900
   Resizeable      =   True
   Title           =   "ocrJob"
   Type            =   0
   Visible         =   True
   Width           =   1000
   Begin DesktopTabPanel MainTabPanel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   16.0
      FontUnit        =   0
      Height          =   609
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   2
      SmallTabs       =   False
      TabDefinition   =   "Job Parameters\rWorkflow Integration\rJob Progress\rocrmypdf Console\rAbout\rLicense"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   82
      Transparent     =   False
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   960
      Begin DesktopListBox DocList
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   1
         ColumnWidths    =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         GridLineStyle   =   0
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   467
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   167
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   920
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopTextArea ConsoleView
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowStyledText =   True
         AllowTabs       =   False
         BackgroundColor =   &c46464600
         Bold            =   False
         Enabled         =   True
         FontName        =   "Consolas"
         FontSize        =   16.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         Height          =   504
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00FF0000
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         UnicodeMode     =   1
         ValidationMask  =   ""
         Visible         =   True
         Width           =   920
      End
      Begin DesktopLabel AboutHeaderLabel
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   27.0
         FontUnit        =   0
         Height          =   40
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "ocrJob - Batch OCR jobs with ocrmypdf / Tesseract"
         TextAlignment   =   2
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   120
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   920
      End
      Begin DesktopLabel InputLabel
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Input"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   134
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
      Begin DesktopTextField BaseFolderField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   25
         Hint            =   "Base folder path"
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   134
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   350
      End
      Begin DesktopLabel OutputLabel
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Output"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   326
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
      Begin DesktopLabel LanguagesLabel
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Languages"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   208
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
      Begin DesktopLabel EnhancementsLabel
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Enhancements"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   400
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
      Begin DesktopButton BaseFolderSelectBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Select"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   547
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   134
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   51
      End
      Begin DesktopCheckBox RecursiveSurveyCheck
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Recursive file survey"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   610
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   134
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   1
         Width           =   157
      End
      Begin DesktopButton SurveyStartCancelBtn
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "Survey now!"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   779
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   134
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   157
      End
      Begin DesktopListBox LangsList
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   True
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "10%,80%"
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         GridLineStyle   =   0
         HasBorder       =   False
         HasHeader       =   False
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   106
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   208
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   306
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopPopupMenu ProcessingPolicyMenu
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   171
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   306
      End
      Begin DesktopTextArea AboutText
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowStyledText =   True
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   False
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         Height          =   499
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   172
         Transparent     =   False
         Underline       =   False
         UnicodeMode     =   1
         ValidationMask  =   ""
         Visible         =   True
         Width           =   920
      End
      Begin DesktopLabel LoggingLabel
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Logging"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   511
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
      Begin DesktopLabel LangsComments
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   126
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   510
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Higher position is higher priority!\r\nDrag row to reorder."
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   208
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   450
      End
      Begin DesktopPopupMenu OCRFilePolicyList
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   13
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   363
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   306
      End
      Begin DesktopPopupMenu OCRFileAppendumPolicyList
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   510
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   14
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   363
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   117
      End
      Begin DesktopTextField OCRFileAppendumValue
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   25
         Hint            =   "suffix/prefix value"
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   639
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   15
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   363
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   177
      End
      Begin DesktopPopupMenu OutputFormatList
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   16
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   326
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   306
      End
      Begin DesktopCheckBox SidecarCheck
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Text file output"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   510
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   17
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   326
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   117
      End
      Begin DesktopPopupMenu SidecarNamePolicyList
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   639
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   18
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   326
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   177
      End
      Begin DesktopLabel IgnoreListLabel
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   19
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Igrnore"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   562
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
      Begin DesktopCheckBox IgnoreIfFilenameContainsCheck
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "If filename contains :"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   20
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   562
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   147
      End
      Begin DesktopTextField IgnoreIfFilenameContainsValue
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   25
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   351
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   21
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   562
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   147
      End
      Begin DesktopLabel CustomParamsLabel
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Custom Params"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   646
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
      Begin DesktopTextField CustomParamsValue
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   25
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   192
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   23
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   646
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   708
      End
      Begin DesktopPopupMenu OptimizationMenu
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   24
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   400
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   306
      End
      Begin DesktopCheckBox FastWebViewCheck
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Fast Web View (linearization)"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   510
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   25
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   400
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   1
         Width           =   306
      End
      Begin DesktopCheckBox DeskewCheck
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Deskew"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   510
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   26
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   437
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   177
      End
      Begin DesktopPopupMenu CleanMenu
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   27
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   437
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   306
      End
      Begin DesktopCheckBox RotateCheck
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Page Rotate, confidence threshold:"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   29
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   474
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   240
      End
      Begin DesktopTextField RotateThresholdValue
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   25
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   437
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   30
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "2"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   "Higher is more aggressive."
         Top             =   474
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   45
      End
      Begin DesktopUpDownArrows RotateThresholdUpDown
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowTabStop    =   True
         Enabled         =   False
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   485
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         PanelIndex      =   0
         Scope           =   2
         TabIndex        =   31
         TabPanelIndex   =   1
         Tooltip         =   "Higher is more aggressive."
         Top             =   474
         Transparent     =   False
         Visible         =   True
         Width           =   13
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
      Begin DesktopTextArea LicenseText
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowStyledText =   True
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   False
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         Height          =   499
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Copyright (c) 2023 Georgios Poulopoulos\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy\r\nof this software and associated documentation files (the ""Software""), to deal\r\nin the Software without restriction, including without limitation the rights\r\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\r\ncopies of the Software, and to permit persons to whom the Software is\r\nfurnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all\r\ncopies or substantial portions of the Software.\r\n\r\nTHE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\r\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\r\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\r\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\r\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\r\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\r\nSOFTWARE."
         TextAlignment   =   1
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   172
         Transparent     =   False
         Underline       =   False
         UnicodeMode     =   1
         ValidationMask  =   ""
         Visible         =   True
         Width           =   920
      End
      Begin DesktopLabel LicenseHeader
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   27.0
         FontUnit        =   0
         Height          =   40
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "MIT LICENSE"
         TextAlignment   =   1
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   120
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   920
      End
      Begin DesktopButton ClearSurveyBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Clear Survey"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopButton StartJobBtn
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "Start Job!"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   152
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopButton CancelJobBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Cancel Job"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   264
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   "Cancelling the job automatically deletes any newly created files. If you opted for overwriting original files, they are not reverted to their initial contents."
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopButton ExportDocListBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Export CSV"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   840
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   646
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin DesktopButton CustomParamsHelpBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Help"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   912
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   32
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   646
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   48
      End
      Begin DesktopPopupMenu LoggingPolicyMenu
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   192
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   33
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   511
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   306
      End
      Begin DesktopProgressWheel SurveyProgressWheel
         Active          =   False
         AllowAutoDeactivate=   True
         AllowTabStop    =   True
         Enabled         =   True
         Height          =   16
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   948
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         PanelIndex      =   0
         Scope           =   2
         TabIndex        =   34
         TabPanelIndex   =   1
         Tooltip         =   ""
         Top             =   139
         Transparent     =   False
         Visible         =   False
         Width           =   16
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
      Begin DesktopProgressBar MainProgressBar
         Active          =   False
         AllowAutoDeactivate=   True
         AllowTabStop    =   True
         Enabled         =   True
         Height          =   25
         Indeterminate   =   False
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   376
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumValue    =   100
         PanelIndex      =   0
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   3
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Value           =   0.0
         Visible         =   False
         Width           =   584
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
      Begin DesktopCheckBox AutoStartOCRCheck
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Start OCR after Survey"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   779
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   35
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   171
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   157
      End
      Begin DesktopButton BuildBatchFileCmd
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Build Batch File"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   708
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   646
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin DesktopButton SaveConsoleBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Save Console"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   840
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         Tooltip         =   ""
         Top             =   646
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin DesktopCheckBox LaunchAppOnJobCompleteCheck
         AllowAutoDeactivate=   True
         Bold            =   True
         Caption         =   "Launch application on Job complete"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   134
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   278
      End
      Begin DesktopTextField NextAppField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   25
         Hint            =   "Application executable path"
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   330
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   134
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   490
      End
      Begin DesktopButton NextAppSelectBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Select Executable"
         Default         =   False
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   832
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   134
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   128
      End
      Begin DesktopTextField NextAppArgsField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   25
         Hint            =   "Application Parameters - Right click to add job variables"
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   330
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   171
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   490
      End
      Begin DesktopLabel NextAppArgsLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   832
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "App Arguments"
         TextAlignment   =   1
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   171
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   128
      End
      Begin DesktopCheckBox ThisAppCloseOnLaunchCheck
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Close ocrJob after successful launch"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   330
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   208
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   490
      End
      Begin DesktopLabel UnderConstructionLabel
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   44.0
         FontUnit        =   0
         Height          =   90
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "UNDER CONSTRUCTION"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   401
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   920
      End
      Begin DesktopTextField LogFolderField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   25
         Hint            =   "Log folder path"
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   510
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   36
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   511
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   390
      End
      Begin DesktopButton LogFolderSelectBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Select"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   909
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   37
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   511
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   51
      End
   End
   Begin DesktopRectangle HeaderRect
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &c0080C000
      Height          =   70
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Visible         =   True
      Width           =   1000
      Begin DesktopLabel HeaderLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   32.0
         FontUnit        =   0
         Height          =   53
         Index           =   -2147483648
         InitialParent   =   "HeaderRect"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "ocrJob - an ocrmypdf batch job designer"
         TextAlignment   =   0
         TextColor       =   &cFFFFFF00
         Tooltip         =   ""
         Top             =   8
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   878
      End
      Begin DesktopButton QuitBtn
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Quit"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "HeaderRect"
         Italic          =   False
         Left            =   910
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   70
      End
   End
   Begin DesktopRectangle FooterRect
      AllowAutoDeactivate=   True
      BorderColor     =   &c0080C000
      BorderThickness =   0.0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &c0080C000
      Height          =   27
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   703
      Transparent     =   False
      Visible         =   True
      Width           =   1000
      Begin DesktopLabel FooterLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   14.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "FooterRect"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "ocrJob - an ocrmypdf coordinator for batch document processing"
         TextAlignment   =   0
         TextColor       =   &cFFFFFF00
         Tooltip         =   ""
         Top             =   705
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   960
      End
   End
   Begin Shell WorkShell
      Arguments       =   ""
      Backend         =   ""
      Canonical       =   False
      ExecuteMode     =   1
      ExitCode        =   0
      Index           =   -2147483648
      IsRunning       =   False
      LockedInPosition=   False
      PID             =   0
      Result          =   ""
      Scope           =   2
      TabPanelIndex   =   0
      TimeOut         =   0
   End
   Begin Thread SurveyThread
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      TabPanelIndex   =   0
   End
   Begin Timer SurveyTimer
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   250
      RunMode         =   0
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  SetMode(AppStates.Setup , "" , 4)
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub BuildDocList()
		  dim ListRow(7) as String
		  
		  for i as Integer = 0 to ActiveJob.Folders.LastIndex
		    
		    for j as Integer = 0 to ActiveJob.Folders(i).Documents.LastIndex
		      
		      ListRow(0) = integer(DocList.RowCount + 1).ToString
		      ListRow(1) = ActiveJob.Folders(i).Documents(j).InputDocFile.Name
		      ListRow(2) = ActiveJob.Folders(i).Documents(j).Pages.ToString
		      ListRow(3) = ocrJob.DocState2Description(ActiveJob.Folders(i).Documents(j).State)
		      ListRow(4) = ActiveJob.Folders(i).Documents(j).GetDuration4Display
		      ListRow(5) = ActiveJob.Folders(i).JobFolderitem.NativePath
		      ListRow(6) = if(isnull(ActiveJob.Folders(i).Documents(j).OutputDocFile) , "" , ActiveJob.Folders(i).Documents(j).OutputDocFile.Name) 
		      ListRow(7) = if(isnull(ActiveJob.Folders(i).Documents(j).TextFile) , "" , ActiveJob.Folders(i).Documents(j).TextFile.Name) 
		      
		      
		      DocList.AddRow ListRow
		      
		      DocList.CellTagAt(DocList.LastRowIndex , 1) = ActiveJob.Folders(i).Documents(j).InputDocFile
		      DocList.CellTagAt(DocList.LastRowIndex , 3) = ActiveJob.Folders(i).Documents(j).State
		      DocList.CellTagAt(DocList.LastRowIndex , 5) = ActiveJob.Folders(i).JobFolderitem
		      DocList.CellTagAt(DocList.LastRowIndex , 6) = ActiveJob.Folders(i).Documents(j).OutputDocFile
		      DocList.CellTagAt(DocList.LastRowIndex , 7) = ActiveJob.Folders(i).Documents(j).TextFile
		      
		    next j
		    
		  next i
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateConf(byref ErrorMsg as String) As ocrJob.JobConfiguration
		  ErrorMsg = ""
		  
		  dim conf as new ocrJob.JobConfiguration
		  
		  conf.BaseFolder = new FolderItem(BaseFolderField.Text.Trim)
		  if BaseFolderField.Text.Trim.IsEmpty then
		    ErrorMsg = "You need to select a Base folder"
		    Return nil
		  end if
		  if IsNull(conf.BaseFolder) then 
		    ErrorMsg = "Base folder path is invalid"
		    Return nil
		  end if
		  if not conf.BaseFolder.Exists then
		    ErrorMsg = "Base folder does not exist"
		    Return nil
		  end if
		  if not conf.BaseFolder.IsFolder then
		    ErrorMsg = "Base folder is actually a file"
		    Return nil
		  end if
		  if not conf.BaseFolder.IsReadable or not conf.BaseFolder.IsWriteable then
		    ErrorMsg = "Base folder is not accessible for read/write"
		    Return nil
		  end if
		  
		  conf.Recursive = RecursiveSurveyCheck.Value
		  
		  conf.ProcessingPolicy = ProcessingPolicyMenu.RowTagAt(ProcessingPolicyMenu.SelectedRowIndex).StringValue
		  
		  dim langs() as String
		  for i as Integer = 0 to LangsList.LastRowIndex
		    if LangsList.CellCheckBoxValueAt(i , 0) = true then langs.Add LangsList.CellTextAt(i , 1)
		  next 
		  if langs.LastIndex < 0 then 
		    ErrorMsg = "No languages selected"
		    Return nil
		  end if
		  conf.language = String.FromArray(langs , "+")
		  
		  conf.output_type = OutputFormatList.RowTagAt(OutputFormatList.SelectedRowIndex).StringValue
		  
		  conf.OutputFilePolicy = OCRFilePolicyList.RowTagAt(OCRFilePolicyList.SelectedRowIndex)
		  conf.OutputFilenameAppendumPolicy = OCRFileAppendumPolicyList.RowTagAt(OCRFileAppendumPolicyList.SelectedRowIndex)
		  conf.OutputFilenameAppendumValue = OCRFileAppendumValue.Text.Trim
		  if conf.OutputFilePolicy = ocrJob.OutputFilePolicies.CreateFile then
		    if conf.OutputFilenameAppendumValue.IsEmpty then
		      ErrorMsg = "No appendum value set for new OCR'd files"
		      Return nil
		    end if
		  end if
		  
		  conf.sidecar = SidecarCheck.Value
		  conf.SidecarPolicy = SidecarNamePolicyList.RowTagAt(SidecarNamePolicyList.SelectedRowIndex)
		  
		  conf.optimize = OptimizationMenu.RowTagAt(OptimizationMenu.SelectedRowIndex).IntegerValue
		  
		  conf.Clean = CleanMenu.RowTagAt(CleanMenu.SelectedRowIndex)
		  
		  conf.FastWebView = FastWebViewCheck.Value
		  
		  conf.Deskew = DeskewCheck.Value
		  
		  conf.Rotate = RotateCheck.Value
		  
		  conf.RotateThreshold = RotateThresholdValue.Text.ToInteger
		  
		  conf.LoggingPolicy = LoggingPolicyMenu.RowTagAt(LoggingPolicyMenu.SelectedRowIndex)
		  
		  if CustomParamsValue.Text.Trim <> "" then conf.CustomParams = CustomParamsValue.Text.Trim
		  
		  if conf.LoggingPolicy = ocrJob.LoggingPolicies.AutosaveProgressAndConsoleToLogFolder then
		    if IsNull(app.LogFolder) then
		      ErrorMsg = "Invalid log folder"
		      Return nil
		    end if
		    if not app.LogFolder.Exists then
		      ErrorMsg = "Log folder does not exist"
		      Return nil
		    end if
		  end if
		  
		  
		  conf.IgnoreIfSubstring = IgnoreIfFilenameContainsCheck.Value
		  conf.IgnoreIfSubstringValue = IgnoreIfFilenameContainsValue.Text
		  if conf.IgnoreIfSubstring and conf.IgnoreIfSubstringValue.IsEmpty then
		    ErrorMsg = "Set file ignore parameter without setting substring value"
		    Return nil
		  end if
		  
		  
		  
		  Return conf
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DocListUpdate(doc as ocrJob.JobDocument)
		  DocList.CellTextAt(doc.ListIndex , 3) = ocrJob.DocState2Description(doc.State)
		  DocList.CellTagAt(doc.ListIndex , 3) = doc.State
		  
		  DocList.CellTextAt(doc.ListIndex , 4) = doc.GetDuration4Display
		  
		  
		  
		  //System.DebugLog(doc.ListIndex.ToString + " : " + doc.GetDuration4Display)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DocListUpdateCancelled(CancelAtIndex as Integer)
		  dim coords as pair
		  dim doc as ocrJob.JobDocument
		  
		  for i as Integer = CancelAtIndex to DocList.LastRowIndex
		    
		    coords = ActiveJob.GetCursorsAtListIndex(i)
		    doc = ActiveJob.Folders(coords.Left.IntegerValue).Documents(coords.Right.IntegerValue)
		    
		    DocListUpdate(doc)
		    
		  next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableParamsUI(value as Boolean)
		  BaseFolderField.Enabled = value
		  BaseFolderSelectBtn.Enabled = value
		  CleanMenu.Enabled = value
		  CustomParamsValue.Enabled = value
		  CustomParamsLabel.Enabled = value
		  DeskewCheck.Enabled = value
		  EnhancementsLabel.Enabled = value
		  FastWebViewCheck.Enabled = value
		  
		  IgnoreIfFilenameContainsCheck.Enabled = value
		  IgnoreIfFilenameContainsValue.Enabled = value and IgnoreIfFilenameContainsCheck.Value
		  IgnoreListLabel.Enabled = value
		  
		  InputLabel.Enabled = value
		  LangsComments.Enabled = value
		  LangsList.Enabled = value
		  LanguagesLabel.Enabled = value
		  LoggingLabel.Enabled = value
		  LoggingPolicyMenu.Enabled = value
		  
		  OCRFilePolicyList.Enabled = value
		  
		  if OCRFilePolicyList.RowTagAt(OCRFilePolicyList.SelectedRowIndex) = ocrJob.OutputFilePolicies.CreateFile then
		    OCRFileAppendumPolicyList.Enabled = value
		    OCRFileAppendumValue.Enabled = value
		  elseif OCRFilePolicyList.RowTagAt(OCRFilePolicyList.SelectedRowIndex) = ocrJob.OutputFilePolicies.Overwrite then
		    OCRFileAppendumPolicyList.Enabled = False
		    OCRFileAppendumValue.Enabled = False
		  end if
		  
		  OptimizationMenu.Enabled = value
		  OutputFormatList.Enabled = value
		  OutputLabel.Enabled = value
		  ProcessingPolicyMenu.Enabled = value
		  RecursiveSurveyCheck.Enabled = value
		  
		  RotateCheck.Enabled = value
		  RotateThresholdUpDown.Enabled = value and RotateCheck.Value
		  RotateThresholdValue.Enabled = value and RotateCheck.Value
		  
		  SidecarCheck.Enabled = value
		  SidecarNamePolicyList.Enabled = SidecarCheck.Value and value
		  
		  if OutputFormatList.RowTagAt(OutputFormatList.SelectedRowIndex) = "none" then // no matter what
		    OCRFilePolicyList.Enabled = False
		    OCRFileAppendumPolicyList.Enabled = False
		    OCRFileAppendumValue.Enabled = False
		    SidecarNamePolicyList.Enabled = false
		  end if
		  
		  AutoStartOCRCheck.Enabled = value
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExportDocList(file as FolderItem, byref ErrorMsg as String) As Boolean
		  ErrorMsg = ""
		  
		  if IsNull(file) then
		    ErrorMsg = "Invalid CSV file path"
		    Return false
		  end if
		  
		  if file.Exists then
		    ErrorMsg = "CSV file exists"
		    Return false
		  end if
		  
		  dim tab as String = chr(9)
		  dim row() as String
		  Redim row(DocList.LastColumnIndex)
		  
		  try
		    dim stream as TextOutputStream = TextOutputStream.Create(file)
		    
		    for i as Integer = 0 to row.LastIndex
		      row(i) = DocList.HeaderAt(i)
		    next i
		    stream.WriteLine String.FromArray(row , tab)
		    
		    for i as Integer = 0 to DocList.LastRowIndex
		      for j as Integer = 0 to row.LastIndex
		        row(j) = DocList.CellTextAt(i,j)
		      next j
		      stream.WriteLine String.FromArray(row , tab)
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
		Sub GoToConsoleDoc(ListIndex as Integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HideProgressBar()
		  // for delayed progress bar hide
		  MainProgressBar.Visible = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OCRNextDocument(byref jobDoc as ocrJob.JobDocument) As Boolean
		  // returns end-of-job (EOJ)
		  MainProgressBar.Value = MainProgressBar.Value + 1
		  
		  jobDoc = ActiveJob.GetNextDocument
		  
		  if IsNull(jobDoc) then Return true
		  
		  DocList.SelectedRowIndex = jobDoc.ListIndex
		  DocListUpdate(jobDoc)
		  
		  ConsoleView.AddText "Document #" + integer(jobDoc.ListIndex + 1).ToString + " start at " + jobDoc.OCRStartTimestamp.SQLDateTime + EndOfLine
		  ConsoleView.AddText "Input file : " + jobDoc.InputDocFile.NativePath + EndOfLine
		  ConsoleView.AddText if(IsNull(jobDoc.OutputDocFile) , "No output pdf" , "Output file : " + jobDoc.OutputDocFile.NativePath) + EndOfLine
		  ConsoleView.AddText if(IsNull(jobDoc.TextFile) , "No text file output" , "Text file : " + jobDoc.TextFile.NativePath) + EndOfLine
		  ConsoleView.AddText EndOfLine
		  ConsoleView.AddText "> ocrmypdf " + jobDoc.CmdLineParams + EndOfLine
		  ConsoleView.AddText EndOfLine
		  
		  
		  WorkShell.Execute("ocrmypdf " + jobDoc.CmdLineParams)
		  
		  Return false
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OCRStart()
		  dim dependencyErrors() as String
		  dim ocrmypdfExists as Boolean = isInstalledOcrmypdf(ocrmypdfVersionData)
		  dim tesseractExists as Boolean = isInstalledTesseract(TesseractVersionData)
		  
		  if not ocrmypdfExists then dependencyErrors.Add "ocrmypdf not found"
		  if not tesseractExists then dependencyErrors.Add "tesseract not found"
		  
		  if dependencyErrors.LastIndex >= 0 then
		    SetMode(AppStates.OCRFatalError)
		    MessageBox String.FromArray(dependencyErrors , EndOfLine)
		    Return
		  end  
		  
		  // dependencies appear OK
		  
		  WorkShell.TimeOut = ocrJob.ShellTimeout
		  WorkShell.ExecuteMode = shell.ExecuteModes.Asynchronous // init workshell
		  
		  ActiveJob.Start // just resets timestamps, counters, state, etc
		  
		  ConsoleView.Text = ""
		  ConsoleView.AddText "=================================================" + EndOfLine
		  ConsoleView.AddText "New OCR job started on " + ActiveJob.Stats.JobStartTimestamp.SQLDateTime + EndOfLine
		  ConsoleView.AddText "Base folder = " + ActiveJob.Conf.BaseFolder.NativePath + EndOfLine
		  ConsoleView.AddText ActiveJob.Stats.JobStampID + " : " + FooterLabel.Text.NthField(":" , 2) + EndOfLine
		  ConsoleView.AddText "=================================================" + EndOfLine
		  ConsoleView.AddText EndOfLine
		  
		  
		  dim EOJ as Boolean = OCRNextDocument(CurrentDoc) // start the async processing
		  
		  if EOJ then
		    SetMode(AppStates.OCRFatalError) // this shouldn't happen: getting it at this point means an empty job!
		  else
		    SetMode(AppStates.OCRInProgress)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SaveConsoleOutput(file as FolderItem, byref ErrorMsg as string) As Boolean
		  ErrorMsg = ""
		  
		  if IsNull(file) then
		    ErrorMsg = "Invalid text file path"
		    Return false
		  end if
		  
		  if file.Exists then
		    ErrorMsg = "Text file exists"
		    Return false
		  end if
		  
		  
		  try
		    dim stream as TextOutputStream = TextOutputStream.Create(file)
		    
		    stream.Write(ConsoleView.Text)
		    
		    stream.Close
		    
		  Catch e as IOException
		    ErrorMsg = "Error creating console contents file: " + e.ErrorNumber.ToString
		    Return false
		  end try
		  
		  Return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetColorTheme(ColorTheme as Color)
		  HeaderRect.FillColor = ColorTheme
		  FooterRect.FillColor = ColorTheme
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMode(targetAppState as AppStates, optional FooterMsg as string, optional PanelIndex as integer = -1)
		  if targetAppState = AppState then Return // do not run if target is the same as current
		  
		  select case targetAppState
		    
		  case AppStates.Setup
		    
		    ActiveJob = nil
		    
		    me.Title = "ocrJob - Setup"
		    SetColorTheme(ColorSETUP)
		    
		    EnableParamsUI(True)
		    
		    FooterLabel.Text = FooterDefaultMsg
		    SurveyProgressWheel.Visible = False
		    
		    DocList.RemoveAllRows
		    ConsoleView.Text = "Shell timeout = " + str(ocrJob.ShellTimeout) + " msec" + EndOfLine + EndOfLine
		    
		    QuitBtn.Enabled = True
		    SurveyStartCancelBtn.Enabled = True
		    SurveyStartCancelBtn.Caption = "Survey Now!"
		    
		    CancelJobBtn.Enabled = False
		    StartJobBtn.Enabled = False
		    ClearSurveyBtn.Enabled = False
		    ExportDocListBtn.Enabled = false
		    BuildBatchFileCmd.Enabled = ExportDocListBtn.Enabled
		    
		    MainProgressBar.Visible = false
		    
		    LogFolderField.Text = if(IsNull(app.LogFolder) , "" , app.LogFolder.NativePath)
		    
		    SaveConsoleBtn.Enabled = False
		    
		    WorkflowPanelEnabled(true)
		    
		  case AppStates.SurveyInProgress
		    
		    me.Title = "ocrJob - Survey"
		    SetColorTheme(ColorWORKING)
		    
		    EnableParamsUI(False)
		    
		    FooterLabel.Text = "Survey in progress..."
		    SurveyProgressWheel.Visible = true
		    
		    QuitBtn.Enabled = false
		    SurveyStartCancelBtn.Enabled = True
		    SurveyStartCancelBtn.Caption = "Cancel Survey"
		    
		    CancelJobBtn.Enabled = False
		    StartJobBtn.Enabled = False
		    ClearSurveyBtn.Enabled = False
		    ExportDocListBtn.Enabled = false
		    BuildBatchFileCmd.Enabled = ExportDocListBtn.Enabled
		    
		    KillSurveyFlag = false
		    
		    LogFolderField.Enabled = False
		    LogFolderSelectBtn.Enabled = false
		    
		    MainProgressBar.Visible = true
		    MainProgressBar.Indeterminate = true
		    
		    SaveConsoleBtn.Enabled = False
		    
		    WorkflowPanelEnabled(false)
		    
		  case AppStates.SurveyError
		    
		    me.Title = "ocrJob - Survey Error"
		    SetColorTheme(ColorERROR)
		    
		    EnableParamsUI(True)
		    
		    FooterLabel.Text = "Survey error!"
		    SurveyProgressWheel.Visible = False
		    
		    QuitBtn.Enabled = True
		    SurveyStartCancelBtn.Enabled = True
		    SurveyStartCancelBtn.Caption = "Survey Now!"
		    
		    CancelJobBtn.Enabled = False
		    StartJobBtn.Enabled = False
		    ClearSurveyBtn.Enabled = False
		    ExportDocListBtn.Enabled = false
		    BuildBatchFileCmd.Enabled = ExportDocListBtn.Enabled
		    
		    MainProgressBar.Visible = False
		    
		    SaveConsoleBtn.Enabled = False
		    
		    WorkflowPanelEnabled(true)
		    
		  case AppStates.SurveyNoDocs
		    
		    me.Title = "ocrJob - No Docs"
		    SetColorTheme(ColorDONEWARNINGS)
		    
		    EnableParamsUI(True)
		    
		    FooterLabel.Text = "Survey found no docs!"
		    SurveyProgressWheel.Visible = False
		    
		    QuitBtn.Enabled = True
		    SurveyStartCancelBtn.Enabled = True
		    SurveyStartCancelBtn.Caption = "Survey Now!"
		    
		    CancelJobBtn.Enabled = False
		    StartJobBtn.Enabled = False
		    ClearSurveyBtn.Enabled = False
		    ExportDocListBtn.Enabled = false
		    BuildBatchFileCmd.Enabled = ExportDocListBtn.Enabled
		    
		    MainProgressBar.Visible = False
		    
		    SaveConsoleBtn.Enabled = False
		    
		    WorkflowPanelEnabled(true)
		    
		  case AppStates.SurveyOK
		    
		    me.Title = "ocrJob - Survey Done"
		    SetColorTheme(ColorDONEOK)
		    
		    EnableParamsUI(False)
		    
		    FooterLabel.Text = "Survey done"
		    SurveyProgressWheel.Visible = False
		    
		    QuitBtn.Enabled = True
		    SurveyStartCancelBtn.Enabled = False
		    SurveyStartCancelBtn.Caption = "Survey Now!"
		    
		    CancelJobBtn.Enabled = False
		    StartJobBtn.Enabled = true
		    ClearSurveyBtn.Enabled = true
		    ExportDocListBtn.Enabled = true
		    BuildBatchFileCmd.Enabled = ExportDocListBtn.Enabled
		    
		    MainProgressBar.Visible = False
		    SaveConsoleBtn.Enabled = False
		    
		    WorkflowPanelEnabled(False)
		    
		  case AppStates.OCRInProgress
		    
		    me.Title = "ocrJob - OCR"
		    SetColorTheme(ColorWORKING)
		    
		    EnableParamsUI(False)
		    
		    FooterLabel.Text = "OCR in progress..."
		    SurveyProgressWheel.Visible = False
		    
		    QuitBtn.Enabled = false
		    SurveyStartCancelBtn.Enabled = False
		    SurveyStartCancelBtn.Caption = "Survey Now!"
		    
		    CancelJobBtn.Enabled = true
		    StartJobBtn.Enabled = false
		    ClearSurveyBtn.Enabled = False
		    ExportDocListBtn.Enabled = False
		    BuildBatchFileCmd.Enabled = ExportDocListBtn.Enabled
		    
		    MainProgressBar.Visible = true
		    MainProgressBar.Indeterminate = false
		    MainProgressBar.MaximumValue = DocList.RowCount
		    MainProgressBar.Value = 0
		    
		    SaveConsoleBtn.Enabled = False
		    
		    WorkflowPanelEnabled(False)
		    
		  case AppStates.OCRFatalError
		    
		    me.Title = "ocrJob - OCR Error"
		    SetColorTheme(ColorERROR)
		    
		    EnableParamsUI(False)
		    
		    FooterLabel.Text = "OCR Fatal error!"
		    SurveyProgressWheel.Visible = False
		    
		    QuitBtn.Enabled = True
		    SurveyStartCancelBtn.Enabled = False
		    SurveyStartCancelBtn.Caption = "Survey Now!"
		    
		    CancelJobBtn.Enabled = False
		    CancelJobBtn.Caption = "Cancel Job"
		    
		    StartJobBtn.Enabled = false
		    ClearSurveyBtn.Enabled = true
		    ExportDocListBtn.Enabled = true
		    BuildBatchFileCmd.Enabled = ExportDocListBtn.Enabled
		    
		    MainProgressBar.Visible = False
		    
		    SaveConsoleBtn.Enabled = true
		    
		    WorkflowPanelEnabled(true)
		    
		  case appstates.OCRWarnings
		    
		    me.Title = "ocrJob - OCR Warnings"
		    SetColorTheme(ColorDONEWARNINGS)
		    
		    EnableParamsUI(False)
		    
		    FooterLabel.Text = "OCR with Warnings"
		    SurveyProgressWheel.Visible = False
		    
		    QuitBtn.Enabled = True
		    SurveyStartCancelBtn.Enabled = False
		    SurveyStartCancelBtn.Caption = "Survey Now!"
		    
		    CancelJobBtn.Enabled = False
		    CancelJobBtn.Caption = "Cancel Job"
		    
		    StartJobBtn.Enabled = false
		    ClearSurveyBtn.Enabled = true
		    ExportDocListBtn.Enabled = true
		    BuildBatchFileCmd.Enabled = ExportDocListBtn.Enabled
		    
		    MainProgressBar.Visible = False
		    
		    SaveConsoleBtn.Enabled = true
		    
		    WorkflowPanelEnabled(true)
		    
		  case AppStates.OCROK
		    
		    me.Title = "ocrJob - OCR Done"
		    SetColorTheme(ColorDONEOK)
		    
		    EnableParamsUI(False)
		    
		    FooterLabel.Text = "OCR Complete!"
		    SurveyProgressWheel.Visible = False
		    
		    QuitBtn.Enabled = True
		    SurveyStartCancelBtn.Enabled = False
		    SurveyStartCancelBtn.Caption = "Survey Now!"
		    
		    CancelJobBtn.Enabled = False
		    StartJobBtn.Enabled = false
		    ClearSurveyBtn.Enabled = true
		    ExportDocListBtn.Enabled = true
		    BuildBatchFileCmd.Enabled = ExportDocListBtn.Enabled
		    
		    SaveConsoleBtn.Enabled = true
		    
		    WorkflowPanelEnabled(true)
		    
		    Timer.CallLater(500 , AddressOf HideProgressBar)
		    
		    
		  case AppStates.NoChange
		    // this is used to update footer message, panel index and the like
		    
		  end Select
		  
		  if not FooterMsg.IsEmpty then FooterLabel.Text = FooterMsg
		  if PanelIndex > -1 then MainTabPanel.SelectedPanelIndex = PanelIndex
		  
		  if targetAppState <> AppStates.NoChange then AppState = targetAppState
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetModeBasedOnJobState(JobState as ocrJob.JobStates, optional FooterMsg as string, optional PanelIndex as integer = -1)
		  // meant to be used when the job has finished somehow
		  
		  select case JobState
		    
		  case ocrJob.JobStates.Done_Flawless
		    
		    SetMode(AppStates.OCROK , FooterMsg , PanelIndex)
		    
		  case ocrJob.JobStates.Done_AlreadyOCR
		    
		    SetMode(AppStates.OCRWarnings , FooterMsg , PanelIndex)
		    
		  case ocrJob.JobStates.Done_Unreliable
		    
		    SetMode(AppStates.OCRWarnings , FooterMsg , PanelIndex)
		    
		  case ocrJob.JobStates.Done_Errors
		    
		    SetMode(AppStates.OCRFatalError , FooterMsg , PanelIndex)
		    
		  case ocrJob.JobStates.Done_Cancelled
		    
		    SetMode(AppStates.OCRFatalError , FooterMsg , PanelIndex)
		    
		  else // this shouldn't happen
		    
		    MessageBox "Cannot set app state for an unfinished job state!"
		    SetMode(AppStates.OCRFatalError , "internal error!") 
		    
		  end select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SurveyCancel()
		  KillSurveyFlag = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SurveyCompleteOK()
		  
		  if ActiveJob.Stats.DocsTotal = 0 then
		    
		    SetMode(AppStates.SurveyNoDocs , "Survey OK : No documents found!" , 0)
		    
		    
		  else
		    
		    SetMode(AppStates.SurveyOK , "Survey OK : " + ActiveJob.Stats.DocsTotal.ToString + " Documents in " + ActiveJob.Stats.FoldersTotal.ToString + " Subfolders. Total page count is " + ActiveJob.Stats.PagesTotal.ToString , 2)
		    BuildDocList
		    
		    if AutoStartOCRCheck.Value = true then
		      timer.CallLater(500 , AddressOf OCRStart)
		    end if
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SurveyKilled()
		  
		  SetMode(AppStates.SurveyError , "Survey cancelled by user!" , 0)
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SurveyStart()
		  dim ErrorMsg as String
		  
		  ActiveJob = new ocrJob.Job(CreateConf(ErrorMsg))
		  
		  if ActiveJob.GetJobState = ocrJob.JobStates.Uninitialized then 
		    SetMode(AppStates.SurveyError)
		    FooterLabel.Text = ErrorMsg
		    SurveyStartCancelBtn.Enabled = False  // prevent user from starting a new survey while in error mode, shouldn't last for long
		    MessageBox ErrorMsg
		    timer.CallLater(2000 , AddressOf UIModeToSetup)
		    Return
		  end if
		  
		  
		  // at this point the job settings appear valid
		  
		  SetMode(AppStates.SurveyInProgress)
		  
		  SurveyTimer.RunMode = Timer.RunModes.Multiple
		  
		  SurveyThread.Start // start survey in the thread!
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UIModeToSetup()
		  // for delayed call
		  SetMode(AppStates.Setup)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WorkflowPanelEnabled(Enabled as Boolean)
		  LaunchAppOnJobCompleteCheck.Enabled = Enabled
		  
		  NextAppArgsField.Enabled = LaunchAppOnJobCompleteCheck.Value and Enabled
		  NextAppArgsLabel.Enabled = LaunchAppOnJobCompleteCheck.Value and Enabled
		  NextAppField.Enabled = LaunchAppOnJobCompleteCheck.Value and Enabled
		  NextAppSelectBtn.Enabled = LaunchAppOnJobCompleteCheck.Value and Enabled
		  ThisAppCloseOnLaunchCheck.Enabled = LaunchAppOnJobCompleteCheck.Value and Enabled
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ActiveJob As ocrJob.Job
	#tag EndProperty

	#tag Property, Flags = &h0
		AllDependenciesOK As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		AppState As AppStates = AppStates.NoChange
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentDoc As ocrJob.JobDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		DocIndexAtCancel As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		KillSurveyFlag As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		NextAppFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		pdfList() As FolderItem
	#tag EndProperty


	#tag Constant, Name = ColorDONEOK, Type = Color, Dynamic = False, Default = \"&c00A800", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ColorDONEWARNINGS, Type = Color, Dynamic = False, Default = \"&cFF8040", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ColorERROR, Type = Color, Dynamic = False, Default = \"&cFF0000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ColorSETUP, Type = Color, Dynamic = False, Default = \"&c0080C0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ColorWORKING, Type = Color, Dynamic = False, Default = \"&c808000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = FooterDefaultMsg, Type = String, Dynamic = False, Default = \"ocrJob - an ocrmypdf coordinator for batch document processing", Scope = Public
	#tag EndConstant


	#tag Enum, Name = AppStates, Type = Integer, Flags = &h0
		Setup
		  SurveyInProgress
		  SurveyError
		  SurveyNoDocs
		  SurveyOK
		  OCRInProgress
		  OCRFatalError
		  OCROK
		  OCRWarnings
		NoChange
	#tag EndEnum


#tag EndWindowCode

#tag Events DocList
	#tag Event
		Sub Opening()
		  me.ColumnCount = 8
		  
		  me.HeaderAt(0) = "#"
		  me.HeaderAt(1) = "Source PDF"
		  me.HeaderAt(2) = "Pages"
		  me.HeaderAt(3) = "Outcome"
		  me.HeaderAt(4) = "Duration"
		  me.HeaderAt(5) = "Source folder"
		  me.HeaderAt(6) = "Target PDF" 
		  me.HeaderAt(7) = "Target TXT"
		  
		  me.AllowResizableColumns = true
		  me.ColumnSortTypeAt(DesktopListBox.AllColumns) = DesktopListBox.SortTypes.NotSortable
		  me.ColumnWidths = "50,20%,70,20%,100,20%,20%,20%"
		  
		  me.HasHeader = true
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoublePressed()
		  Var xValue As Integer
		  xValue = System.MouseX - Me.Left - Self.Left // Calculate current mouse position relative to top left of ListBox
		  Var yValue As Integer
		  yValue = System.MouseY - Me.Top - Self.Top // Calculate current mouse position relative to top of ListBox.
		  Var row, column As Integer
		  row = Me.RowFromXY(xValue, yValue)
		  column=Me.ColumnFromXY(xValue, yValue)
		  
		  Select case column
		    
		  case 1 , 5 , 6 , 7 // point to folderitems
		    
		    dim f as FolderItem = me.CellTagAt(row , column)
		    
		    if not IsNull(f) then
		      if f.Exists then f.Open
		    end if
		    
		  case 3
		    
		    if me.CellTextAt(row , column).IsNumeric then
		      me.CellTextAt(row , column) = ocrJob.DocState2Description(ocrJob.DocumentStates(me.CellTagAt(row , column).IntegerValue))
		    else
		      me.CellTextAt(row , column) = me.CellTagAt(row , column).StringValue
		    end if
		    
		    
		  case 0
		    
		    dim uniquestr as String = "Document #" + me.CellTextAt(row , column) + " "
		    dim charidx as Integer = ConsoleView.Text.IndexOf(0 , uniquestr)
		    if charidx > -1 then 
		      ConsoleView.VerticalScrollPosition = ConsoleView.LineNumber(charidx)
		      ConsoleView.SelectionStart = charidx
		      ConsoleView.SelectionLength = uniquestr.Length - 1
		      MainTabPanel.SelectedPanelIndex = 3
		    end if
		    
		  end Select
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BaseFolderSelectBtn
	#tag Event
		Sub Pressed()
		  dim dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "Select"
		  dlg.Title = "Select Base folder for survey"
		  dlg.PromptText = "The Base folder is where the PDF survey is going to look for documents"
		  
		  Var f As FolderItem
		  
		  f = dlg.ShowModal
		  
		  if not IsNull(f) then BaseFolderField.Text = f.NativePath
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SurveyStartCancelBtn
	#tag Event
		Sub Pressed()
		  select case AppState
		    
		  case AppStates.Setup , AppStates.SurveyError , AppStates.SurveyNoDocs
		    SurveyStart
		    
		    
		  case AppStates.SurveyInProgress
		    SurveyCancel
		    
		  end Select
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LangsList
	#tag Event
		Sub Opening()
		  me.ColumnTypeAt(0) = DesktopListBox.CellTypes.CheckBox
		  
		  dim langs() as String = TesseractListLangs
		  
		  me.Tooltip = langs(0) // first line is not an installed language
		  langs.RemoveAt(0)
		  
		  
		  for i as Integer = 0 to langs.LastIndex
		    if not langs(i).Contains(" ") then me.AddRow "" , langs(i)
		  next i
		  
		  
		  
		  // ====just for my convenience, you can comment it out
		  for i as Integer = 0 to me.RowCount - 1
		    if me.CellTextAt(i , 1) = "eng" then me.CellCheckBoxValueAt(i , 0) = True
		    if me.CellTextAt(i , 1) = "ell" then me.CellCheckBoxValueAt(i , 0) = True
		  next i
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProcessingPolicyMenu
	#tag Event
		Sub Opening()
		  me.AddRow "Default: Error if OCR layer is found"
		  me.RowTagAt(me.LastRowIndex) = ""
		  
		  me.AddRow "skip-text: Output existing OCR if found"
		  me.RowTagAt(me.LastRowIndex) = "--skip-text"
		  
		  me.AddRow "redo-ocr: Analyze and redo OCR where applicable"
		  me.RowTagAt(me.LastRowIndex) = "--redo-ocr"
		  
		  me.AddRow "force-ocr: Rasterize everything and do OCR"
		  me.RowTagAt(me.LastRowIndex) = "--force-ocr"
		  
		  me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AboutText
	#tag Event
		Sub Opening()
		  dim ocrmypdfVer as String = ocrmypdfVersionData
		  dim tessVer as String = TesseractVersionData
		  dim pdfinfoVer as String = pdfinfoVersionData
		  
		  dim ocrmypdfInstalled as Boolean = isInstalledOcrmypdf(ocrmypdfVer)
		  dim tesseractInstalled as Boolean = isInstalledTesseract(tessVer)
		  dim pdfinfoInstalled as Boolean = isInstalledPdfinfo(pdfinfoVer)
		  
		  AllDependenciesOK = ocrmypdfInstalled and tesseractInstalled and pdfinfoInstalled
		  
		  me.AddText "ocrJob version " + app.MajorVersion.ToString + "." + app.MinorVersion.ToString + "." + app.BugVersion.ToString + EndOfLine
		  me.AddText "https://github.com/gregorplop/ocrJob" + EndOfLine
		  if AllDependenciesOK then me.AddText "All external dependencies satisfied" + EndOfLine
		  me.AddText EndOfLine
		  
		  if ocrmypdfInstalled then
		    me.AddText "ocrmypdf version:  " + ocrmypdfVersionData +  EndOfLine
		  else
		    me.AddText "ocrmypdf does not appear to be installed!" +  EndOfLine
		  end if
		  
		  if tesseractInstalled then
		    me.AddText TesseractVersionData + EndOfLine
		  else
		    me.AddText "tesseract does not appear to be installed!" + EndOfLine
		  end if
		  
		  
		  if pdfinfoInstalled then
		    me.AddText pdfinfoVersionData 
		  else
		    me.AddText "pdfinfo(pdf-tools) does not appear to be installed!" + EndOfLine
		  end if
		  
		  me.AddText EndOfLine
		  
		  me.AddText "Ocr icons created by Freepik - Flaticon"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OCRFilePolicyList
	#tag Event
		Sub Opening()
		  me.AddRow "Overwrite original file"
		  me.RowTagAt(me.LastRowIndex) = ocrJob.OutputFilePolicies.Overwrite
		  
		  me.AddRow "Create new file in the same folder"
		  me.RowTagAt(me.LastRowIndex) = ocrJob.OutputFilePolicies.CreateFile
		  
		  
		  me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  select case item.Tag
		    
		  case ocrJob.OutputFilePolicies.Overwrite
		    OCRFileAppendumPolicyList.Enabled = false
		    OCRFileAppendumValue.Enabled = false
		    
		    
		  case ocrJob.OutputFilePolicies.CreateFile
		    OCRFileAppendumPolicyList.Enabled = true
		    OCRFileAppendumValue.Enabled = true
		    
		  end select
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OCRFileAppendumPolicyList
	#tag Event
		Sub Opening()
		  me.AddRow "Prefix"
		  me.RowTagAt(me.LastRowIndex) = ocrJob.OutputFilenameAppendumPolicies.Prefix
		  
		  me.AddRow "Suffix"
		  me.RowTagAt(me.LastRowIndex) = ocrJob.OutputFilenameAppendumPolicies.Suffix
		  
		  me.SelectedRowIndex = 0 
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OutputFormatList
	#tag Event
		Sub Opening()
		  me.AddRow "PDF"
		  me.RowTagAt(me.LastRowIndex) = "pdf"
		  
		  me.AddRow "PDF/A1-b"
		  me.RowTagAt(me.LastRowIndex) = "pdfa-1"
		  
		  me.AddRow "PDF/A2-b"
		  me.RowTagAt(me.LastRowIndex) = "pdfa-2"
		  
		  me.AddRow "PDF/A3-b"
		  me.RowTagAt(me.LastRowIndex) = "pdfa-3"
		  
		  me.AddRow "none, use with text output"
		  me.RowTagAt(me.LastRowIndex) = "none"
		  
		  
		  me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  if item.Tag = "none" then 
		    SidecarCheck.Value = true
		    SidecarNamePolicyList.SelectedRowIndex = 0
		    SidecarNamePolicyList.Enabled = false
		    
		    OCRFilePolicyList.Enabled = false
		    OCRFileAppendumPolicyList.Enabled = false
		    OCRFileAppendumValue.Enabled = false
		    
		  else
		    
		    SidecarNamePolicyList.Enabled = true
		    
		    OCRFilePolicyList.Enabled = true
		    
		    
		    select case OCRFilePolicyList.RowTagAt(OCRFilePolicyList.SelectedRowIndex)
		      
		    case ocrJob.OutputFilePolicies.Overwrite
		      OCRFileAppendumPolicyList.Enabled = false
		      OCRFileAppendumValue.Enabled = false
		      
		      
		    case ocrJob.OutputFilePolicies.CreateFile
		      OCRFileAppendumPolicyList.Enabled = true
		      OCRFileAppendumValue.Enabled = true
		      
		    end select
		    
		    
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SidecarCheck
	#tag Event
		Sub ValueChanged()
		  if OutputFormatList.RowTagAt(OutputFormatList.SelectedRowIndex).StringValue = "none" then
		    SidecarNamePolicyList.Enabled = false
		  else
		    SidecarNamePolicyList.Enabled = me.Value
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SidecarNamePolicyList
	#tag Event
		Sub Opening()
		  me.AddRow "Text filename = source"
		  me.RowTagAt(me.LastRowIndex) = ocrJob.SidecarFilenamePolicies.SameAsSource
		  
		  me.AddRow "Text filename = target"
		  me.RowTagAt(me.LastRowIndex) = ocrJob.SidecarFilenamePolicies.SameAsTarget
		  
		  me.SelectedRowIndex = 0 
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IgnoreIfFilenameContainsCheck
	#tag Event
		Sub ValueChanged()
		  IgnoreIfFilenameContainsValue.Enabled = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OptimizationMenu
	#tag Event
		Sub Opening()
		  me.AddRow "0 - Do not optimize"
		  me.RowTagAt(me.LastRowIndex) = "0"
		  
		  me.AddRow "1 - Do safe, lossless optimizations"
		  me.RowTagAt(me.LastRowIndex) = "1"
		  
		  me.AddRow "2 - Do lossy optimizations (JPEG & JPEG2000)"
		  me.RowTagAt(me.LastRowIndex) = "2"
		  
		  me.AddRow "3 - Do More aggressive lossy optimizations"
		  me.RowTagAt(me.LastRowIndex) = "3"
		  
		  me.SelectedRowIndex = 1
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CleanMenu
	#tag Event
		Sub Opening()
		  me.AddRow "No cleanup"
		  me.RowTagAt(me.LastRowIndex) = ""
		  
		  me.AddRow "Cleanup for OCR, do not alter target"
		  me.RowTagAt(me.LastRowIndex) = "--clean"
		  
		  me.AddRow "Cleanup for OCR and write to target"
		  me.RowTagAt(me.LastRowIndex) = "--clean-final"
		  
		  me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RotateCheck
	#tag Event
		Sub ValueChanged()
		  RotateThresholdValue.Enabled = me.Value
		  RotateThresholdUpDown.Enabled = me.Value
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  if app.CmdLineArgs.HasKey("rotate") then
		    
		    dim threshold as Integer = app.CmdLineArgs.Value("rotate").IntegerValue
		    
		    if threshold > 0 then
		      me.Value = true
		      RotateThresholdValue.Text = threshold.ToString
		    end if
		    
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RotateThresholdUpDown
	#tag Event
		Sub DownPressed()
		  dim value as Integer = RotateThresholdValue.Text.CDbl
		  
		  if value > 0 then 
		    value = value - 1
		    RotateThresholdValue.Text = value.ToString
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub UpPressed()
		  dim value as Integer = RotateThresholdValue.Text.CDbl
		  
		  value = value + 1
		  RotateThresholdValue.Text = value.ToString
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClearSurveyBtn
	#tag Event
		Sub Pressed()
		  SetMode(AppStates.Setup , "" , 0)
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StartJobBtn
	#tag Event
		Sub Pressed()
		  OCRStart
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelJobBtn
	#tag Event
		Sub Pressed()
		  DocIndexAtCancel = ActiveJob.RequestCancel // request kill , it will be honored in the next document.
		  
		  me.Caption = "Cancelling..."
		  me.Enabled = false
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportDocListBtn
	#tag Event
		Sub Pressed()
		  dim f as FolderItem = FolderItem.ShowSaveFileDialog("" , ActiveJob.Stats.JobStampID + ".csv")
		  dim ErrorMsg as String
		  
		  if not ExportDocList(f , ErrorMsg) then
		    MessageBox ErrorMsg
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CustomParamsHelpBtn
	#tag Event
		Sub Pressed()
		  ocrmypdfHelpWindow.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LoggingPolicyMenu
	#tag Event
		Sub Opening()
		  me.AddRow "None - Save logs manually"
		  me.RowTagAt(me.LastRowIndex) = ocrJob.LoggingPolicies.NoLog
		  
		  me.AddRow "Autosave Progress and Console to log folder"
		  me.RowTagAt(me.LastRowIndex) = ocrJob.LoggingPolicies.AutosaveProgressAndConsoleToLogFolder
		  
		  
		  if App.CmdLineArgs.HasKey("logfolder") and not IsNull(App.LogFolder) then
		    me.SelectedRowIndex = 1
		  else
		    me.SelectedRowIndex = 0
		    
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  select case item.Tag
		    
		  case ocrJob.LoggingPolicies.NoLog
		    LogFolderField.Enabled = false
		    LogFolderSelectBtn.Enabled = false
		    
		  case ocrJob.LoggingPolicies.AutosaveProgressAndConsoleToLogFolder
		    LogFolderField.Enabled = true
		    LogFolderSelectBtn.Enabled = true
		    
		  case ocrJob.LoggingPolicies.LogFileInFolders
		    LogFolderField.Enabled = false
		    LogFolderSelectBtn.Enabled = false
		    
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BuildBatchFileCmd
	#tag Event
		Sub Pressed()
		  dim f as FolderItem = FolderItem.ShowSaveFileDialog("" , ActiveJob.Stats.JobStampID +".cmd")
		  dim ErrorMsg as String
		  
		  if not ActiveJob.BuildBatchFile(f , ErrorMsg) then
		    MessageBox ErrorMsg
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SaveConsoleBtn
	#tag Event
		Sub Pressed()
		  dim f as FolderItem = FolderItem.ShowSaveFileDialog("" , ActiveJob.Stats.JobStampID + ".txt")
		  dim ErrorMsg as String
		  
		  if not SaveConsoleOutput(f , ErrorMsg) then
		    MessageBox ErrorMsg
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LaunchAppOnJobCompleteCheck
	#tag Event
		Sub ValueChanged()
		  NextAppArgsField.Enabled = me.Value
		  NextAppArgsLabel.Enabled = me.Value
		  NextAppField.Enabled = me.Value
		  NextAppSelectBtn.Enabled = me.Value
		  ThisAppCloseOnLaunchCheck.Enabled = me.Value
		  
		  
		  app.WorkflowParams.Value("LaunchAppOnJobComplete") = me.Value
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextAppField
	#tag Event
		Sub TextChanged()
		  dim f as FolderItem
		  
		  if me.Text.Trim = "" then
		    f = nil
		  else
		    f = new FolderItem(me.Text)
		  end if
		  
		  app.WorkflowParams.Value("NextApp") = f
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextAppSelectBtn
	#tag Event
		Sub Pressed()
		  Var dlg As New OpenFileDialog
		  dlg.ActionButtonCaption = "Select Executable"
		  dlg.CancelButtonCaption = "Cancel"
		  dlg.Title = "Select Executable"
		  dlg.PromptText = "Select executable file or script"
		  dlg.Filter = "exe;bat;cmd"
		  dlg.AllowMultipleSelections = False
		  Var f As FolderItem = dlg.ShowModal
		  
		  if IsNull(f) then exit sub
		  
		  NextAppField.Text = f.NativePath
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextAppArgsField
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  base.AddMenu(New DesktopMenuItem("Add Job Exitcode", "$EXITCODE$"))
		  base.AddMenu(New DesktopMenuItem("Add Job Base folder path" , "$BASEFOLDER$"))
		  base.AddMenu(New DesktopMenuItem("Add Job Log CSV (if configured)" , "$LOGCSV$"))
		  
		  base.MenuAt(2).Enabled = false
		  
		  if LoggingPolicyMenu.RowTagAt(LoggingPolicyMenu.SelectedRowIndex) = ocrJob.LoggingPolicies.AutosaveProgressAndConsoleToLogFolder then
		    if not IsNull(app.LogFolder) then
		      if app.LogFolder.Exists then
		        
		        base.MenuAt(2).Enabled = true
		        
		      end if
		    end if
		  end if
		  
		  
		  Return true
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  app.WorkflowParams.Value("NextAppArgs") = me.Text
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  NextAppArgsField.AddText selectedItem.Tag.StringValue
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ThisAppCloseOnLaunchCheck
	#tag Event
		Sub ValueChanged()
		  app.WorkflowParams.Value("ThisAppCloseOnLaunch") = me.Value
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LogFolderField
	#tag Event
		Sub TextChanged()
		  if me.Text = "" then
		    app.LogFolder = nil
		  else
		    app.LogFolder = new FolderItem(me.Text)
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LogFolderSelectBtn
	#tag Event
		Sub Pressed()
		  dim dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "Select"
		  dlg.Title = "Select Log folder for job"
		  dlg.PromptText = "The Log folder is where the logs are going to be written on job complete"
		  
		  Var f As FolderItem
		  
		  f = dlg.ShowModal
		  
		  if not IsNull(f) then 
		    LogFolderField.Text = f.NativePath
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events QuitBtn
	#tag Event
		Sub Pressed()
		  Quit
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WorkShell
	#tag Event
		Sub DataAvailable()
		  dim buffer as String = me.ReadAll
		  
		  ConsoleView.AddText buffer
		  FooterLabel.Text = buffer
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Completed()
		  ActiveJob.FinalizeDocument(CurrentDoc , me.ExitCode)
		  DocListUpdate(CurrentDoc)
		  
		  if ActiveJob.GetJobState = ocrJob.JobStates.CancelRequested then // job killed
		    
		    ActiveJob.FinalizeJob
		    DocListUpdateCancelled(DocIndexAtCancel)
		    
		    ConsoleView.AddText ActiveJob.CompileTextReport + EndOfLine
		    SetModeBasedOnJobState(ActiveJob.GetJobState , "OCR Job cancelled by user")
		    
		  else  // go on until EOJ
		    
		    ConsoleView.AddText "End ocrmypdf, exit code = " + me.ExitCode.ToString + EndOfLine
		    ConsoleView.AddText "============================================" + EndOfLine
		    ConsoleView.AddText EndOfLine
		    
		    dim EOJ as Boolean = OCRNextDocument(CurrentDoc) // re-start the async processing -or not, if EOJ
		    
		    if EOJ then 
		      
		      ActiveJob.FinalizeJob
		      
		      ConsoleView.AddText ActiveJob.CompileTextReport + EndOfLine
		      SetModeBasedOnJobState(ActiveJob.GetJobState , ocrJob.JobState2Description(ActiveJob.GetJobState) + " -> Job duration " + ActiveJob.GetDuration4Display)
		      
		    end If
		    
		  end if
		  
		  
		  
		  
		  if AppState = AppStates.OCRFatalError or AppState = AppStates.OCROK or AppState = AppStates.OCRWarnings then // if job finishes:
		    
		    // write log files
		    if ActiveJob.Conf.LoggingPolicy = ocrJob.LoggingPolicies.AutosaveProgressAndConsoleToLogFolder then
		      dim ErrorMsg as String
		      dim logfilename as String = ActiveJob.Stats.JobStampID
		      if not ExportDocList(app.LogFolder.Child(logfilename + ".csv") , ErrorMsg) then MessageBox ErrorMsg
		      if not SaveConsoleOutput(app.LogFolder.Child(logfilename + ".txt") , ErrorMsg) then MessageBox ErrorMsg
		    end if
		    
		    // call next application in workflow
		    if app.WorkflowParams.Value("LaunchAppOnJobComplete").BooleanValue = true then
		      dim NextApp as FolderItem = FolderItem(app.WorkflowParams.Value("NextApp"))
		      dim Params as String
		      if not IsNull(NextApp) then
		        if NextApp.Exists then
		          
		          //WorkflowParams.Value("LaunchAppOnJobComplete") = False
		          //WorkflowParams.Value("NextApp") = nil // folderitem
		          //WorkflowParams.Value("NextAppArgs") = ""
		          //WorkflowParams.Value("ThisAppCloseOnLaunch") = false
		          
		          
		        end if
		      end if
		    end if
		    
		    
		    
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SurveyThread
	#tag Event
		Sub Run()
		  redim pdfList(-1)
		  
		  PDFSurvey(ActiveJob.Conf.BaseFolder , pdfList , ActiveJob.Conf.Recursive, KillSurveyFlag)
		  
		  if not KillSurveyFlag then
		    
		    ActiveJob.LoadSurveyData(pdfList, KillSurveyFlag)
		    
		    if not KillSurveyFlag then
		      Timer.CallLater(100 , AddressOf SurveyCompleteOK)
		    else
		      Timer.CallLater(100 , AddressOf SurveyKilled)
		    end if
		    
		  else // survey has been manually killed
		    
		    Timer.CallLater(100 , AddressOf SurveyKilled)
		    
		  end if
		  
		  SurveyTimer.RunMode = timer.RunModes.Off
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SurveyTimer
	#tag Event
		Sub Action()
		  dim docsLoaded as Integer = 0
		  
		  if not IsNull(ActiveJob) then
		    if not IsNull(ActiveJob.Stats) then docsLoaded = ActiveJob.Stats.DocsTotal
		  end if
		  
		  FooterLabel.Text = "Survey in progress... " + Integer(pdfList.LastIndex + 1).ToString + " found, " + docsLoaded.ToString + " added to job"
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AppState"
		Visible=false
		Group="Behavior"
		InitialValue="AppStates.NoChange"
		Type="AppStates"
		EditorType="Enum"
		#tag EnumValues
			"0 - Setup"
			"1 - SurveyInProgress"
			"2 - SurveyError"
			"3 - SurveyNoDocs"
			"4 - SurveyOK"
			"5 - OCRInProgress"
			"6 - OCRFatalError"
			"7 - OCROK"
			"8 - OCRWarnings"
			"9 - NoChange"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllDependenciesOK"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DocIndexAtCancel"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="KillSurveyFlag"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
