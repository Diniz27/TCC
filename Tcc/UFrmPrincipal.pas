unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TFrmPrincipal = class(TForm)
    PnlPedido: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Panel3: TPanel;
    BtnPedido: TSpeedButton;
    procedure PedVendClick(Sender: TObject);
    procedure CadClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UFrmPedVend, UFrmCadCliente, UFrmLogin;

procedure TFrmPrincipal.BtnPedidoClick(Sender: TObject);
begin
  try
    PnlPedido.Hide;
    FrmPedVend := TFrmPedVend.Create(Self);
    FrmPedVend.Show;
  Except
    FrmPedVend.Free;
  end;
end;

procedure TFrmPrincipal.CadClienteClick(Sender: TObject);
begin
  try
    FrmCadCliente := TFrmCadCliente.Create(Self);
    FrmCadCliente.Show;
  except
    FrmCadCliente.Free;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  Try
    FrmLogin := TFrmLogin.Create(Self);
    FrmLogin.Show;
  Except
    FrmLogin.Free;
  End;
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
