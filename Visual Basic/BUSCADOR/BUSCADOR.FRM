VERSION 5.00
Begin VB.Form Form1 
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   960
      TabIndex        =   3
      Top             =   1080
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   1335
      Left            =   120
      TabIndex        =   2
      Top             =   1680
      Width           =   3615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Buscar"
      Height          =   495
      Left            =   3240
      TabIndex        =   1
      Top             =   360
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Buscar en:"
      Height          =   375
      Left            =   0
      TabIndex        =   4
      Top             =   1080
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

