VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form league_update 
   Caption         =   "Update League"
   ClientHeight    =   6075
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7470
   LinkTopic       =   "Form1"
   ScaleHeight     =   6075
   ScaleWidth      =   7470
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton backlu 
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
      Left            =   2880
      TabIndex        =   8
      Top             =   5040
      Width           =   1695
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   375
      Left            =   6480
      Top             =   4920
      Visible         =   0   'False
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
      RecordSource    =   "Leagutc"
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
   Begin VB.CommandButton dclubl 
      Caption         =   "Delete Club"
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
      Left            =   4680
      TabIndex        =   7
      Top             =   3960
      Width           =   2055
   End
   Begin VB.CommandButton aclubl 
      Caption         =   "Add Club"
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
      Left            =   4680
      TabIndex        =   6
      Top             =   3000
      Width           =   2055
   End
   Begin VB.CommandButton dsponl 
      Caption         =   "Delete Sponsor"
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
      TabIndex        =   5
      Top             =   3960
      Width           =   1935
   End
   Begin VB.CommandButton asponl 
      Caption         =   "Add Sponsor"
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
      TabIndex        =   4
      Top             =   3000
      Width           =   1935
   End
   Begin VB.ListBox slist 
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1560
      ItemData        =   "league_update.frx":0000
      Left            =   240
      List            =   "league_update.frx":0002
      TabIndex        =   1
      Top             =   1080
      Width           =   3015
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   480
      Top             =   4920
      Visible         =   0   'False
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   582
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
      RecordSource    =   "Leagues"
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
   Begin VB.ListBox clist 
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1560
      ItemData        =   "league_update.frx":0004
      Left            =   3960
      List            =   "league_update.frx":0006
      TabIndex        =   0
      Top             =   1080
      Width           =   3135
   End
   Begin VB.Label lteam 
      Caption         =   "CLUBS"
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
      Left            =   3960
      TabIndex        =   3
      Top             =   480
      Width           =   2655
   End
   Begin VB.Label lspon 
      Caption         =   "SPONSORORS"
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
      Left            =   240
      TabIndex        =   2
      Top             =   480
      Width           =   2895
   End
End
Attribute VB_Name = "league_update"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub aclubl_Click()
Dim str As String
Dim loid As String
Dim temp As String

str = InputBox("Enter club's name", "New Club")
If str = Cancel Then
Exit Sub
End If
loid = InputBox("Enter list id for club")
If loid = Cancel Then
Exit Sub
End If
Adodc2.Refresh
Adodc2.Recordset.AddNew
Adodc2.Recordset.Fields(2) = str
Adodc2.Recordset.Fields(0) = loid

Adodc2.Recordset.Fields(1) = X

Adodc2.Recordset.Update
Adodc2.Refresh
clist.AddItem (str)

MsgBox ("Club added successfully ")
End Sub

Private Sub asponl_Click()
Dim str As String
Dim loid As String


str = InputBox("Enter sponsor's name", "New Sponsor")
If str = Cancel Then
Exit Sub
End If
loid = InputBox("Enter list id for sponsor")
If loid = Cancel Then
Exit Sub
End If
Adodc1.Refresh
Adodc1.Recordset.AddNew
Adodc1.Recordset.Fields(2) = str
Adodc1.Recordset.Fields(0) = loid

Adodc1.Recordset.Fields(1) = X

Adodc1.Recordset.Update
Adodc1.Refresh
slist.AddItem (str)

MsgBox ("Sponsor added successfully ")


End Sub

Private Sub backlu_Click()
Me.Hide
league.Show
End Sub

Private Sub dclubl_Click()
Adodc2.Refresh
Adodc2.Recordset.MoveFirst

Do Until Adodc2.Recordset.EOF = True
If Adodc2.Recordset.Fields(2) = clist.Text Then
Adodc2.Recordset.Delete
Adodc2.Recordset.Update
Adodc2.Refresh
End If
Adodc2.Recordset.MoveNext
Loop
clist.RemoveItem (clist.ListIndex)
End Sub

Private Sub dsponl_Click()
Adodc1.Refresh
Adodc1.Recordset.MoveFirst

Do Until Adodc1.Recordset.EOF = True
If Adodc1.Recordset.Fields(2) = slist.Text Then
Adodc1.Recordset.Delete
Adodc1.Recordset.Update
Adodc1.Refresh
End If
Adodc1.Recordset.MoveNext
Loop
slist.RemoveItem (slist.ListIndex)

End Sub

Private Sub Form_Load()

Adodc1.Refresh

Adodc2.Refresh


Do Until Adodc1.Recordset.EOF = True
If Trim(Adodc1.Recordset.Fields(1)) = Trim(X) Then
slist.AddItem (Adodc1.Recordset.Fields(2))
End If
Adodc1.Recordset.MoveNext
Loop
Do Until Adodc2.Recordset.EOF = True
If Trim(Adodc2.Recordset.Fields(1)) = Trim(X) Then
clist.AddItem (Adodc2.Recordset.Fields(2))
End If
Adodc2.Recordset.MoveNext
Loop
End Sub



