unit UFrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Imaging.pngimage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase;

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
    PnlExclui: TPanel;
    BtnExclui: TSpeedButton;
    Qry: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure BtnPesquisaClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnExcluiClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    Screen.Cursor := crHourGlass;

    FrmCadProduto := TFrmCadProduto.Create(Self);
    FrmCadProduto.Qry.Edit;
    FrmCadProduto.Show;

    Screen.Cursor := crDefault;
  except
    FrmCadProduto.Free;
    Screen.Cursor := crDefault;
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
    Screen.Cursor := crHourGlass;

    FrmCadProduto := TFrmCadProduto.Create(Self);
    FrmCadProduto.Qry.Append;
    FrmCadProduto.Show;

    Screen.Cursor := crDefault;
  except
    FrmCadProduto.Free;
    Screen.Cursor := crDefault;
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
    Qry.ParamByName('id_prod').Value :=  StrToInt(EdtPesq.text);
    Qry.Open;
  end
  else if CbTipo.ItemIndex = 1 then
  begin
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT * FROM sistema.PRODUTOS WHERE NM_PRODUTO like :nm_prod');
    Qry.ParamByName('nm_prod').Value := '%' + EdtPesq.text + '%';
    Qry.Open;
  end;
end;

procedure TFrmProdutos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  BtnEditar.Click;
end;

procedure TFrmProdutos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  with Sender as TDBGrid do
  begin
    if gdSelected in State then
      Canvas.Brush.Color := clSkyBlue  // Cor de fundo para a linha selecionada
    else if DataSource.DataSet.RecNo mod 2 = 0 then
      Canvas.Brush.Color := clWhite  // Cor de fundo para linhas pares
    else
      Canvas.Brush.Color := $00F0F0F0;  // Cor de fundo para linhas ímpares (cinza claro)

    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFrmProdutos.FormShow(Sender: TObject);
begin
  inherited;
  Qry.Open;
end;

end.
