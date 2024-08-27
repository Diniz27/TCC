unit UFrmPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Data.DB, Data.Win.ADODB;

type
  TFrmPadrao = class(TForm)
    PnlTopo: TPanel;
    Label4: TLabel;
    Image4: TImage;
    Label2: TLabel;
    BtnClose: TSpeedButton;
    ImageList1: TImageList;
    PnlCentral: TPanel;
    Connection: TADOConnection;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

uses UFrmPrincipal;

procedure TFrmPadrao.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
