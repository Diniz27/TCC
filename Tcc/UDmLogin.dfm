object DmLogin: TDmLogin
  Height = 480
  Width = 640
  object QrLogin: TADOQuery
    Connection = DmPrincipal.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Left = 72
    Top = 64
    object QrLoginid_usuarios: TIntegerField
      FieldName = 'id_usuarios'
    end
    object QrLoginnm_usuarios: TWideStringField
      FieldName = 'nm_usuarios'
      Size = 45
    end
    object QrLoginsenha: TWideStringField
      FieldName = 'senha'
      Size = 10
    end
  end
end
