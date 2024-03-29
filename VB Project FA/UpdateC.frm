VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form UpdateC 
   Caption         =   "Update"
   ClientHeight    =   5565
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7065
   LinkTopic       =   "Form1"
   ScaleHeight     =   5565
   ScaleWidth      =   7065
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton backuc 
      Caption         =   "BACK"
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
      Left            =   3360
      TabIndex        =   5
      Top             =   4320
      Width           =   1335
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   6720
      Top             =   4080
      Visible         =   0   'False
      Width           =   1335
      _ExtentX        =   2355
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
   Begin VB.ComboBox cnoc 
      Height          =   315
      Left            =   2880
      TabIndex        =   4
      Top             =   600
      Width           =   2775
   End
   Begin VB.CommandButton okuc 
      Caption         =   "OK"
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
      Left            =   1440
      TabIndex        =   3
      Top             =   4320
      Width           =   1455
   End
   Begin VB.ListBox lnoc 
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1440
      Left            =   2880
      TabIndex        =   1
      Top             =   1680
      Width           =   2655
   End
   Begin VB.Label propc 
      Caption         =   "Select  Property to Update"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   480
      TabIndex        =   2
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Label nameocc 
      Caption         =   "Name Of Club"
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
      Left            =   480
      TabIndex        =   0
      Top             =   600
      Width           =   1695
   End
End
Attribute VB_Name = "UpdateC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub backuc_Click()
Me.Hide
MDIForm1.Show
End Sub

Private Sub bupdat_Click()
Me.Hide
End Sub

Private Sub Form_Load()
lnoc.AddItem ("Manager")
lnoc.AddItem ("Stadium")
lnoc.AddItem ("Sponsors")
lnoc.AddItem ("Owner")
Adodc1.Refresh
Do Until Adodc1.Recordset.EOF = True
cnoc.AddItem (Adodc1.Recordset.Fields(0))
Adodc1.Recordset.MoveNext
Loop
End Sub

Private Sub okuc_Click()
Dim str As String
Adodc1.Refresh
Do Until Adodc1.Recordset.EOF = True
If Adodc1.Recordset.Fields(0) = cnoc.Text Then
Select Case lnoc.ListIndex
Case 0
str = InputBox("Previous Manager:" + Adodc1.Recordset.Fields(1), " Update Manager", "Enter new managers name")
If str = Cancel Then
Exit Sub
Else
Adodc1.Recordset.Fields(1) = str
MsgBox ("Managers name succesfully updated ")
End If
Case 1
str = InputBox("Previous Stadium:" + Adodc1.Recordset.Fields(2), "Update Stadium", "Enter new Stadium")
If str = Cancel Then
Exit Sub
Else
Adodc1.Recordset.Fields(2) = str
MsgBox ("Stadium succesfully updated ")
End If
Case 2
str = InputBox("Previous Sponsoror:" + Adodc1.Recordset.Fields(3), "Update Sponsoror", "Enter new sponsorors name")
If str = Cancel Then
Exit Sub
Else
Adodc1.Recordset.Fields(3) = str
MsgBox ("Sponsoror succesfully updated ")
End If

Case 3
str = InputBox("Previous Owner:" + Adodc1.Recordset.Fields(4), "Update Owner", "Enter new owners name")
If str = Cancel Then
Exit Sub
Else
Adodc1.Recordset.Fields(4) = str
MsgBox ("Owner succesfully updated ")
End If

End Select
End If
Adodc1.Recordset.MoveNext
Loop
Adodc1.Refresh
End Sub

