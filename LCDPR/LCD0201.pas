unit LCD0201;

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
  TLCD_0201 = class(TForm)
    Panel1: TPanel;
    Pn_Saida: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    MEdit_DataI: TMaskEdit;
    MEdit_DataF: TMaskEdit;
    Edit_CodEmpresa: TEdit;
    Edit_Contribuinte: TEdit;
    Panel2: TPanel;
    Bbtn_Gerar: TBitBtn;
    bbtn_sair: TBitBtn;
    Panel4: TPanel;
    Image4: TImage;
    Label28: TLabel;
    Rg_Tipo: TRadioGroup;
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
    DBGrid1: TDBGrid;
    FDQuery_Sisfaz: TFDQuery;
    FDQuery_Pesquisa: TFDQuery;
    FDQuery_Movto: TFDQuery;
    procedure bbtn_sairClick(Sender: TObject);
    procedure MEdit_DataIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MEdit_DataFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_CodEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Bbtn_GerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    CPF_sem_mascara : String;
    ideclarante : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LCD_0201: TLCD_0201;

implementation

{$R *.dfm}

uses DlgContribuiente, Arquivos;

procedure TLCD_0201.Bbtn_GerarClick(Sender: TObject);
Var icodfaz, icodcta, icodtp_dupl, icontagem : Integer;
    scontagem : String;
begin
  if Rg_Tipo.ItemIndex = 0 then
  begin
    FDQuery_Sisfaz.Close;
    FDQuery_Sisfaz.SQL.Clear;
    FDQuery_Sisfaz.SQL.Add('select a.dt_lancto, a.cc_nro, a.cta_nro, a.faz_nro, ');
    FDQuery_Sisfaz.SQL.Add('a.cul_nro, a.valor valor_baixa, A.CC_NRO, b.nome n_fazenda, ');
    FDQuery_Sisfaz.SQL.Add('c.nome n_cultura, d.nro DUPL_NRO, d.flg_dc, d.nro_dupl NFISCAL, ');
    FDQuery_Sisfaz.SQL.Add('D.NRO_EMPRESA, d.cod_tipo_dupl, e.cnpj, e.nome, ');
    FDQuery_Sisfaz.SQL.Add('f.nome n_custo from movcta a, fazenda b, cultura c, ');
    FDQuery_Sisfaz.SQL.Add('duplicata d, fornecedores e, subgrupo_custo f, ');
    FDQuery_Sisfaz.SQL.Add('tipo_duplicata g where a.faz_nro = b.codigo and ');
    FDQuery_Sisfaz.SQL.Add('a.cul_nro = c.codigo and a.dplb_dupl_flg_dc = d.flg_dc ');
    FDQuery_Sisfaz.SQL.Add('and a.dplb_dupl_nro = d.nro and d.clifor = e.codigo and ');
    FDQuery_Sisfaz.SQL.Add('a.cc_nro = f.codcusto and d.cod_tipo_dupl = g.codigo and ');
    FDQuery_Sisfaz.SQL.Add('d.flg_dc = :flg_dc and g.flg_livro_cx = :livro_cx and ');
    FDQuery_Sisfaz.SQL.Add('a.dt_lancto between :dtini and :dtfim ');
    FDQuery_Sisfaz.SQL.Add('and d.nro_empresa = :empresa');
    FDQuery_Sisfaz.ParamByName('DTINI').AsString := MEdit_DataI.Text;
    FDQuery_Sisfaz.ParamByName('DTFIM').AsString := MEdit_DataF.Text;
    FDQuery_Sisfaz.ParamByName('EMPRESA').AsString := Edit_CodEmpresa.Text; //ideclarante;
    FDQuery_Sisfaz.ParamByName('flg_dc').AsString := 'D';
    FDQuery_Sisfaz.ParamByName('livro_cx').AsString := 'S';
    FDQuery_Sisfaz.Open;
    FDQuery_Sisfaz.RecordCount;

    while not FDQuery_Sisfaz.Eof do
    begin
