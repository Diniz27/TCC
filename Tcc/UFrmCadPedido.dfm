inherited FrmCadPedido: TFrmCadPedido
  Caption = 'FrmCadPedido'
  ClientHeight = 569
  ClientWidth = 1024
  StyleElements = [seFont, seClient, seBorder]
  OnShow = FormShow
  ExplicitWidth = 1040
  ExplicitHeight = 608
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 1024
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1024
    inherited Label4: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label2: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited BtnClose: TSpeedButton
      Left = 954
      ExplicitLeft = 954
    end
  end
  inherited PnlCentral: TPanel
    Width = 1024
    Height = 504
    Color = clWhite
    Font.Color = clWhite
    ParentBackground = False
    ParentFont = False
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1024
    ExplicitHeight = 504
    object PageControl1: TPageControl
      Left = 0
      Top = 46
      Width = 1024
      Height = 458
      ActivePage = TabCliente
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object TabCliente: TTabSheet
        Caption = 'TabCliente'
        OnShow = TabClienteShow
        object Label8: TLabel
          Left = 19
          Top = 79
          Width = 118
          Height = 20
          Caption = 'Dados do Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1016
          Height = 73
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            Left = 5
            Top = 11
            Width = 75
            Height = 17
            Caption = 'Cod. Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowFrame
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 108
            Top = 11
            Width = 76
            Height = 17
            Caption = 'Data Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowFrame
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 215
            Top = 11
            Width = 80
            Height = 17
            Caption = 'Data Entrega'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowFrame
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BtnPesq: TSpeedButton
            Left = 306
            Top = 30
            Width = 23
            Height = 27
            ImageIndex = 1
            Images = ImageList1
            Flat = True
          end
          object Label7: TLabel
            Left = 343
            Top = 11
            Width = 136
            Height = 17
            Caption = 'Data / Hora Digita'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowFrame
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 497
            Top = 9
            Width = 38
            Height = 17
            Caption = 'Status'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowFrame
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdtPedido: TDBEdit
            Left = 5
            Top = 32
            Width = 90
            Height = 25
            Color = cl3DLight
            DataField = 'id_produto'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object EdtDataCad: TDBEdit
            Left = 108
            Top = 32
            Width = 90
            Height = 25
            DataField = 'dt_cadastro'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 215
            Top = 32
            Width = 90
            Height = 25
            DataField = 'dt_cadastro'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit3: TDBEdit
            Left = 343
            Top = 32
            Width = 136
            Height = 25
            DataField = 'dt_cadastro'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit2: TDBEdit
            Left = 497
            Top = 32
            Width = 120
            Height = 25
            DataField = 'dt_cadastro'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 105
          Width = 1016
          Height = 323
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
        end
      end
      object TabProduto: TTabSheet
        Caption = 'TabProduto'
        ImageIndex = 1
        OnShow = TabProdutoShow
      end
      object TabPagamento: TTabSheet
        Caption = 'TabPagamento'
        ImageIndex = 2
        OnShow = TabPagamentoShow
      end
    end
    object PnlCliente: TPanel
      Left = 4
      Top = 6
      Width = 122
      Height = 35
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object BtnCliente: TSpeedButton
        Left = 1
        Top = 1
        Width = 120
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Dados Cliente'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnClienteClick
        ExplicitLeft = -23
        ExplicitTop = 8
        ExplicitWidth = 95
      end
    end
    object PnlProduto: TPanel
      Left = 132
      Top = 6
      Width = 122
      Height = 35
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object BtnProduto: TSpeedButton
        Left = 1
        Top = 1
        Width = 120
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Produtos'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnProdutoClick
        ExplicitLeft = -23
        ExplicitTop = 8
        ExplicitWidth = 95
      end
    end
    object PnlPagamento: TPanel
      Left = 260
      Top = 6
      Width = 122
      Height = 35
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      object BtnPagamento: TSpeedButton
        Left = 1
        Top = 1
        Width = 120
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Pagamento'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnPagamentoClick
        ExplicitLeft = -23
        ExplicitTop = 8
        ExplicitWidth = 95
      end
    end
    object PnlCancela: TPanel
      Left = 927
      Top = 6
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      ParentBackground = False
      TabOrder = 4
      object BtnCancela: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object PnlConfirma: TPanel
      Left = 824
      Top = 5
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      Color = clHighlight
      ParentBackground = False
      TabOrder = 5
      object BtnConfirma: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Confirmar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
end
