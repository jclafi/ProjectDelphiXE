object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Testes'
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
  object LabelComponenteVisual1: TLabelComponenteVisual
    Left = 256
    Top = 85
    Width = 119
    Height = 13
    Caption = 'LabelComponenteVisual1'
    BooTeste = False
  end
  object Button1: TButton
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Objetos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 80
    Width = 75
    Height = 25
    Caption = 'DLL Est'#225'tica'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 128
    Width = 75
    Height = 25
    Caption = 'DLL Din'#226'mica'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Exce'#231#227'o'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 32
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Form'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 144
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Herda'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 144
    Top = 128
    Width = 75
    Height = 25
    Caption = 'dll Din'#226'mica 2'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 256
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Exce'#231#227'o'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 360
    Top = 224
    Width = 75
    Height = 25
    Caption = 'TThread'
    TabOrder = 8
    OnClick = Button9Click
  end
  object Edit21: TEdit2
    Left = 344
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'Edit21'
  end
  object Button10: TButton
    Left = 144
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Visual'
    TabOrder = 10
    OnClick = Button10Click
  end
  object ComponentNaoVisual1: TComponentNaoVisual
    TesteNaoVisual = False
    Left = 296
    Top = 24
  end
end