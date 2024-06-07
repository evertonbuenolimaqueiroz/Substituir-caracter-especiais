object FCarEsp: TFCarEsp
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 453
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnmemoria: TButton
    Left = 254
    Top = 383
    Width = 75
    Height = 25
    Caption = 'Memoria'
    TabOrder = 0
    OnClick = btnmemoriaClick
  end
  object mmmemoria: TMemo
    Left = 8
    Top = 248
    Width = 321
    Height = 129
    TabOrder = 1
  end
  object mmtexto: TMemo
    Left = 8
    Top = 72
    Width = 321
    Height = 129
    TabOrder = 2
  end
  object btnchange: TButton
    Left = 160
    Top = 207
    Width = 169
    Height = 25
    Caption = 'Change'
    TabOrder = 3
    OnClick = btnchangeClick
  end
  object edttexto: TEdit
    Left = 8
    Top = 45
    Width = 321
    Height = 21
    TabOrder = 4
  end
end
