VERSION 5.00
Begin VB.Form Form1 
   Caption         =   " "
   ClientHeight    =   5025
   ClientLeft      =   60
   ClientTop       =   390
   ClientWidth     =   6375
   LinkTopic       =   "Form1"
   ScaleHeight     =   5025
   ScaleWidth      =   6375
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List2 
      Height          =   1620
      Left            =   4200
      TabIndex        =   9
      Top             =   3120
      Width           =   1935
   End
   Begin VB.ListBox List1 
      Height          =   1620
      ItemData        =   "proyecto1.frx":0000
      Left            =   4080
      List            =   "proyecto1.frx":0002
      TabIndex        =   8
      Top             =   120
      Width           =   2055
   End
   Begin VB.FileListBox File2 
      Height          =   1065
      Left            =   2280
      Pattern         =   "*.txt"
      TabIndex        =   7
      Top             =   3600
      Width           =   1695
   End
   Begin VB.DriveListBox Drive2 
      Height          =   315
      Left            =   2280
      TabIndex        =   6
      Top             =   3120
      Width           =   1695
   End
   Begin VB.DirListBox Dir2 
      Height          =   1665
      Left            =   120
      TabIndex        =   5
      Top             =   3120
      Width           =   1935
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   2280
      TabIndex        =   4
      Top             =   120
      Width           =   1695
   End
   Begin VB.FileListBox File1 
      Height          =   1065
      Left            =   2280
      Pattern         =   "*.txt"
      TabIndex        =   3
      Top             =   600
      Width           =   1695
   End
   Begin VB.DirListBox Dir1 
      Height          =   1890
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "COMPARAR"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4200
      MaskColor       =   &H00FFFFFF&
      TabIndex        =   1
      Top             =   2160
      Width           =   2055
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   2160
      Width           =   3975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a  As String
Dim b As String
Dim v As String
Dim n As String
Dim c As String
Dim d As String
Private Sub Command1_Click()
c = List1.ListCount
d = List2.ListCount
If c <> d Then
Label1 = " archivos diferentes"
Exit Sub
End If
For i = 0 To c - 1
  If List1.List(i) <> List2.List(i) Then
   MsgBox "Se encontraron diferencias en la linea " & i, vbInformation
   Label1 = " archivos diferentes"
   Exit Sub
  End If
Next i
    Label1 = " archivos iguales"
End Sub
Private Sub Dir1_Change()
File1 = Dir1
End Sub
Private Sub Dir2_Change()
File2 = Dir2
End Sub
Private Sub Drive1_Change()
Dir1 = Drive1
End Sub
Private Sub Drive2_Change()
Dir2 = Drive2
End Sub
Private Sub File1_DblClick()
List1.Clear
If Right(Dir1, 1) = "\" Then
   v = Dir1 & File1
Else
   v = Dir1 & "\" & File1
End If
Open v For Input As #1
While Not EOF(1)
Line Input #1, a
List1.AddItem a
Wend
Close #1
End Sub
Private Sub File2_DblClick()
List2.Clear
If Right(Dir2, 1) = "\" Then
   n = Dir2 & File2
Else
   n = Dir2 & "\" & File2
End If
Open n For Input As #2
While Not EOF(2)
Line Input #2, b
List2.AddItem b
Wend
Close #2
End Sub

