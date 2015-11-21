VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form AddClub 
   Caption         =   "Add Club"
   ClientHeight    =   7215
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5490
   LinkTopic       =   "Form1"
   ScaleHeight     =   7215
   ScaleWidth      =   5490
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton backac 
      Caption         =   "BACK"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3360
      TabIndex        =   11
      Top             =   6000
      Width           =   1335
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   735
      Left            =   7680
      Top             =   4200
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
         Name            =   "Arial Black"
         Size            =   14.25
         Charset         =   0
         Weight          =   900
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox txtownerc 
      DataField       =   "Ownar"
      DataSource      =   "Adodc1"
      Height          =   615
      Left            =   2160
      TabIndex        =   10
      Top             =   4320
      Width           =   2655
   End
   Begin VB.CommandButton okc 
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1080
      TabIndex        =   8
      Top             =   6000
      Width           =   1335
   End
   Begin VB.TextBox txtsponsorsc 
      DataField       =   "Sponsors"
      DataSource      =   "Adodc1"
      Height          =   615
      Left            =   2160
      TabIndex        =   7
      Top             =   3360
      Width           =   2655
   End
   Begin VB.TextBox txtstadiumc 
      DataField       =   "Stadium"
      DataSource      =   "Adodc1"
      Height          =   615
      Left            =   2160
      TabIndex        =   6
      Top             =   2400
      Width           =   2655
   End
   Begin VB.TextBox txtmanagerc 
      DataField       =   "Manager"
      DataSource      =   "Adodc1"
      Height          =   615
      Left            =   2160
      TabIndex        =   5
      Top             =   1440
      Width           =   2655
   End
   Begin VB.TextBox txtnamec 
      DataField       =   "Name"
      DataSource      =   "Adodc1"
      Height          =   615
      Left            =   2160
      TabIndex        =   4
      Top             =   480
      Width           =   2655
   End
   Begin VB.Label ownerc 
      Caption         =   "Owner"
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
      Left            =   600
      TabIndex        =   9
      Top             =   4440
      Width           =   1335
   End
   Begin VB.Label sponsorsc 
      Caption         =   "Sponsors"
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
      Left            =   600
      TabIndex        =   3
      Top             =   3480
      Width           =   1335
   End
   Begin VB.Label stadiumc 
      Caption         =   "Stadium"
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
      Left            =   600
      TabIndex        =   2
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label managerc 
      Caption         =   "Manager"
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
      Left            =   600
      TabIndex        =   1
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Label namec 
      Caption         =   "Name"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   855
   End
End
Attribute VB_Name = "AddClub"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Me.Hide
MDIForm1.Show
End Sub

Private Sub backac_Click()
Me.Hide
MDIForm1.Show
End Sub

Private Sub Form_Load()
Adodc1.Refresh
Adodc1.Recordset.AddNew
End Sub

Private Sub okc_Click()
Adodc1.Recordset.Update
Adodc1.Refresh
Adodc1.Recordset.AddNew
MsgBox ("Club succesfully added..")
End Sub
