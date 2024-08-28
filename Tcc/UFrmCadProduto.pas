unit UFrmCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, JvExMask, JvToolEdit, JvDBLookup;

type
  TFrmCadProduto = class(TFrmPadrao)
    PnlCancela: TPanel;
    BtnCancela: TSpeedButton;
    PnlConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    Qry: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Ds: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    Qryid_produto: TIntegerField;
    Qrynm_produto: TWideStringField;
    Qryvl_produto: TFloatField;
    Qryid_fornecedor: TIntegerField;
    Qryid_unimedida: TIntegerField;
    Qryqn_estoque: TIntegerField;
    Qryqn_peso: TFloatField;
    Qrynm_obs: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProduto: TFrmCadProduto;

implementation

{$R *.dfm}

uses UFrmPrincipal, UFrmProdutos;

procedure TFrmCadProduto.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  Qry.CancelUpdates;
  Qry.Refresh;

  Close;
end;

procedure TFrmCadProduto.BtnConfirmaClick(Sender: TObject);
begin
  inherited;

  if Qry.State = dsInsert then
  begin
    try
      Qry.Post;
      Qry.Refresh;
    finally
      MessageDlg('Produto adicionado com sucesso.', mtConfirmation, [mbOk], 0);
      BtnCancela.Enabled := False;
    end;
  end
  else if Qry.State = dsEdit then
  begin
    try
      Qry.Post;
      Qry.Refresh;
    finally
      MessageDlg('Produto editado com sucesso.', mtConfirmation, [mbOk], 0);
      BtnCancela.Enabled := False;
    end;
  end;

end;

procedure TFrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Qry.State in [dsInsert, dsEdit] then
    Qry.CancelUpdates;
end;

procedure TFrmCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  Qry.Parameters.ParamByName('id_prod').Value := FrmProdutos.Qry.FieldByName('id_produto').Value;
  Qry.Open;
end;

end.