//      SHOWmessage('arquivo');

      FDQuery_Pesquisa.Close;
      FDQuery_Pesquisa.SQL.Clear;
      FDQuery_Pesquisa.SQL.Add('SELECT * FROM IMOVEIS WHERE CODFAZ_SISFAZ = :CODFAZ');
      FDQuery_Pesquisa.ParamByName('CODFAZ').AsInteger := FDQuery_Sisfaz.FieldByName('faz_nro').AsInteger;
      FDQuery_Pesquisa.Open;
      if FDQuery_Pesquisa.RecordCount > 0 then
        icodfaz := FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger
      else
        icodfaz := 1;

      FDQuery_Pesquisa.Close;
      FDQuery_Pesquisa.SQL.Clear;
      FDQuery_Pesquisa.SQL.Add('SELECT * FROM CONTA_BANCARIA WHERE NRO_CONTA = :CODCTA');
      FDQuery_Pesquisa.ParamByName('CODCTA').AsInteger := FDQuery_Sisfaz.FieldByName('CTA_NRO').AsInteger;
      FDQuery_Pesquisa.Open;
      if FDQuery_Pesquisa.RecordCount > 0 then
        icodcta := FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger
      else
        icodcta := 999;

      FDQuery_Pesquisa.Close;
      FDQuery_Pesquisa.SQL.Clear;
      FDQuery_Pesquisa.SQL.Add('SELECT * FROM TIPO_DUPLICATA WHERE COD_SISFAZ = :SISFAZ');
      FDQuery_Pesquisa.ParamByName('SISFAZ').AsInteger := FDQuery_Sisfaz.FieldByName('COD_TIPO_DUPL').AsInteger;
      FDQuery_Pesquisa.Open;
      if FDQuery_Pesquisa.RecordCount > 0 then
        icodtp_dupl := FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger
      else
        icodtp_dupl := 6;

      FDQuery_Pesquisa.Close;
      FDQuery_Pesquisa.SQL.Clear;
      FDQuery_Pesquisa.SQL.Add('SELECT * FROM MOVTO_LIVRO WHERE DUPL_NRO = :DUPL_NRO AND ');
      FDQuery_Pesquisa.SQL.Add('DUPL_FLG_DC = :DUPL_FLG_DC AND COD_IMOVEL = :IMOVEL AND ');
      FDQuery_Pesquisa.SQL.Add('CC_CUSTO = :CC_CUSTO ');
      FDQuery_Pesquisa.ParamByName('DUPL_NRO').AsInteger    := FDQuery_Sisfaz.FieldByName('DUPL_NRO').AsInteger;
      FDQuery_Pesquisa.ParamByName('DUPL_FLG_DC').AsString  := FDQuery_Sisfaz.FieldByName('FLG_DC').AsString;
      FDQuery_Pesquisa.ParamByName('IMOVEL').AsInteger      := icodfaz;
      FDQuery_Pesquisa.ParamByName('CC_CUSTO').AsString     := FDQuery_Sisfaz.FieldByName('CC_NRO').AsString;
      FDQuery_Pesquisa.Open;
      if FDQuery_Pesquisa.RecordCount > 0 then
      begin
//        SHOWmessage('ACHOU DADO REPETIDO NA TABELA');
        qry_movto.Close;
        qry_movto.Open;
        qry_movto.Edit;
        qry_movto.FieldByName('CONTROLE').AsInteger    := FDQuery_Pesquisa.FieldByName('CONTROLE').AsInteger;
        qry_movto.FieldByName('VLR_SAIDA').AsFloat     := FDQuery_Pesquisa.FieldByName('VLR_SAIDA').AsFloat +
                                                          FDQuery_Sisfaz.FieldByName('valor_baixa').AsFloat;
        qry_movto.FieldByName('DUPL_NRO').AsInteger    := FDQuery_Pesquisa.FieldByName('DUPL_NRO').AsInteger;
        qry_movto.FieldByName('DUPL_FLG_DC').AsString  := FDQuery_Pesquisa.FieldByName('DUPL_FLG_DC').AsString;
        qry_movto.FieldByName('CC_CUSTO').AsString     := FDQuery_Pesquisa.FieldByName('CC_CUSTO').AsString;
        qry_movto.Post;
//        SHOWmessage('UPDATE NA TABELA');
        FDQuery_Sisfaz.Next;
      end
      else
      begin
        qry_movto.Close;
        qry_movto.Open;
        qry_movto.Insert;
        qry_movto.FieldByName('CONTROLE').AsInteger    := 0;
        qry_movto.FieldByName('DATA').AsDateTime       := FDQuery_Sisfaz.FieldByName('dt_lancto').AsDateTime;
        qry_movto.FieldByName('COD_IMOVEL').AsInteger  := icodfaz;
        qry_movto.FieldByName('COD_CONTA').AsInteger   := icodcta;
        qry_movto.FieldByName('NUM_DOC').AsString      := FDQuery_Sisfaz.FieldByName('NFISCAL').AsString;
        qry_movto.FieldByName('TIPO_DOC').AsInteger    := icodtp_dupl;
        qry_movto.FieldByName('HISTORICO').AsString    := FDQuery_Sisfaz.FieldByName('n_custo').AsString;
        if FDQuery_Sisfaz.FieldByName('CNPJ').AsString <> '' then
          qry_movto.FieldByName('CNPJ_CLIFOR').AsString  := FDQuery_Sisfaz.FieldByName('cnpj').AsString
        else
          qry_movto.FieldByName('CNPJ_CLIFOR').AsString  :=  CPF_sem_mascara;
        qry_movto.FieldByName('TIPO_LANCTO').AsInteger := 2;
        qry_movto.FieldByName('VLR_SAIDA').AsFloat     := FDQuery_Sisfaz.FieldByName('valor_baixa').AsFloat;
        qry_movto.FieldByName('CODCONTRIB').AsString   := Edit_CodEmpresa.Text;
        qry_movto.FieldByName('DUPL_NRO').AsInteger    := FDQuery_Sisfaz.FieldByName('DUPL_NRO').AsInteger;
        qry_movto.FieldByName('DUPL_FLG_DC').AsString  := FDQuery_Sisfaz.FieldByName('FLG_DC').AsString;
        qry_movto.FieldByName('CC_CUSTO').AsString     := FDQuery_Sisfaz.FieldByName('CC_NRO').AsString;

        qry_movto.Post;
        SHOWmessage('PASSOU - GRAVOU');
        FDQuery_Sisfaz.Next;
      end;
    end;
  end;
