program Project1;

uses
  Vcl.Forms,
  UFrmPedVend in 'UFrmPedVend.pas' {FrmPedVend},
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCadCliente in 'UFrmCadCliente.pas' {FrmCadCliente},
  UFrmLogin in 'UFrmLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gestão Empresarial';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
//  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
