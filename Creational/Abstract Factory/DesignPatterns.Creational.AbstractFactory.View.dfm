object ViewAbstractFactory: TViewAbstractFactory
  Left = 0
  Top = 0
  Caption = 'Example of Abstract Factory'
  ClientHeight = 207
  ClientWidth = 276
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
    Width = 276
    Height = 207
    Align = alClient
    TabOrder = 0
    object RadioGroupCarModels: TRadioGroup
      Left = 16
      Top = 16
      Width = 249
      Height = 57
      Caption = 'Car Models'
      Columns = 3
      Items.Strings = (
        'Volkswagen'
        'Toyota'
        'Nissan')
      TabOrder = 0
      OnClick = RadioGroupCarModelsClick
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 79
      Width = 249
      Height = 114
      Caption = 'Info'
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 24
        Width = 27
        Height = 13
        Caption = 'Name'
      end
      object Label2: TLabel
        Left = 10
        Top = 51
        Width = 25
        Height = 13
        Caption = 'Color'
      end
      object Label3: TLabel
        Left = 10
        Top = 76
        Width = 22
        Height = 13
        Caption = 'Year'
      end
      object Edit1: TEdit
        Left = 48
        Top = 21
        Width = 185
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 48
        Top = 48
        Width = 185
        Height = 21
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 48
        Top = 75
        Width = 185
        Height = 21
        TabOrder = 2
      end
    end
  end
end
