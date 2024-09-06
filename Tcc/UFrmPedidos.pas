unit UFrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Data.Win.ADODB,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TFrmPedidos = class(TFrmPadrao)
    PnlPesq: TPanel;
    BtnPesq: TSpeedButton;
    CbTipo: TComboBox;
    EdtPesq: TEdit;
    PnlNovo: TPanel;
    BtnNovo: TSpeedButton;
    DBGrid1: TDBGrid;
    EdtDtInicial: TDBEdit;
    EdtDtFinal: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidos: TFrmPedidos;

implementation

{$R *.dfm}

uses UFrmPrincipal, UFrmCadPedido;

procedure TFrmPedidos.BtnNovoClick(Sender: TObject);
begin
  inherited;
  try
    FrmCadPedido := TFrmCadPedido.Create(self);
    FrmCadPedido.Show;
  except
    FrmCadPedido.Free;
  end;
end;

procedure TFrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPrincipal.MostrarPainel;
end;

end.
