VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Player 
   Caption         =   "player"
   ClientHeight    =   4515
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   13395
   LinkTopic       =   "Form1"
   ScaleHeight     =   4515
   ScaleWidth      =   13395
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton reset 
      Caption         =   "Reset"
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
      Left            =   5520
      TabIndex        =   16
      Top             =   3720
      Width           =   1335
   End
   Begin VB.CommandButton backp 
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
      Height          =   735
      Left            =   9360
      TabIndex        =   15
      Top             =   2760
      Width           =   1455
   End
   Begin VB.CommandButton updatep 
      Caption         =   "Update"
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
      Left            =   4080
      TabIndex        =   14
      Top             =   2760
      Width           =   1455
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   735
      Left            =   6600
      Top             =   5160
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
      RecordSource    =   "Player"
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
   Begin VB.CommandButton deletep 
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
      Height          =   735
      Left            =   6720
      TabIndex        =   13
      Top             =   2760
      Width           =   1455
   End
   Begin VB.CommandButton addp 
      Caption         =   "Add"
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
      Left            =   1440
      TabIndex        =   12
      Top             =   2760
      Width           =   1455
   End
   Begin VB.TextBox txtcountryp 
      DataField       =   "country"
      Height          =   615
      Left            =   11280
      TabIndex        =   11
      Top             =   1200
      Width           =   1815
   End
   Begin VB.TextBox txtsalaryp 
      DataField       =   "salary"
      Height          =   615
      Left            =   9120
      TabIndex        =   10
      Top             =   1200
      Width           =   1935
   End
   Begin VB.TextBox txtpositionp 
      DataField       =   "position"
      Height          =   615
      Left            =   6720
      TabIndex        =   9
      Top             =   1200
      Width           =   1815
   End
   Begin VB.TextBox txtclubp 
      DataField       =   "club_name"
      Height          =   615
      Left            =   4560
      TabIndex        =   8
      Top             =   1200
      Width           =   1695
   End
   Begin VB.TextBox txtplayerid 
      DataField       =   "player_id"
      Height          =   615
      Left            =   240
      TabIndex        =   7
      Top             =   1200
      Width           =   1815
   End
   Begin VB.TextBox txtnamep 
      DataField       =   "pname"
      Height          =   615
      Left            =   2520
      TabIndex        =   6
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label country 
      Caption         =   "Country"
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
      Left            =   11400
      TabIndex        =   5
      Top             =   360
      Width           =   1335
   End
   Begin VB.Label salaryp 
      Caption         =   "Salary"
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
      Left            =   9240
      TabIndex        =   4
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label position 
      Caption         =   "Position"
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
      Left            =   6840
      TabIndex        =   3
      Top             =   360
      Width           =   1815
   End
   Begin VB.Label clubp 
      Caption         =   "Club"
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
      TabIndex        =   2
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label playeridp 
      Caption         =   "Player ID"
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
      Left            =   360
      TabIndex        =   1
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label namep 
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
      Height          =   495
      Left            =   2640
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
End
Attribute VB_Name = "player"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Frame1_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub addp_Click()
If txtplayerid.Text = "" Then MsgBox ("Enter player id of the player to add")


Adodc1.Recordset.AddNew
Adodc1.Recordset.Fields(1) = txtnamep.Text
Adodc1.Recordset.Fields(5) = txtclubp.Text
Adodc1.Recordset.Fields(0) = txtplayerid.Text
Adodc1.Recordset.Fields(2) = txtpositionp.Text
Adodc1.Recordset.Fields(3) = txtsalaryp.Text
Adodc1.Recordset.Fields(4) = txtcountryp.Text
Adodc1.Recordset.Update
Adodc1.Refresh
MsgBox ("Player added successfully")
txtplayerid.Text = ""
txtnamep.Text = ""
txtclubp.Text = ""
txtpositionp.Text = ""
txtsalaryp.Text = ""
txtcountryp.Text = ""
End Sub

Private Sub backp_Click()
Me.Hide
MDIForm1.Show
End Sub

Private Sub deletep_Click()
Adodc1.Refresh

If txtplayerid.Text = "" Then
MsgBox ("Enter player id of the player to delete")
End If
Adodc1.Recordset.MoveFirst
Do Until Adodc1.Recordset.EOF = True
If Trim(Adodc1.Recordset.Fields(0)) = Trim(txtplayerid.Text) Then
Adodc1.Recordset.Delete
Adodc1.Recordset.Update
Adodc1.Refresh
End If
Adodc1.Recordset.MoveNext
Loop
MsgBox ("Player successfully deleted")
txtplayerid.Text = ""
txtnamep.Text = ""
txtclubp.Text = ""
txtpositionp.Text = ""
txtsalaryp.Text = ""
txtcountryp.Text = ""
End Sub

Private Sub Form_Load()
txtplayerid.Text = ""
txtnamep.Text = ""
txtclubp.Text = ""
txtpositionp.Text = ""
txtsalaryp.Text = ""
txtcountryp.Text = ""

End Sub


Private Sub reset_Click()
txtplayerid.Text = ""
txtnamep.Text = ""
txtclubp.Text = ""
txtpositionp.Text = ""
txtsalaryp.Text = ""
txtcountryp.Text = ""
End Sub

Private Sub txtplayerid_LostFocus()
Adodc1.Refresh

Adodc1.Recordset.MoveFirst
Do Until Adodc1.Recordset.EOF = True
If Trim(Adodc1.Recordset.Fields(0)) = Trim(txtplayerid.Text) Then
txtplayerid.Text = Trim(Adodc1.Recordset.Fields(0))
txtnamep.Text = Trim(Adodc1.Recordset.Fields(1))
txtclubp.Text = Trim(Adodc1.Recordset.Fields(5))
txtpositionp.Text = Trim(Adodc1.Recordset.Fields(2))
txtsalaryp.Text = Trim(Adodc1.Recordset.Fields(3))
txtcountryp.Text = Trim(Adodc1.Recordset.Fields(4))
End If
Adodc1.Recordset.MoveNext
Loop

End Sub

Private Sub updatep_Click()
Adodc1.Refresh

If txtplayerid.Text = "" Then
MsgBox ("Enter player id of the player to update")
End If
Adodc1.Recordset.MoveFirst
Do Until Adodc1.Recordset.EOF = True
If Trim(Adodc1.Recordset.Fields(0)) = Trim(txtplayerid.Text) Then

Adodc1.Recordset.Fields(1) = Trim(txtnamep.Text)
Adodc1.Recordset.Fields(5) = Trim(txtclubp.Text)
Adodc1.Recordset.Fields(2) = Trim(txtpositionp.Text)
Adodc1.Recordset.Fields(3) = Trim(txtsalaryp.Text)
Adodc1.Recordset.Fields(4) = Trim(txtcountryp.Text)

End If
Adodc1.Recordset.MoveNext
Loop

Adodc1.Refresh
MsgBox ("Player information successfully updated ")
End Sub
