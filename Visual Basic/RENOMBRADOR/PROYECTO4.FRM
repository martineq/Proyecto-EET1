VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3510
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   6465
   LinkTopic       =   "Form1"
   ScaleHeight     =   3510
   ScaleWidth      =   6465
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   3240
      TabIndex        =   3
      Top             =   2280
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "RENOMBRAR"
      Height          =   735
      Left            =   240
      TabIndex        =   2
      Top             =   2160
      Width           =   2415
   End
   Begin VB.DirListBox Dir1 
      Height          =   1440
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   2415
   End
   Begin VB.FileListBox File1 
      Height          =   1455
      Left            =   3240
      TabIndex        =   0
      Top             =   120
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Right(Dir1, 1) = "\" Then
      ro = Dir1 & File1
  Else
      ro = Dir1 & "\" & File1
  End If
If Right(Dir1, 1) = "\" Then
      rd = Dir1 & Text1.Text
  Else
      rd = Dir1 & "\" & Text1.Text
  End If
Name ro As rd
File1.Refresh
End Sub
Private Sub Dir1_Change()
File1 = Dir1
End Sub
