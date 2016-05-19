object frmTeste: TfrmTeste
  Left = 0
  Top = 0
  Caption = 'Form Teste'
  ClientHeight = 290
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Ok: TButton
    Left = 136
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 0
  end
  object Cancel: TButton
    Left = 320
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Button1: TButton
    Left = 184
    Top = 216
    Width = 75
    Height = 25
    Caption = 'var variant'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 216
    Width = 75
    Height = 25
    Caption = 'array variant'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 432
    Top = 216
    Width = 75
    Height = 25
    Caption = 'array variant 2'
    TabOrder = 4
    OnClick = Button3Click
  end
end
