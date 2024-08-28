unit UFrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvDataSource, Data.Win.ADODB, Vcl.Imaging.pngimage;

type
  TFrmProdutos = class(TFrmPadrao)
    PnlPesq: TPanel;
    BtnPesquisa: TSpeedButton;
    CbTipo: TComboBox;
    EdtPesq: TEdit;
    PnlNovo: TPanel;
    BtnNovo: TSpeedButton;
    DBGrid1: TDBGrid;
    PnlEditar: TPanel;
    BtnEditar: TSpeedButton;
    Ds: TDataSource;
    Qry: TADOQuery;
    PnlExclui: TPanel;
    BtnExclui: TSpeedButton;
    Qryid_produto: TAutoIncField;
    Qrynm_produto: TWideStringField;
    Qryvl_produto: TFloatField;
    Qryid_fornecedor: TIntegerField;
    Qryid_unimedida: TIntegerField;
    Qryqn_estoque: TIntegerField;
    Qryqn_peso: TFloatField;
    Qrynm_obs: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnPesquisaClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnExcluiClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

{$R *.dfm}

uses UFrmCadProduto, UFrmPrincipal;

procedure TFrmProdutos.BtnCloseClick(Sender: TObject);
begin
  inherited;
  FrmPrincipal.MostrarPainel;
end;

procedure TFrmProdutos.BtnEditarClick(Sender: TObject);
begin
  inherited;
  Try
    FrmCadProduto := TFrmCadProduto.Create(Self);
    FrmCadProduto.Qry.Edit;
    FrmCadProduto.Show;
  except
    FrmCadProduto.Free;
  End;
end;

procedure TFrmProdutos.BtnExcluiClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir esse produto?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    try
      Qry.Delete;
    finally
      MessageDlg('Produto excluido com sucesso.', mtConfirmation, [mbOk], 0);
      Qry.Refresh;
    end;
  end;
end;

procedure TFrmProdutos.BtnNovoClick(Sender: TObject);
begin
  inherited;
  Try
    FrmCadProduto := TFrmCadProduto.Create(Self);
    FrmCadProduto.Qry.Append;
    FrmCadProduto.Show;
  except
    FrmCadProduto.Free;
  End;
end;

procedure TFrmProdutos.BtnPesquisaClick(Sender: TObject);
begin
  inherited;

  if Trim(EdtPesq.Text) = '' then
  begin
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT * FROM sistema.PRODUTOS ORDER BY ID_PRODUTO');
    Qry.Open;
    Exit;
  end;

  if CbTipo.ItemIndex = 0 then
  begin
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT * FROM sistema.PRODUTOS WHERE ID_PRODUTO = :id_prod');
    Qry.Parameters.ParamByName('id_prod').Value :=  StrToInt(EdtPesq.text);
    Qry.Open;
  end
  else if CbTipo.ItemIndex = 1 then
  begin
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT * FROM sistema.PRODUTOS WHERE NM_PRODUTO like :nm_prod');
    Qry.Parameters.ParamByName('nm_prod').Value := '%' + EdtPesq.text + '%';
    Qry.Open;
  end;
end;

procedure TFrmProdutos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  BtnEditar.Click;
end;

procedure TFrmProdutos.FormShow(Sender: TObject);
begin
  inherited;
  Qry.Open;
end;

end.
