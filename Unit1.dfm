object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Bloco de Notas'
  ClientHeight = 441
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Memo1: TMemo
    Left = 8
    Top = 45
    Width = 396
    Height = 388
    TabOrder = 0
  end
  object btnNew: TButton
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 76
    Height = 31
    Caption = 'Novo'
    TabOrder = 1
    OnClick = btnNewClick
  end
  object btnOpen: TButton
    AlignWithMargins = True
    Left = 88
    Top = 8
    Width = 76
    Height = 31
    Caption = 'Abrir'
    TabOrder = 2
    OnClick = btnOpenClick
  end
  object btnSave: TButton
    AlignWithMargins = True
    Left = 168
    Top = 8
    Width = 76
    Height = 31
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btnSaveClick
  end
  object btnSaveAs: TButton
    AlignWithMargins = True
    Left = 248
    Top = 8
    Width = 76
    Height = 31
    Caption = 'Salvar como'
    TabOrder = 4
    OnClick = btnSaveAsClick
  end
  object btnExit: TButton
    AlignWithMargins = True
    Left = 328
    Top = 8
    Width = 76
    Height = 31
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnExitClick
  end
  object OpenDialog1: TOpenDialog
    Left = 232
    Top = 104
  end
  object SaveDialog1: TSaveDialog
    Left = 312
    Top = 104
  end
end
