object DmPrincipal: TDmPrincipal
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object Connection: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=MySQL;Initial Catalog=sistema'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 32
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'select * from usuarios')
    Left = 112
    Top = 8
  end
end
