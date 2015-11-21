VERSION 5.00
Begin VB.Form League 
   Caption         =   "league"
   ClientHeight    =   4725
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7530
   LinkTopic       =   "Form1"
   ScaleHeight     =   4725
   ScaleWidth      =   7530
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton backl 
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
      Left            =   4920
      TabIndex        =   8
      Top             =   3240
      Width           =   1695
   End
   Begin VB.CommandButton vrl 
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
      Left            =   4920
      TabIndex        =   7
      Top             =   1860
      Width           =   1695
   End
   Begin VB.CommandButton updatel 
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
      Height          =   615
      Left            =   4920
      TabIndex        =   6
      Top             =   480
      Width           =   1695
   End
   Begin VB.OptionButton Option5 
      Caption         =   "Standard Pro League "
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
      Left            =   360
      TabIndex        =   5
      Top             =   3600
      Width           =   3975
   End
   Begin VB.OptionButton Option4 
      Caption         =   "Coco-Cola League 2"
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
      Left            =   360
      TabIndex        =   4
      Top             =   3000
      Width           =   4215
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Coco-Cola League 1"
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
      Left            =   360
      TabIndex        =   3
      Top             =   2400
      Width           =   4095
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Coco-Cola Championship"
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
      Left            =   360
      TabIndex        =   2
      Top             =   1800
      Width           =   3975
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Barcalays Premier League"
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
      Left            =   360
      TabIndex        =   1
      Top             =   1200
      Width           =   3855
   End
   Begin VB.Label selleaguel 
      Caption         =   "Select League"
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
      TabIndex        =   0
      Top             =   360
      Width           =   2295
   End
End
Attribute VB_Name = "league"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub backl_Click()
Me.Hide
MDIForm1.Show
End Sub

Private Sub Form_Load()
X = ""
End Sub

Private Sub Option1_Click()
X = "Barcalays Premier League"
End Sub

Private Sub Option2_Click()
X = "Coco-Cola Championship"
End Sub

Private Sub Option3_Click()
X = "Coco-Cola League 1"
End Sub

Private Sub Option4_Click()
X = "Coco-Cola League 2"
End Sub

Private Sub Option5_Click()
X = "Standard Pro League "
End Sub

Private Sub updatel_Click()
league_update.Show

End Sub

Private Sub vrl_Click()
addevent.Show
End Sub
