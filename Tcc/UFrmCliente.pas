unit UFrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TFrmCliente = class(TFrmPadrao)
    PnlPesq: TPanel;
    BtnPesq: TSpeedButton;
    CbTipo: TComboBox;
    EdtPesq: TEdit;
    DBGrid1: TDBGrid;
    PnlEditar: TPanel;
    BtnEditar: TSpeedButton;
    PnlExclui: TPanel;
    BtnExclui: TSpeedButton;
    PnlNovo: TPanel;
    BtnNovo: TSpeedButton;
    Qry: TADOQuery;
    Ds: TDataSource;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

uses UFrmCadCliente, UFrmPrincipal, UFrmCadPessoas;

procedure TFrmCliente.BtnNovoClick(Sender: TObject);
begin
  inherited;
  try
    FrmCadPessoas := TFrmCadPessoas.Create(Self);
    FrmCadPessoas.Show;
  except
    FrmCadPessoas.Free;
  end;
end;

procedure TFrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    FrmPrincipal.MostrarPainel;
end;

procedure TFrmCliente.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Try
    FrmCadCliente := TFrmCadCliente.Create(Self);
    FrmCadCliente.Show;
  Finally

  End;
end;

end.
