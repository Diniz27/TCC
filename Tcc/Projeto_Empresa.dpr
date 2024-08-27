program Projeto_Empresa;

uses
  Vcl.Forms,
  UFrmPedVend in 'UFrmPedVend.pas' {FrmPedVend},
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmPadrao in 'UFrmPadrao.pas' {FrmPadrao},
  UFrmCliente in 'UFrmCliente.pas' {FrmCliente},
  UFrmCadCliente in 'UFrmCadCliente.pas' {FrmCadCliente},
  UFrmUsuarios in 'UFrmUsuarios.pas' {FrmUsuarios},
  UFrmLogin in 'UFrmLogin.pas' {FrmLogin},
  UFrmProdutos in 'UFrmProdutos.pas' {FrmProdutos},
  UFrmCadProduto in 'UFrmCadProduto.pas' {FrmCadProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gestão Empresarial';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
