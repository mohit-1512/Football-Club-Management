VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form DeleteC 
   Caption         =   "Delete Club"
   ClientHeight    =   3210
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7980
   LinkTopic       =   "Form1"
   ScaleHeight     =   3210
   ScaleWidth      =   7980
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton backdc 
      Caption         =   "Back"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4800
      TabIndex        =   3
      Top             =   2160
      Width           =   1455
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   735
      Left            =   5640
      Top             =   4320
      Visible         =   0   'False
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   1296
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   3
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "DSN=mySQL"
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   "mySQL"
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "club"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.ComboBox cnocd 
      Height          =   315
      Left            =   4560
      TabIndex        =   2
      Top             =   960
      Width           =   2775
   End
   Begin VB.CommandButton deletedc 
      Caption         =   "Delete"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2640
      TabIndex        =   1
      Top             =   2160
      Width           =   1575
   End
   Begin VB.Label namedc 
      Caption         =   "Select Club To Delete"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1200
      TabIndex        =   0
      Top             =   960
      Width           =   2775
   End
End
Attribute VB_Name = "DeleteC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub backdc_Click()
Unload Me
MDIForm1.Show

End Sub

Private Sub cnocd_Change()

End Sub

Private Sub deletedc_Click()
Adodc1.Refresh
Do Until Adodc1.Recordset.EOF = True
If Adodc1.Recordset.Fields(0) = cnocd.Text Then
Adodc1.Recordset.Delete
cnocd.Clear
Adodc1.Recordset.Update
Adodc1.Refresh
End If
Adodc1.Recordset.MoveNext
Loop
MsgBox ("Club deleted successfully")
End Sub

Private Sub Form_Load()
Adodc1.Refresh
Do Until Adodc1.Recordset.EOF = True
cnocd.AddItem (Adodc1.Recordset.Fields(0))
Adodc1.Recordset.MoveNext
Loop
End Sub