end;

procedure TLCD_0201.bbtn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TLCD_0201.Edit_CodEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i : Integer;
    scpf : string;
begin
  if Key = Vk_Return then
  begin
    if Edit_Codempresa.Text = '' then
    begin
      Dlg_Contribuinte := TDlg_Contribuinte.Create(Self);
      if Dlg_Contribuinte.ShowModal = MrOk  then
      begin
          Edit_CodEmpresa.Text   := Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('CODIGO').AsString;
          Edit_Contribuinte.Text := Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('NOME').AsString;
      end;
      IF Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('CPF').AsString <> '' THEN
       // Tirar a M�scara do CNPJ --
      BEGIN
       CPF_sem_mascara := '';
       scpf := '';
       scpf := Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('CPF').AsString;
       FOR I := 1 TO LENGTH(Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('CPF').AsString) DO
         IF Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('CPF').AsString[I] IN ['0'..'9'] THEN
            CPF_sem_mascara := CPF_sem_mascara + COPY(Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('CPF').AsString, I, 1);
      END;
      Dlg_Contribuinte.Free;
      Rg_Tipo.SetFocus;
    end
    else
    begin
      dm.IBQ_pesquisa.Close;
      dm.IBQ_pesquisa.SQL.Add('SELECT * FROM CONTRIBUINTE WHERE CODIGO = :CODIGO');
      DM.IBQ_pesquisa.ParamByName('CODIGO').AsString := Edit_Codempresa.Text;
      dm.IBQ_pesquisa.Open;
      if dm.IBQ_pesquisa.RecordCount > 0 then
      begin
          Edit_CodEmpresa.Text := dm.IBQ_Pesquisa.FieldByName('CODIGO').AsString;
          Edit_Contribuinte.Text := dm.IBQ_Pesquisa.FieldByName('nome').AsString;
      end;
      IF dm.IBQ_Pesquisa.FieldByName('CPF').AsString <> '' THEN
       // Tirar a M�scara do CNPJ --
      BEGIN
       CPF_sem_mascara := '';
       scpf := '';
       scpf := Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('CPF').AsString;
       FOR I := 1 TO LENGTH(dm.IBQ_Pesquisa.FieldByName('CPF').AsString) DO
         IF dm.IBQ_Pesquisa.FieldByName('CPF').AsString[I] IN ['0'..'9'] THEN
            CPF_sem_mascara := CPF_sem_mascara + COPY(dm.IBQ_Pesquisa.FieldByName('CPF').AsString, I, 1);
      END;
      Rg_Tipo.SetFocus;
    end;

    FDQuery_Sisfaz.Close;
    FDQuery_Sisfaz.SQL.Clear;
    FDQuery_Sisfaz.SQL.Add('SELECT CODIGO, CPF FROM EMPRESA WHERE CPF = :CPF');
    FDQuery_Sisfaz.ParamByName('CPF').AsString := scpf;
    FDQuery_Sisfaz.Open;
    ideclarante := FDQuery_Sisfaz.FieldByName('CODIGO').AsInteger;
  end;
end;

procedure TLCD_0201.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  bd_SISFAZ.Connected:= false;
  action:= cafree;
end;

procedure TLCD_0201.FormCreate(Sender: TObject);
begin
  bd_SISFAZ.Params.LoadFromFile('C:\BANCO DE DADOS\sisFAZ.ini');
  bd_SISFAZ.Connected:= true;
end;

procedure TLCD_0201.MEdit_DataFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if MEdit_DataF.Text = '  /  /    ' then
       MEdit_DataF.Text := '31/12/9999'
    else
    begin
       try
         MEdit_DataF.Text := DateToStr(StrToDate(MEdit_DataF.Text));
       except
         ShowMessage('A Data Digitada � Inv�lida...');
         MEdit_DataF.SetFocus;
       end;
    end;
    Edit_CodEmpresa.SetFocus;
  end;
end;

procedure TLCD_0201.MEdit_DataIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if MEdit_DataI.Text = '  /  /    ' then
       MEdit_DataI.Text := '31/12/9999'
    else
    begin
       try
         MEdit_DataI.Text := DateToStr(StrToDate(MEdit_DataI.Text));
       except
         ShowMessage('A Data Digitada � Inv�lida...');
         MEdit_DataI.SetFocus;
       end;
    end;
    MEdit_dataF.SetFocus;
  end;
end;

end.
