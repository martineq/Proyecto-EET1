VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5580
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6900
   LinkTopic       =   "Form1"
   ScaleHeight     =   5580
   ScaleWidth      =   6900
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   4680
      TabIndex        =   11
      Top             =   3360
      Width           =   1695
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Salir"
      Height          =   615
      Left            =   2640
      TabIndex        =   10
      Top             =   3600
      Width           =   1815
   End
   Begin VB.DriveListBox Drive2 
      Height          =   315
      Left            =   3720
      TabIndex        =   9
      Top             =   120
      Width           =   1095
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Cambiar nombre"
      Height          =   375
      Left            =   4680
      TabIndex        =   7
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Borrar"
      Height          =   375
      Left            =   2760
      TabIndex        =   6
      Top             =   2880
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Copiar"
      Height          =   375
      Left            =   1080
      TabIndex        =   5
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Comparar"
      Height          =   375
      Left            =   2160
      TabIndex        =   4
      Top             =   2160
      Width           =   2535
   End
   Begin VB.FileListBox File2 
      Height          =   1650
      Left            =   5040
      TabIndex        =   3
      Top             =   120
      Width           =   1695
   End
   Begin VB.FileListBox File1 
      Height          =   1650
      Left            =   1440
      TabIndex        =   2
      Top             =   120
      Width           =   1575
   End
   Begin VB.DirListBox Dir2 
      Height          =   1215
      Left            =   3720
      TabIndex        =   1
      Top             =   600
      Width           =   1215
   End
   Begin VB.DirListBox Dir1 
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If File1.ListCount <> File2.ListCount Then
   MsgBox ("Los directorios son diferentes")
   Exit Sub
Else
   For i = 0 To File1.ListCount - 1
      If File1.List(i) <> File2.List(i) Then
           MsgBox ("Los directorios son diferentes")
           Exit Sub
      End If
      Next i
End If
  MsgBox ("Los directorios son iguales")
End Sub
Private Sub Command2_Click()
For i = 0 To File1.ListCount - 1
  If Right(Dir1, 1) = "\" Then
      o = Dir1 & File1.List(i)
  Else
      o = Dir1 & "\" & File1.List(i)
  End If
    If Right(Dir2, 1) = "\" Then
      de = Dir2 & File1.List(i)
  Else
      de = Dir2 & "\" & File1.List(i)
  End If
FileCopy o, de
Next i
Dir2 = ".."
Dir2.Refresh
End Sub
Private Sub Command3_click()
For i = 0 To File1.ListCount - 1
  If Right(Dir1, 1) = "\" Then
      v = Dir1 & File1.List(i)
  Else
      v = Dir1 & "\" & File1.List(i)
  End If
  File1.Refresh
  Kill v
Next i
d = Dir1
RmDir d
Dir1 = ".."
Dir1.Refresh
End Sub
Private Sub Command4_Click()
rv = Dir1
rn = rutasola(Dir1) & Text1.Text
MkDir rn
Dir1.Refresh
For i = 0 To File1.ListCount - 1
  If Right(Dir1, 1) = "\" Then
      rv = Dir1 & File1.List(i)
  Else
      rv = Dir1 & "\" & File1.List(i)
  End If
FileCopy rv, rn & "\" & File1.List(i)
Next i
For i = 0 To File1.ListCount - 1
  If Right(Dir1, 1) = "\" Then
      rv = Dir1 & File1.List(i)
  Else
      rv = Dir1 & "\" & File1.List(i)
  End If
  File1.Refresh
  Kill rv
Next i
RmDir Dir1
Dir1 = ".."
Dir1.Refresh
End Sub
Function rutasola(cadena As String) As String
  For i = Len(cadena) To 1 Step -1
    If Mid(cadena, i, 1) = "\" Then
       rutasola = Mid(cadena, 1, i)
       Exit For
    End If
  Next
End Function
Private Sub Command5_Click()
End
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
Private Sub Label1_Change()
Dir1 = Label1
End Sub

