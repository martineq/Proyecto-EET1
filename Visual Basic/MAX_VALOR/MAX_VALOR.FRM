VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Maximo Valor"
   ClientHeight    =   4170
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5145
   LinkTopic       =   "Form1"
   ScaleHeight     =   4170
   ScaleWidth      =   5145
   StartUpPosition =   3  'Windows Default
   Begin VB.FileListBox File1 
      Height          =   480
      Left            =   240
      TabIndex        =   6
      Top             =   840
      Width           =   1575
   End
   Begin VB.DirListBox Dir1 
      Height          =   540
      Left            =   240
      TabIndex        =   5
      Top             =   120
      Width           =   1575
   End
   Begin VB.ListBox List2 
      Height          =   2985
      Left            =   3720
      TabIndex        =   4
      Top             =   600
      Width           =   1095
   End
   Begin VB.ListBox List1 
      Height          =   3180
      Left            =   2040
      TabIndex        =   3
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton btnsalir 
      Caption         =   "salir"
      Height          =   555
      Left            =   360
      TabIndex        =   2
      Top             =   3240
      Width           =   1650
   End
   Begin VB.CommandButton btnmaximo 
      Caption         =   "maximo valor"
      Height          =   555
      Left            =   240
      TabIndex        =   1
      Top             =   2520
      Width           =   1650
   End
   Begin VB.CommandButton btnagregar 
      Caption         =   "agregar"
      Height          =   525
      Left            =   240
      TabIndex        =   0
      Top             =   1680
      Width           =   1635
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnagregar_Click()
    If txtagregar.Text = "" Then
        MsgBox "ingrese algun valor numerico", 64, "agregar"
        txtagregar.SetFocus
        Exit Sub
    End If

    If IsNumeric(txtagregar.Text) = False Then
        MsgBox "ingrese un valor numerico", 64, "ingreso"
        txtagregar.Text = ""
        txtagregar.SetFocus
    Exit Sub
    End If

List1.AddItem txtagregar.Text
txtagregar.Text = ""
txtagregar.SetFocus

End Sub

Private Sub btnmaximo_Click()
    Dim i As Integer
    Dim numero As Integer
    Dim maximo As Integer

If List1.ListCount = 0 Then
    MsgBox "la lista esta vacia", vbCritical, "lista vacia"
    Exit Sub
End If

maximo = List1.List(0)

For i = 0 To List1.ListCount - 1
    numero = List1.List(i)
    If numero > maximo Then
        maximo = numero
    End If
 Next
 MsgBox "maximo" & maximo
 End Sub
