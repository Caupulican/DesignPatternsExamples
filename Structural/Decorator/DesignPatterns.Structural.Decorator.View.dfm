object ViewDecorator: TViewDecorator
  Left = 0
  Top = 0
  Caption = 'Decorator'
  ClientHeight = 146
  ClientWidth = 388
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
    Width = 388
    Height = 146
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 208
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 386
      Height = 16
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 4
    end
    object Button1: TButton
      Left = 1
      Top = 120
      Width = 386
      Height = 25
      Align = alBottom
      Caption = 'Do Action'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitTop = 121
    end
  end
end
