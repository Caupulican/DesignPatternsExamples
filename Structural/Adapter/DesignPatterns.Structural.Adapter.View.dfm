object AdapterView: TAdapterView
  Left = 0
  Top = 0
  Caption = 'Example of Adapter'
  ClientHeight = 96
  ClientWidth = 323
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
    Width = 323
    Height = 96
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 96
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 321
      Height = 13
      Align = alTop
      Alignment = taCenter
      ExplicitWidth = 3
    end
    object BtnRequest: TButton
      Left = 104
      Top = 56
      Width = 89
      Height = 25
      Caption = 'Test your word'
      TabOrder = 0
      OnClick = BtnRequestClick
    end
    object Edit1: TEdit
      Left = 104
      Top = 29
      Width = 89
      Height = 21
      TabOrder = 1
    end
  end
end
