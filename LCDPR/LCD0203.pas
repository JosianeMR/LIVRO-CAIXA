unit LCD0203;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBar, cxClasses, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TLCD_0203 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bbtn_sair: TBitBtn;
    BD_SISFAZ: TFDConnection;
    qry_movto: TFDQuery;
    DS_movto: TDataSource;
    qry_movtoCONTROLE: TIntegerField;
    qry_movtoDATA: TDateField;
    qry_movtoCOD_IMOVEL: TIntegerField;
    qry_movtoCOD_CONTA: TIntegerField;
    qry_movtoNUM_DOC: TStringField;
    qry_movtoTIPO_DOC: TIntegerField;
    qry_movtoHISTORICO: TStringField;
    qry_movtoCODCONTRIB: TIntegerField;
    qry_movtoTIPO_LANCTO: TIntegerField;
    qry_movtoVLR_ENTRADA: TFMTBCDField;
    qry_movtoVLR_SAIDA: TFMTBCDField;
    qry_movtoSALDO_FINAL: TFMTBCDField;
    qry_movtoNAT_SLD_FINAL: TStringField;
    qry_movtoCNPJ_CLIFOR: TStringField;
    qry_movtoDUPL_NRO: TIntegerField;
    qry_movtoDUPL_FLG_DC: TStringField;
    qry_movtoCC_CUSTO: TStringField;
    grdMovtoSisfaz: TcxGrid;
    grdMovtoSisfazDBTableView1: TcxGridDBTableView;
    grdMovtoSisfazLevel1: TcxGridLevel;
    grdMovtoSisfazDBTableView1CONTROLE: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1DATA: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1COD_IMOVEL: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1COD_CONTA: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1NUM_DOC: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1TIPO_DOC: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1HISTORICO: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1CODCONTRIB: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1TIPO_LANCTO: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1VLR_ENTRADA: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1VLR_SAIDA: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1CNPJ_CLIFOR: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1DUPL_NRO: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1DUPL_FLG_DC: TcxGridDBColumn;
    grdMovtoSisfazDBTableView1CC_CUSTO: TcxGridDBColumn;
    procedure bbtn_sairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    CPF_sem_mascara : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LCD_0203: TLCD_0203;

implementation

{$R *.dfm}

uses DlgContribuiente, Arquivos;

procedure TLCD_0203.bbtn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TLCD_0203.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  bd_SISFAZ.Connected:= false;
  action:= cafree;
end;

procedure TLCD_0203.FormCreate(Sender: TObject);
begin
  bd_SISFAZ.Params.LoadFromFile('C:\BANCO DE DADOS\sisFAZ.ini');
  bd_SISFAZ.Connected:= true;
end;

end.
