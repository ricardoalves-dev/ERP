object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 310
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 33
    Width = 300
    Height = 277
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 40
    Padding.Top = 30
    Padding.Right = 40
    Padding.Bottom = 30
    ParentBackground = False
    TabOrder = 0
    object labRecuperarSenha: TLabel
      AlignWithMargins = True
      Left = 45
      Top = 234
      Width = 210
      Height = 13
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 10
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
      ExplicitWidth = 97
    end
    object pnlTitulo: TPanel
      Left = 40
      Top = 30
      Width = 220
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'E R P - L O G I N'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      TabOrder = 0
    end
    object pnlBotao: TPanel
      Left = 40
      Top = 189
      Width = 220
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      Color = 16738931
      ParentBackground = False
      TabOrder = 1
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
        OnClick = btnAcessarClick
        ExplicitTop = 16
        ExplicitHeight = 22
      end
    end
    object edtUsuario: TEdit
      Left = 40
      Top = 110
      Width = 220
      Height = 25
      Alignment = taCenter
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
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
      TextHint = 'Senha'
    end
  end
  object pnlCliente: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object btnSair: TSpeedButton
      Left = 265
      Top = 5
      Width = 30
      Height = 23
      Cursor = crHandPoint
      Align = alRight
      OnClick = btnSairClick
      ExplicitLeft = 270
      ExplicitTop = 0
      ExplicitHeight = 25
    end
    object btnConfigurar: TSpeedButton
      Left = 235
      Top = 5
      Width = 30
      Height = 23
      Cursor = crHandPoint
      Align = alRight
      ExplicitLeft = 234
      ExplicitTop = 0
      ExplicitHeight = 25
    end
  end
end
