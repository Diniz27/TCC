inherited FrmCadProduto: TFrmCadProduto
  Caption = 'Central Cadastro de Produtos'
  ClientHeight = 542
  ClientWidth = 1069
  OnCreate = FormCreate
  ExplicitWidth = 1081
  ExplicitHeight = 580
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 1069
    ExplicitWidth = 834
    inherited Image4: TImage
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
        003208060000001E3F88B1000000097048597300000B1300000B1301009A9C18
        000003F74944415478DAED9959A84E5114C7D767CCFC40B88644C60C65888C21
        641EAE21F35886078588CC949988171E642EA40C99335C53648A321679C1F560
        C8BDB866FE7F6B9DEEE9DCE3FB8E21E77CFA56FDBADF3EE3FEEFBDD6DAEBEE13
        93FFC462FFF87DF9C03C50054C0039C928A418D8017A59FB38E8093E4455487E
        B01C540623C13B90060E8026E025780F2A80DD6030F8123521749D4D60B8B50F
        81D9609FA83B3D04DDC157701694035BC028F02D2A422862A3E82CBC069F4169
        EB34CF9D07BDC10BBBBE3138094A813560721842E83EF3C17450D0732E1B74B6
        DF27401170133493BCF1D00A1C034503BEF706680A3EFD0D21654483B693CF39
        C6433790616DBAD15E133E46D4EDBCD6011C048503BE7F0A58FDA7425A880668
        45F0040C047DECE139D6F1539E7BC681F5368A3D4467C06B7DC12E51171C0D36
        DBF1F2E034A80D1E834A20CBDA99BF2B642C58070AD9880F0213C14CF011A48B
        06B79F2D047344DDAE2DB8EE73CD3013C0A067263B231A4375C17DD0DE666280
        A8470CFD5521254583B89F68E02E020BAC738E08CECAE138CF88D933989D9E89
        CEEC239FEB38306B456389335E0DDC03EDEC3E7AC25D50DC8E9D092AA41ED803
        6A81E7366A474DC85C5177E90FF607189002A26B49171BE196929BC1DCB604CC
        B0DF6E118E4D052BC02DD050343BC61532046C105D91AF8A4EE9231340215CC4
        38BD3B0388708CD98999AC39B82CEA2E6F5DE7B9AE78DDE9A9CF805C030DC415
        F87E42983D98D7C75B9B533D4DD485E84A8B7E53846365C105505D7426FBDAF3
        DC81ED37136E6B2B9A54B2EDFA4CAF10A6C94BA2A5445896488463DB45BDE647
        E07B857094B7852882C6F85816E0BA34135D82C2DD42381B77404D6BFFEB12DF
        A9B57CD7899F182B8BA5E09ABBB3CC485B5DEDB084D0F2AC133EE68EA92B4E67
        391BCCCF352220840527D72E66AC8C00227EC494D35996DD2CA71F8866933085
        B00A664ABD2DBA4E780B44DFECC6CE322F3336381B5CEC9CCA359E10AEAC5C90
        AA04EC244BF8D60185B09A6609535F34EDAF4C24C2E9EC08C92DD2DCF637859C
        036D020A89D9B519E00DA8235AAEC45D6778D35D3B498B826B39EFE532C08067
        553C49122C96BC89D3CEFFE498C6982D3E791E189610679D60E03B25BC733CCF
        62190BF0C0B084D0584BAD0AD0E7C80B6122624DC5C2B551320B097C3E252425
        2425242524524258126527BB10B6B929C8EDA82BA25BA64929C4D9F07865221E
        24A3908EE0881DE347A19FED64465A4855515762413B0B2C8E7773548530B82F
        8AEE74F22351BA24F810144521DC91E7C61F773659C6F3BB4A56A29BA328846E
        9430B89341C857FBCB6F298783DE1C4521B484C1FD2B42C2B240C11D4408773C
        5A852482FB075D25B71CF923214969292151B39490A8D97F23E43BB84A112F66
        13D8980000000049454E44AE426082}
    end
    inherited Label2: TLabel
      Width = 119
      Caption = 'Cad. de Produtos'
      ExplicitWidth = 119
    end
    inherited BtnClose: TSpeedButton
      Left = 1003
    end
  end
  inherited PnlCentral: TPanel
    Width = 1069
    Height = 477
    ExplicitWidth = 834
    ExplicitHeight = 375
    object Label1: TLabel
      Left = 20
      Top = 21
      Width = 92
      Height = 20
      Caption = 'Dados Gerais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlCancela: TPanel
      Left = 970
      Top = 6
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      ParentBackground = False
      TabOrder = 0
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
        OnClick = BtnCancelaClick
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object PnlConfirma: TPanel
      Left = 867
      Top = 6
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      Color = clHighlight
      ParentBackground = False
      TabOrder = 1
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
        OnClick = BtnConfirmaClick
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 47
      Width = 1069
      Height = 430
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      object Label3: TLabel
        Left = 20
        Top = 11
        Width = 82
        Height = 17
        Caption = 'Cod. Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 412
        Top = 9
        Width = 69
        Height = 17
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 212
        Top = 9
        Width = 83
        Height = 17
        Caption = 'Unid. Medida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 20
        Top = 83
        Width = 184
        Height = 17
        Caption = 'Nome do Produto / Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 20
        Top = 169
        Width = 105
        Height = 17
        Caption = 'Valor Unitario R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 212
        Top = 169
        Width = 88
        Height = 17
        Caption = 'Qntd. Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 412
        Top = 169
        Width = 83
        Height = 17
        Caption = 'Peso Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 20
        Top = 251
        Width = 78
        Height = 17
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 20
        Top = 32
        Width = 121
        Height = 25
        Color = cl3DLight
        DataField = 'id_produto'
        DataSource = Ds
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
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 212
        Top = 32
        Width = 145
        Height = 25
        DataField = 'id_unimedida'
        DataSource = Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 20
        Top = 104
        Width = 537
        Height = 25
        DataField = 'nm_produto'
        DataSource = Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 20
        Top = 192
        Width = 121
        Height = 25
        DataField = 'vl_produto'
        DataSource = Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 212
        Top = 192
        Width = 121
        Height = 25
        DataField = 'qn_estoque'
        DataSource = Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 412
        Top = 192
        Width = 121
        Height = 25
        DataField = 'qn_peso'
        DataSource = Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 20
        Top = 272
        Width = 537
        Height = 25
        DataField = 'nm_obs'
        DataSource = Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 412
        Top = 32
        Width = 145
        Height = 25
        DataField = 'id_fornecedor'
        DataSource = Ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 560
    Top = 8
  end
  inherited Connection: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=MySql32;Initial Catalog=sistema'
  end
  object Qry: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id_prod'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 4
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select * from produtos where id_produto = :id_prod'
      'order by id_produto asc')
    Left = 472
    Top = 16
    object Qryid_produto: TIntegerField
      FieldName = 'id_produto'
    end
    object Qrynm_produto: TWideStringField
      FieldName = 'nm_produto'
      Size = 45
    end
    object Qryvl_produto: TFloatField
      FieldName = 'vl_produto'
      DisplayFormat = 'R$###,##0.00'
    end
    object Qryid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
    end
    object Qryid_unimedida: TIntegerField
      FieldName = 'id_unimedida'
    end
    object Qryqn_estoque: TIntegerField
      FieldName = 'qn_estoque'
    end
    object Qryqn_peso: TFloatField
      FieldName = 'qn_peso'
      DisplayFormat = '###.##0.00'
    end
    object Qrynm_obs: TWideStringField
      FieldName = 'nm_obs'
      Size = 45
    end
  end
  object Ds: TDataSource
    DataSet = Qry
    Left = 432
    Top = 16
  end
end
