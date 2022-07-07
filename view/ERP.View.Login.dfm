object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 304
  ClientWidth = 300
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
  object pnlClient: TPanel
    Left = 0
    Top = 25
    Width = 300
    Height = 279
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 40
    Padding.Top = 40
    Padding.Right = 40
    Padding.Bottom = 40
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 41
    ExplicitTop = 216
    ExplicitWidth = 217
    ExplicitHeight = 41
    object labRecuperarSenha: TLabel
      AlignWithMargins = True
      Left = 45
      Top = 226
      Width = 210
      Height = 13
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Align = alBottom
      Alignment = taCenter
      Caption = 'Esqueceu a senha?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 40
      ExplicitTop = 230
      ExplicitWidth = 97
    end
    object pnlTitulo: TPanel
      Left = 40
      Top = 40
      Width = 220
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'L O G I N '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 125
      ExplicitTop = 216
      ExplicitWidth = 217
    end
    object pnlBotao: TPanel
      Left = 40
      Top = 186
      Width = 220
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      Color = 16738931
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 211
      object btnAcessar: TSpeedButton
        Left = 0
        Top = 0
        Width = 220
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Caption = 'A C E S S A R'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitTop = 16
        ExplicitHeight = 22
      end
    end
    object edtUsuario: TEdit
      Left = 40
      Top = 110
      Width = 220
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = 'Usu'#225'rio'
    end
    object edtSenha: TEdit
      Left = 40
      Top = 141
      Width = 220
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TextHint = 'Senha'
    end
  end
  object pnlCliente: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnSair: TSpeedButton
      Left = 270
      Top = 0
      Width = 30
      Height = 25
      Cursor = crHandPoint
      Align = alRight
    end
    object btnConfigurar: TSpeedButton
      Left = 240
      Top = 0
      Width = 30
      Height = 25
      Cursor = crHandPoint
      Align = alRight
      ExplicitLeft = 234
    end
  end
end
