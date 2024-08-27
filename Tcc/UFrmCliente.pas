unit UFrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCliente = class(TFrmPadrao)
    PnlPesq: TPanel;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

uses UFrmCadCliente, UFrmPrincipal;

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
