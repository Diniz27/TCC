unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Vendas1: TMenuItem;
    Impresso1: TMenuItem;
    PedVend: TMenuItem;
    Cadastro1: TMenuItem;
    CadCliente: TMenuItem;
    Rel: TMenuItem;
    CadProduto: TMenuItem;
    procedure PedVendClick(Sender: TObject);
    procedure CadClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UFrmPedVend, UFrmCadCliente;

procedure TFrmPrincipal.CadClienteClick(Sender: TObject);
begin
  try
    FrmCadCliente := TFrmCadCliente.Create(Self);
    FrmCadCliente.Show;
  except
    FrmCadCliente.Free;
  end;
end;

procedure TFrmPrincipal.PedVendClick(Sender: TObject);
begin
  Try
    FrmPedVend := TFrmPedVend.Create(Self);
    FrmPedVend.Show;
  except
    FrmPedVend.Free;
  End;
end;

end.
