object ProxyView: TProxyView
  Left = 0
  Top = 0
  Caption = 'Proxy'
  ClientHeight = 104
  ClientWidth = 196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 196
    Height = 104
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 96
    ExplicitTop = 8
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 194
      Height = 20
      Align = alTop
      Alignment = taCenter
    end
    object Label2: TLabel
      Left = 57
      Top = 27
      Width = 37
      Height = 13
      Caption = 'Amount'
    end
    object Button1: TButton
      Left = 57
      Top = 69
      Width = 75
      Height = 25
      Caption = 'Pay'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 57
      Top = 42
      Width = 75
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
  end
end
