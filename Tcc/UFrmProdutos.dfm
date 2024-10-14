inherited FrmProdutos: TFrmProdutos
  Caption = 'Central de Produtos'
  ClientWidth = 1042
  StyleElements = [seFont, seClient, seBorder]
  OnShow = FormShow
  ExplicitWidth = 1058
  TextHeight = 15
  inherited PnlTopo: TPanel
    Width = 1042
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1042
    inherited Label4: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
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
      Width = 64
      Caption = 'Produtos'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 64
    end
    inherited BtnClose: TSpeedButton
      Left = 968
      ExplicitLeft = 872
    end
  end
  inherited PnlCentral: TPanel
    Top = 122
    Width = 1042
    Height = 320
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 122
    ExplicitWidth = 1042
    ExplicitHeight = 320
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 1042
      Height = 320
      Align = alClient
      BorderStyle = bsNone
      DataSource = Ds
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id_produto'
          Title.Caption = 'C'#243'd. Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -14
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -14
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_produto'
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -14
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qn_estoque'
          Title.Caption = 'Qntd. Estoque'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -14
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_fornecedor'
          Title.Caption = 'Fornecedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -14
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_unimedida'
          Title.Caption = 'Unidade Medida'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -14
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_obs'
          Title.Caption = 'OBS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -14
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 300
          Visible = True
        end>
    end
  end
  object PnlPesq: TPanel [2]
    Left = 0
    Top = 65
    Width = 1042
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      1042
      57)
    object BtnPesquisa: TSpeedButton
      Left = 652
      Top = 15
      Width = 23
      Height = 27
      Anchors = [akTop, akRight]
      ImageIndex = 1
      Images = ImageList1
      Flat = True
      OnClick = BtnPesquisaClick
      ExplicitLeft = 660
    end
    object CbTipo: TComboBox
      Left = 16
      Top = 16
      Width = 153
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'C'#243'd.'
      Items.Strings = (
        'C'#243'd.'
        'Descri'#231#227'o')
    end
    object EdtPesq: TEdit
      Left = 192
      Top = 16
      Width = 457
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object PnlNovo: TPanel
      Left = 732
      Top = 10
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      Color = clHighlight
      ParentBackground = False
      TabOrder = 2
      object BtnNovo: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Novo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnNovoClick
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object PnlEditar: TPanel
      Left = 835
      Top = 10
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      Color = 5755391
      ParentBackground = False
      TabOrder = 3
      object BtnEditar: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Editar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnEditarClick
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object PnlExclui: TPanel
      Left = 937
      Top = 10
      Width = 97
      Height = 35
      Anchors = [akTop, akRight]
      Color = clMaroon
      ParentBackground = False
      TabOrder = 4
      object BtnExclui: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
        Height = 33
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Excluir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnExcluiClick
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object Ds: TDataSource [4]
    AutoEdit = False
    DataSet = Qry
    Left = 496
    Top = 10
  end
  object Qry: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produtos'
      'order by id_produto'
      '')
    Left = 544
    Top = 16
  end
end
