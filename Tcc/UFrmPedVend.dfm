object FrmPedVend: TFrmPedVend
  Left = 0
  Top = 0
  Caption = 'FrmPedVend'
  ClientHeight = 665
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  TextHeight = 15
  object PnlFiltro: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 665
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 71
      Height = 15
      Caption = 'C'#243'd. Produto'
    end
    object Label2: TLabel
      Left = 10
      Top = 72
      Width = 97
      Height = 15
      Caption = 'Descri'#231#227'o Produto'
    end
    object Label3: TLabel
      Left = 10
      Top = 136
      Width = 75
      Height = 15
      Caption = 'Acrescimo (+)'
    end
    object Label4: TLabel
      Left = 10
      Top = 200
      Width = 66
      Height = 15
      Caption = 'Desconto (-)'
    end
    object Label5: TLabel
      Left = 10
      Top = 264
      Width = 51
      Height = 15
      Caption = 'Obs. Item'
    end
    object Image1: TImage
      Left = 10
      Top = 411
      Width = 230
      Height = 230
    end
    object DBEdit1: TDBEdit
      Left = 10
      Top = 30
      Width = 70
      Height = 23
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 10
      Top = 93
      Width = 230
      Height = 23
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 10
      Top = 157
      Width = 230
      Height = 23
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 10
      Top = 221
      Width = 230
      Height = 23
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 10
      Top = 285
      Width = 230
      Height = 89
      TabOrder = 4
    end
  end
  object PnlProduto: TPanel
    Left = 250
    Top = 0
    Width = 753
    Height = 665
    Align = alClient
    TabOrder = 1
    DesignSize = (
      753
      665)
    object DBGrid1: TDBGrid
      Left = 15
      Top = 16
      Width = 725
      Height = 578
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object GroupBox1: TGroupBox
      Left = 15
      Top = 600
      Width = 725
      Height = 49
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'GroupBox1'
      TabOrder = 1
    end
  end
end
