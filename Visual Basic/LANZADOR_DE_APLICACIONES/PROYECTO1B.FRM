VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3435
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   6480
   LinkTopic       =   "Form1"
   ScaleHeight     =   3435
   ScaleWidth      =   6480
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "SALIR"
      Height          =   855
      Left            =   1800
      TabIndex        =   3
      Top             =   2160
      Width           =   2775
   End
   Begin VB.CommandButton Command3 
      Caption         =   "PaintBrush"
      Height          =   1335
      Left            =   4320
      TabIndex        =   2
      Top             =   360
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Microsoft Excel "
      Height          =   1335
      Left            =   2280
      TabIndex        =   1
      Top             =   360
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "MicrosoftWord"
      Height          =   1335
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
x = Shell("c:\Archivos de Programa\Microsoft Office\Office\Winword.exe")
End Sub
Private Sub Command2_Click()
Shell "c:\Archivos de Programa\Microsoft Office\Office\excel.exe"
End Sub
Private Sub Command3_Click()
Shell "c:\Windows\Pbrush.exe"
End Sub
Private Sub Command4_Click()
End
End Sub
