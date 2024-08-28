unit UFrmCadPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Data.Win.ADODB,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TFrmCadPessoas = class(TFrmPadrao)
    Label1: TLabel;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    EdtDataCad: TDBEdit;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    EdtNome: TDBEdit;
    EdtNomeRed: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    EdtCPFCNPJ: TDBEdit;
    EdtRGIE: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    ComboBox2: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPessoas: TFrmCadPessoas;

implementation

{$R *.dfm}

end.
