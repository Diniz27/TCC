program Projeto_Empresa;

uses
  Vcl.Forms,
  UFrmPedVend in 'UFrmPedVend.pas' {FrmPedVend},
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmPadrao in 'UFrmPadrao.pas' {FrmPadrao},
  UFrmPessoas in 'UFrmPessoas.pas' {FrmPessoas},
  UFrmUsuarios in 'UFrmUsuarios.pas' {FrmUsuarios},
  UFrmLogin in 'UFrmLogin.pas' {FrmLogin},
  UFrmProdutos in 'UFrmProdutos.pas' {FrmProdutos},
  UFrmCadProduto in 'UFrmCadProduto.pas' {FrmCadProduto},
  UFrmCadPessoas in 'UFrmCadPessoas.pas' {FrmCadPessoas},
  UValidaDados in 'UValidaDados.pas',
  UFrmPedidos in 'UFrmPedidos.pas' {FrmPedidos},
  UFrmCadPedido in 'UFrmCadPedido.pas' {FrmCadPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gestão Empresarial';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
