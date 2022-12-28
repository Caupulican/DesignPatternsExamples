object ViewFacade: TViewFacade
  Left = 0
  Top = 0
  Caption = 'Facade'
  ClientHeight = 110
  ClientWidth = 272
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
    Width = 272
    Height = 110
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 80
    ExplicitTop = 48
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 1
      Top = 58
      Width = 270
      Height = 16
      Align = alTop
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 4
    end
    object Button1: TButton
      Left = 1
      Top = 84
      Width = 270
      Height = 25
      Align = alBottom
      Caption = 'Execute'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitTop = 80
      ExplicitWidth = 273
    end
    object rgCumpliment: TRadioGroup
      Left = 1
      Top = 1
      Width = 270
      Height = 57
      Align = alTop
      Caption = 'Select your Cumpliment'
      Columns = 3
      Items.Strings = (
        'Moning'
        'Afternoon'
        'Night')
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitWidth = 265
    end
  end
end
