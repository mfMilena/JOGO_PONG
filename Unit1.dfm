object campo: Tcampo
  Left = 192
  Top = 125
  Width = 983
  Height = 562
  Caption = 'CAMPO'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object bola: TPanel
    Left = 464
    Top = 229
    Width = 25
    Height = 25
    TabOrder = 0
  end
  object Player1: TPanel
    Left = 925
    Top = 189
    Width = 25
    Height = 137
    TabOrder = 1
  end
  object Player2: TPanel
    Left = 12
    Top = 192
    Width = 25
    Height = 137
    TabOrder = 2
  end
  object moverDireita: TTimer
    Interval = 18
    OnTimer = moverDireitaTimer
    Left = 928
    Top = 480
  end
  object moverEsquerda: TTimer
    Interval = 18
    OnTimer = moverEsquerdaTimer
    Left = 16
    Top = 480
  end
end
