unit UDmLogin;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDmLogin = class(TDataModule)
    QrLogin: TADOQuery;
    QrLoginid_usuarios: TIntegerField;
    QrLoginnm_usuarios: TWideStringField;
    QrLoginsenha: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmLogin: TDmLogin;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
