VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6060
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7710
   LinkTopic       =   "Form1"
   ScaleHeight     =   6060
   ScaleWidth      =   7710
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List2 
      Height          =   1035
      Left            =   3240
      TabIndex        =   5
      Top             =   4200
      Width           =   3375
   End
   Begin VB.FileListBox File1 
      Height          =   1650
      Left            =   120
      TabIndex        =   4
      Top             =   2280
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   360
      TabIndex        =   3
      Top             =   480
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "BUSCAR"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   1440
      Width           =   2295
   End
   Begin VB.ListBox List1 
      Height          =   1620
      Left            =   3360
      TabIndex        =   1
      Top             =   2280
      Width           =   3735
   End
   Begin VB.DirListBox Dir1 
      Height          =   1440
      Left            =   3360
      TabIndex        =   0
      Top             =   480
      Width           =   3735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
File1.Pattern = Text1.Text

Dir1 = "\"
List1.AddItem Dir1
x = 0
c = List1.ListCount
While x <> c
   For i = 0 To Dir1.ListCount - 1
      a = Dir1.List(i)
      List1.AddItem (a)
   Next i
   x = x + 1
   Dir1 = List1.List(x)
   c = List1.ListCount
Wend

For i = 0 To List1.ListCount - 1
   File1.Path = List1.List(i)
   If File1.ListCount > 0 Then
      For s = 0 To File1.ListCount - 1
           List2.AddItem (File1.List(s))
      Next
    End If
Next i
    
    
         
   
   
   
   
End Sub








