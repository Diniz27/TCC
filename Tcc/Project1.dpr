program Project1;

uses
  Vcl.Forms,
  UFrmPedVend in 'UFrmPedVend.pas' {FrmPedVend},
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCadCliente in 'UFrmCadCliente.pas' {FrmCadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gestão Empresarial';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
//  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  //  Application.CreateForm(TFrmPedVend, FrmPedVend);
  Application.Run;
end.
