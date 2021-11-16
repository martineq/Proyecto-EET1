VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4110
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   6705
   LinkTopic       =   "Form1"
   ScaleHeight     =   4110
   ScaleWidth      =   6705
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   1215
      Left            =   120
      TabIndex        =   2
      Top             =   2640
      Width           =   2775
   End
   Begin VB.ListBox List1 
      Height          =   1425
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   2775
   End
   Begin VB.Label Label3 
      Caption         =   "Fuentes"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Ingrese la frase"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   2280
      Width           =   1935
   End
   Begin VB.Label Label1 
      Height          =   975
      Left            =   3240
      TabIndex        =   1
      Top             =   600
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_load()
For i = 0 To Screen.FontCount - 1
       List1.AddItem Screen.Fonts(i)
Next i
End Sub
Private Sub List1_Click()
Label1.Font = List1
End Sub
Private Sub Text1_Change()
Label1 = Text1
End Sub
