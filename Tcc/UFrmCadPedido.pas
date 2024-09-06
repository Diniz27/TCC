unit UFrmCadPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Data.Win.ADODB,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadPedido = class(TFrmPadrao)
    PageControl1: TPageControl;
    TabCliente: TTabSheet;
    TabProduto: TTabSheet;
    TabPagamento: TTabSheet;
    PnlCliente: TPanel;
    BtnCliente: TSpeedButton;
    PnlProduto: TPanel;
    BtnProduto: TSpeedButton;
    PnlPagamento: TPanel;
    BtnPagamento: TSpeedButton;
    PnlCancela: TPanel;
    BtnCancela: TSpeedButton;
    PnlConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    Panel1: TPanel;
    Label8: TLabel;
    Label3: TLabel;
    EdtPedido: TDBEdit;
    Label5: TLabel;
    EdtDataCad: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BtnPesq: TSpeedButton;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
    procedure BtnPagamentoClick(Sender: TObject);
    procedure TabClienteShow(Sender: TObject);
    procedure TabPagamentoShow(Sender: TObject);
    procedure TabProdutoShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPedido: TFrmCadPedido;

implementation

{$R *.dfm}

procedure TFrmCadPedido.BtnClienteClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageindex := 0;
end;

procedure TFrmCadPedido.BtnPagamentoClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageindex := 2;
end;

procedure TFrmCadPedido.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageindex := 1;
end;

procedure TFrmCadPedido.FormShow(Sender: TObject);
var
  i :Integer;
begin
  inherited;
  for I := 0 to PageControl1.PageCount - 1 do
  begin
    PageControl1.Pages[i].TabVisible := False;
  end;

  PageControl1.ActivePageIndex := 0;

end;

procedure TFrmCadPedido.TabClienteShow(Sender: TObject);
begin
  inherited;
  BtnCliente.Enabled := False;
  BtnProduto.Enabled := True;
  BtnPagamento.Enabled := True;
end;

procedure TFrmCadPedido.TabPagamentoShow(Sender: TObject);
begin
  inherited;
  BtnCliente.Enabled := True;
  BtnProduto.Enabled := True;
  BtnPagamento.Enabled := False;
end;

procedure TFrmCadPedido.TabProdutoShow(Sender: TObject);
begin
  inherited;
  BtnCliente.Enabled := True;
  BtnProduto.Enabled := False;
  BtnPagamento.Enabled := True;
end;

end.
