unit UFrmPedVend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvComponentBase, JvFormAutoSize, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPedVend = class(TForm)
    PnlFiltro: TPanel;
    PnlProduto: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    Image1: TImage;
    GroupBox1: TGroupBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedVend: TFrmPedVend;

implementation

{$R *.dfm}



procedure TFrmPedVend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
