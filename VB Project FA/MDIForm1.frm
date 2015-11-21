VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm1"
   ClientHeight    =   5025
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   7215
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnuMaster 
      Caption         =   "Master"
      Begin VB.Menu mnuClub 
         Caption         =   "Club"
         Begin VB.Menu mnuAddC 
            Caption         =   "Add Club"
         End
         Begin VB.Menu mnuUpdateC 
            Caption         =   "Update"
         End
         Begin VB.Menu mnuDeleteC 
            Caption         =   "Delete"
         End
      End
      Begin VB.Menu mnuPlayer 
         Caption         =   "Player"
      End
      Begin VB.Menu mnuLeague 
         Caption         =   "League"
      End
   End
   Begin VB.Menu mnuview 
      Caption         =   "View"
      Begin VB.Menu mnuClubV 
         Caption         =   "Clubs"
         Begin VB.Menu mnuViewAll_club 
            Caption         =   "View All"
         End
         Begin VB.Menu mnufind_club 
            Caption         =   "Find Club"
         End
      End
      Begin VB.Menu mnuPlayerV 
         Caption         =   "Players"
         Begin VB.Menu mnuviewall_p 
            Caption         =   "View All"
         End
         Begin VB.Menu mnufind_p 
            Caption         =   "Find Player"
         End
      End
      Begin VB.Menu mnuLeagueV 
         Caption         =   "Leagues"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuAddC_Click()
AddClub.Show
End Sub

Private Sub mnuDeleteC_Click()
DeleteC.Show
End Sub

Private Sub mnuExit_Click()
End
End Sub

Private Sub mnufind_club_Click()
viewfc.Show
End Sub

Private Sub mnufind_p_Click()
viewfp.Show
End Sub

Private Sub mnuLeague_Click()
league.Show
End Sub

Private Sub mnuLeagueV_Click()
viewselectleague.Show
End Sub

Private Sub mnuPlayer_Click()
player.Show
End Sub

Private Sub mnuUpdateC_Click()
UpdateC.Show
End Sub

Private Sub mnuViewAll_club_Click()
viewac.Show
End Sub

Private Sub mnuviewall_p_Click()
viewp.Show
End Sub
