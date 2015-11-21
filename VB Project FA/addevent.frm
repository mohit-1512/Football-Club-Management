VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form addevent 
   Caption         =   "Add Event"
   ClientHeight    =   5295
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7290
   LinkTopic       =   "Form1"
   ScaleHeight     =   5295
   ScaleWidth      =   7290
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   375
      Left            =   7680
      Top             =   4320
      Width           =   2055
      _ExtentX        =   3625
      _ExtentY        =   661
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
      RecordSource    =   "addevent"
      Caption         =   "Adodc2"
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
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   720
      Top             =   4320
      Visible         =   0   'False
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
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
   Begin VB.CommandButton okae 
      Caption         =   "Add Event"
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
      TabIndex        =   7
      Top             =   4200
      Width           =   1935
   End
   Begin VB.TextBox txtdate 
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2640
      TabIndex        =   6
      Top             =   3120
      Width           =   1935
   End
   Begin VB.ComboBox ateamcombo 
      Height          =   315
      Left            =   4320
      TabIndex        =   4
      Top             =   1320
      Width           =   2775
   End
   Begin VB.ComboBox hteamcombo 
      Height          =   315
      Left            =   360
      TabIndex        =   3
      Top             =   1320
      Width           =   2655
   End
   Begin VB.Label date 
      Caption         =   "Date"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3240
      TabIndex        =   5
      Top             =   2280
      Width           =   975
   End
   Begin VB.Label vs 
      Caption         =   "v/s"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3360
      TabIndex        =   2
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label awayteam 
      Caption         =   "Away Time"
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
      Left            =   4440
      TabIndex        =   1
      Top             =   360
      Width           =   2535
   End
   Begin VB.Label hometeam 
      Caption         =   "Home Team"
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
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   2295
   End
End
Attribute VB_Name = "addevent"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()

Dim i As Integer
Dim q As Integer
Adodc1.Refresh
Adodc1.Recordset.MoveNext
Do Until Adodc1.Recordset.EOF = True
hteamcombo.AddItem (Adodc1.Recordset.Fields(0))
ateamcombo.AddItem (Adodc1.Recordset.Fields(0))
Adodc1.Recordset.MoveNext
Adodc2.Refresh
Adodc2.Recordset.AddNew
Loop
End Sub

Private Sub hteamcombo_click()
i = 0
Do Until hteamcombo.Text = ateamcombo.List(i)
i = i + 1
Loop
ateamcombo.RemoveItem (i)
End Sub

Private Sub okae_Click()
Dim srno As Integer
srno = Val(InputBox("Enter Serial No.", "Match Serial Number"))
Adodc2.Recordset.Fields(0) = srno
Adodc2.Recordset.Fields(1) = hteamcombo.Text
Adodc2.Recordset.Fields(2) = ateamcombo.Text
Adodc2.Recordset.Fields(3) = txtdate.Text
Adodc2.Recordset.Fields(4) = X
Adodc2.Recordset.Update
Adodc2.Refresh
MsgBox ("Event Added Successfully")
End Sub
