unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.Buttons,
  Vcl.CustomizeDlg, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.Win.ADODB{, RLReport};

type
  TFrmPrincipal = class(TForm)
    PnlTopo: TPanel;
    ImageList1: TImageList;
    BtnConf: TSpeedButton;
    BtnUsuario: TSpeedButton;
    Image3: TImage;
    Label3: TLabel;
    Panel1: TPanel;
    Panel5: TPanel;
    PnlPedido: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Panel3: TPanel;
    BtnPedido: TSpeedButton;
    PnlProduto: TPanel;
    Label2: TLabel;
    Image2: TImage;
    Panel2: TPanel;
    BtnProduto: TSpeedButton;
    PnlPessoa: TPanel;
    Label4: TLabel;
    Image4: TImage;
    Panel4: TPanel;
    BtnCliente: TSpeedButton;
//    RLDraw1: TRLDraw;
    procedure PedVendClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPedidoClick(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtnUsuarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure EsconderPainel;
    procedure MostrarPainel;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UFrmPedVend, UFrmCadCliente, UFrmLogin, UFrmCliente, UFrmUsuarios,
  UDmPrincipal, UFrmProdutos, UFrmPessoas, UFrmPedidos;

procedure TFrmPrincipal.BtnClienteClick(Sender: TObject);
begin
  try
    EsconderPainel;
    FrmPessoas := TFrmPessoas.Create(Self);
    FrmPessoas.Show;
  except
    FrmPessoas.Free;
  end;
end;

procedure TFrmPrincipal.BtnPedidoClick(Sender: TObject);
begin
  try
    EsconderPainel;
    FrmPedidos := TFrmPedidos.Create(Self);
    FrmPedidos.Show;
  Except
    FrmPedidos.Free;
  end;
end;

procedure TFrmPrincipal.BtnProdutoClick(Sender: TObject);
begin
  Try
    EsconderPainel;
    FrmProdutos := TFrmProdutos.Create(Self);
    FrmProdutos.Show;
  except
    FrmProdutos.Free;
  End;
end;

procedure TFrmPrincipal.BtnUsuarioClick(Sender: TObject);
begin
  try
    FrmUsuarios := TFrmUsuarios.Create(Self);
    FrmUsuarios.Show;
  finally

  end;
end;

procedure TFrmPrincipal.EsconderPainel;
var
  i: Integer;
  Panel: TPanel;
begin
  for i := 0 to ControlCount - 1 do
  begin
    if Controls[i] is TPanel then
    begin
      Panel := TPanel(Controls[i]);
      Panel.Visible := False;
    end;
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  dmPrincipal := TdmPrincipal.Create (Application);
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
var
  CenterX, CenterY: Integer;
begin
  // Calcula o centro do painel
  CenterX := Panel1.Width div 2;
  CenterY := Panel1.Height div 2;
  // Define a altura da linha (ajusta considerando o painel superior)
//  RLDraw1.Height := Panel1.Height - (PnlTopo.Height * 2);
  // Centraliza a linha horizontalmente
//  RLDraw1.Left := CenterX - (RLDraw1.Width div 2); // Centraliza horizontalmente
  // Define a posição verticalmente no centro
//  RLDraw1.Top := CenterY - (RLDraw1.Height div 2);

end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
var
  CenterX, CenterY: Integer;
begin
  Panel5.Left := (Panel1.Width div 4) - (Panel5.Width div 2);

  Panel5.Top := (Panel1.Height - Panel5.Height) div 2;

//    // Calcula o centro do painel
  CenterX := Panel1.Width div 2;
  CenterY := Panel1.Height div 2;
//
//  // Define a altura da linha (ajusta considerando o painel superior)
//  RLDraw1.Height := Panel1.Height - (PnlTopo.Height * 2);
//
//  // Centraliza a linha horizontalmente
//  RLDraw1.Left := CenterX - (RLDraw1.Width div 2); // Centraliza horizontalmente
//
//  // Define a posição verticalmente no centro
//  RLDraw1.Top := CenterY - (RLDraw1.Height div 2);
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  Try
    FrmLogin := TFrmLogin.Create(Self);
    FrmLogin.ShowModal;
  finally
    FrmLogin.Free;
  End;
end;


procedure TFrmPrincipal.MostrarPainel;
var
  i: Integer;
  Panel: TPanel;
begin
  for i := 0 to ControlCount - 1 do
  begin
    if Controls[i] is TPanel then
    begin
      Panel := TPanel(Controls[i]);
      Panel.Visible := True;
    end;
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
