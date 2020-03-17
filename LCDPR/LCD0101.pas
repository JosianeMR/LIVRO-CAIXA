unit LCD0101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxLayoutControl,
  StdCtrls, DBCtrls, Mask, Buttons, dxSkinsForm, jpeg, ExtCtrls, Menus,
  cxButtons, cxContainer, cxEdit, cxGroupBox, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxCheckBox, Grids,
  DBGrids, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxMemo, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxBarBuiltInMenu, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.FMTBcd, Data.SqlExpr,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup;

type
  TLCD_0101 = class(TForm)
    Panel1: TPanel;
    Pn_Botoes: TPanel;
    bbtn_incluir: TcxButton;
    bbtn_excluir: TcxButton;
    bbtn_alterar: TcxButton;
    bbtn_cancelar: TcxButton;
    bbtn_sair: TcxButton;
    bbtn_gravar: TcxButton;
    bbtn_pesquisar: TcxButton;
    Pn_Dados: TPanel;
    Label5: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Pn_Parceiros: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel12: TPanel;
    bbtn_incluirParc: TBitBtn;
    bbtn_ExcluirParc: TBitBtn;
    bbtn_AlterarParc: TBitBtn;
    bbtn_GravarParc: TBitBtn;
    bbtn_CancelarParc: TBitBtn;
    DBGrid1: TDBGrid;
    sb_Parceiro: TSpeedButton;
    cxDBText_Nome: TcxDBTextEdit;
    DS_Imoveis: TDataSource;
    qry_imoveis: TFDQuery;
    qry_imoveisCODIGO: TIntegerField;
    qry_imoveisNOME: TStringField;
    qry_imoveisCAD_ITR: TStringField;
    qry_imoveisCAEPF: TStringField;
    qry_imoveisINSC_EST: TStringField;
    qry_imoveisENDERECO: TStringField;
    qry_imoveisNUM_END: TStringField;
    qry_imoveisCOMPLEMENTO: TStringField;
    qry_imoveisBAIRRO: TStringField;
    qry_imoveisCODCID: TIntegerField;
    qry_imoveisCEP: TStringField;
    qry_imoveisCOD_TPEXP: TIntegerField;
    qry_imoveisPORC_PART: TCurrencyField;
    qry_imoveisFLG_SITUACAO: TStringField;
    qry_imoveisCODFAZ_SISFAZ: TIntegerField;
    qry_imoveisNOME_FAZ: TStringField;
    qry_imoveisCODCONTRIB: TIntegerField;
    qry_imoveisNOME_CID: TStringField;
    qry_imoveisESTADO: TStringField;
    qry_imoveisTIPO_EXP: TStringField;
    qry_imoveisN_CONTRIBUINTE: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBText_CodCid: TcxDBTextEdit;
    FDQuery_Pesquisa: TFDQuery;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBText_CEP: TcxDBTextEdit;
    cxDBText_CodTpExp: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBText_PorcPart: TcxDBTextEdit;
    cxDBText_CodFaz: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    qry_ImoveisParc: TFDQuery;
    Ds_ImoveisParc: TDataSource;
    qry_ImoveisParcCOD_IMOVEL: TIntegerField;
    qry_ImoveisParcORDEM: TIntegerField;
    qry_ImoveisParcCODPARCEIRO: TIntegerField;
    qry_ImoveisParcPORC_PART: TFMTBCDField;
    qry_ImoveisParcNOMEPARCEIRO: TStringField;
    cxDBText_CodParc: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBText_PorcParc: TcxDBTextEdit;
    qry_cidade: TFDQuery;
    ds_cidade: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBRG_Situacao: TcxDBRadioGroup;
    procedure Botoes;
    procedure BotoesParceiros;
    procedure bbtn_sairClick(Sender: TObject);
    procedure bbtn_incluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtn_excluirClick(Sender: TObject);
    procedure bbtn_alterarClick(Sender: TObject);
    procedure bbtn_gravarClick(Sender: TObject);
    procedure bbtn_cancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbtn_pesquisarClick(Sender: TObject);
    procedure bbtn_incluirParcClick(Sender: TObject);
    procedure DBEdit_PorcParcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sb_ParceiroClick(Sender: TObject);
    procedure bbtn_GravarParcClick(Sender: TObject);
    procedure bbtn_CancelarParcClick(Sender: TObject);
    procedure bbtn_AlterarParcClick(Sender: TObject);
    procedure cxDBText_CodCidKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxDBText_CodTpExpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBText_CodFazKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBText_CodParcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBText_PorcParcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbtn_ExcluirParcClick(Sender: TObject);
  private
    wcodigo : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LCD_0101: TLCD_0101;

implementation

{$R *.dfm}

uses Arquivos, DlgCidades, DlgTipoExportacao, DlgFazendas, DlgImoveis,
  DlgContribuiente, DlgParceiros;


procedure TLCD_0101.sb_ParceiroClick(Sender: TObject);
begin
  Dlg_Parceiros := TDlg_Parceiros.Create(Self);
  if Dlg_Parceiros.ShowModal = MrOk then
  begin
    qry_ImoveisParc.FieldByName('CODPARCEIRO').AsString  := Formatfloat('000000', Dlg_Parceiros.FDQuery_Pesquisa.FieldByName('CODIGO').AsFloat);
    qry_ImoveisParc.FieldByName('NOMEPARCEIRO').AsString := Dlg_Parceiros.FDQuery_Pesquisa.FieldByName('NOME').AsString;
    cxDBText_PorcParc.SetFocus;
  end;
//  Dlg_Parceiros.Destroy;
  Dlg_Parceiros.Free;

end;

procedure TLCD_0101.Botoes;
begin
 //tabela em edi��o
 if qry_imoveis.State in [dsEdit,dsInsert] then
   begin
      bbtn_incluir.Enabled  := False;
      bbtn_Excluir.Enabled  := False;
      bbtn_alterar.enabled  := false;
      bbtn_Cancelar.Enabled := True;
      bbtn_gravar.Enabled   := True;
      bbtn_pesquisar.Enabled   := False;
      bbtn_sair.Enabled   := False;
   end;
 if qry_imoveis.State in [dsBrowse] then
   begin
      bbtn_incluir.Enabled  := True;
      bbtn_Excluir.Enabled  := True;
      bbtn_alterar.enabled  := True;
      bbtn_Cancelar.Enabled := False;
      bbtn_gravar.Enabled   := False;
      bbtn_pesquisar.Enabled   := true;
      bbtn_sair.Enabled   := True;
   end;
 if qry_imoveis.State in [dsInactive] then
   begin
      bbtn_incluir.Enabled  := True;
      bbtn_Excluir.Enabled  := True;
      bbtn_alterar.enabled  := True;
      bbtn_Cancelar.Enabled := False;
      bbtn_gravar.Enabled   := False;
      bbtn_pesquisar.Enabled   := true;
      bbtn_sair.Enabled   := True;
   end;
end;

procedure TLCD_0101.BotoesParceiros;
begin
 //tabela em edi��o
 if qry_ImoveisParc.State in [dsEdit,dsInsert] then
   begin
      bbtn_incluirParc.Enabled  := False;
      bbtn_ExcluirParc.Enabled  := False;
      bbtn_alterarParc.enabled  := false;
      bbtn_CancelarParc.Enabled := True;
      bbtn_gravarParc.Enabled   := True;
      Pn_Botoes.Enabled         := False;
      bbtn_pesquisar.Enabled   := False;
      bbtn_sair.Enabled   := False;
   end;
 if qry_ImoveisParc.State in [dsBrowse] then
   begin
      bbtn_incluirParc.Enabled  := True;
      bbtn_ExcluirParc.Enabled  := True;
      bbtn_alterarParc.enabled  := True;
      bbtn_CancelarParc.Enabled := False;
      bbtn_gravarParc.Enabled   := False;
      Pn_Botoes.Enabled         := True;
      bbtn_pesquisar.Enabled   := true;
      bbtn_sair.Enabled   := True;
   end;
 if qry_ImoveisParc.State in [dsInactive] then
   begin
      bbtn_incluirParc.Enabled  := True;
      bbtn_ExcluirParc.Enabled  := True;
      bbtn_alterarParc.enabled  := True;
      bbtn_CancelarParc.Enabled := False;
      bbtn_gravarParc.Enabled   := False;
      bbtn_pesquisar.Enabled    := true;
      Pn_Botoes.Enabled         := True;
      bbtn_sair.Enabled   := True;
   end;
end;

procedure TLCD_0101.cxDBText_CodTpExpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if cxDBText_CodTpExp.Text = '' then
    begin
      Dlg_TipoExportacao := TDlg_TipoExportacao.Create(Self);
      if Dlg_TipoExportacao.ShowModal = mrOK then
      begin
        qry_imoveis.FieldByName('COD_TPEXP').AsString := Formatfloat('000000', Dlg_TipoExportacao.FDQuery_Pesquisa.FieldByName('CODIGO').AsFloat);
        qry_imoveis.FieldByName('TIPO_EXP').AsString  := Dlg_TipoExportacao.FDQuery_Pesquisa.FieldByName('NOME').AsString;
        cxDBText_PorcPart.SetFocus;
      end;
      Dlg_TipoExportacao.Free;
    end
    else
    begin
      FDQuery_Pesquisa.Close;
      FDQuery_Pesquisa.SQL.Clear;
      FDQuery_Pesquisa.SQL.Add('SELECT * FROM TIPO_EXPLORACAO WHERE (CODIGO = :CODIGO) ');
      FDQuery_Pesquisa.ParamByName('CODIGO').AsString := cxDBText_CodTpExp.Text;
      FDQuery_Pesquisa.Open;
      if FDQuery_Pesquisa.RecordCount > 0 then
      begin
        qry_imoveis.FieldByName('COD_TPEXP').AsString := Formatfloat('000000', FDQuery_Pesquisa.FieldByName('CODIGO').AsFloat);
        qry_imoveis.FieldByName('TIPO_EXP').AsString  := FDQuery_Pesquisa.FieldByName('NOME').AsString;
        cxDBText_PorcPart.SetFocus;
      end
      else
      begin
        MessageDlg('ATEN��O >>> N�O H� REGISTRO COM ESSE C�DIGO...VERIFIQUE!!!',MtInformation,[MbOk],0);
        cxDBText_CodTpExp.SetFocus;
        Exit;
      end;
    end;
  end;

end;

procedure TLCD_0101.cxDBText_PorcParcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    bbtn_GravarParc.SetFocus;
end;

procedure TLCD_0101.cxDBText_CodFazKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if cxDBText_CodFaz.Text = '' then
    begin
      Dlg_Fazendas := TDlg_Fazendas.Create(Self);
      if Dlg_Fazendas.ShowModal = mrOK then
      begin
        qry_imoveis.FieldByName('CODFAZ').AsString   := Formatfloat('000000', Dlg_Fazendas.FDQuery_Pesquisa.FieldByName('CODIGO').AsFloat);
        qry_imoveis.FieldByName('NOME_FAZ').AsString := Dlg_Fazendas.FDQuery_Pesquisa.FieldByName('NOME').AsString;
        bbtn_gravar.SetFocus;
      end;
      Dlg_Fazendas.Free;
    end
    else
    begin
      FDQuery_Pesquisa.Close;
      FDQuery_Pesquisa.SQL.Clear;
      FDQuery_Pesquisa.SQL.Add('SELECT * FROM FAZENDA WHERE (CODIGO = :CODIGO) ');
      FDQuery_Pesquisa.ParamByName('CODIGO').AsString := cxDBText_CodFaz.Text;
      FDQuery_Pesquisa.Open;
      if FDQuery_Pesquisa.RecordCount > 0 then
      begin
        qry_imoveis.FieldByName('CODFAZ').AsString := Formatfloat('000000', FDQuery_Pesquisa.FieldByName('CODIGO').AsFloat);
        qry_imoveis.FieldByName('NOME_FAZ').AsString  := FDQuery_Pesquisa.FieldByName('NOME').AsString;
        bbtn_gravar.SetFocus;
      end
      else
      begin
        MessageDlg('ATEN��O >>> N�O H� REGISTRO COM ESSE C�DIGO...VERIFIQUE!!!',MtInformation,[MbOk],0);
        cxDBText_CodFaz.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TLCD_0101.cxDBText_CodParcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if cxDBText_CodTpExp.Text = '' then
    begin
      sb_Parceiro.Click;
    end
    else
    begin
      FDQuery_Pesquisa.Close;
      FDQuery_Pesquisa.SQL.Clear;
      FDQuery_Pesquisa.SQL.Add('SELECT * FROM PARCEIRO WHERE (CODPARCEIRO = :CODIGO) ');
      FDQuery_Pesquisa.ParamByName('CODIGO').AsString := cxDBText_CodTpExp.Text;
      FDQuery_Pesquisa.Open;
      if FDQuery_Pesquisa.RecordCount > 0 then
      begin
        qry_ImoveisParc.FieldByName('CODPARCEIRO').AsString   := Formatfloat('000000', FDQuery_Pesquisa.FieldByName('CODIGO').AsFloat);
        qry_ImoveisParc.FieldByName('NOMEPARCEIRO').AsString  := FDQuery_Pesquisa.FieldByName('NOME').AsString;
        cxDBText_PorcPart.SetFocus;
      end
      else
      begin
        MessageDlg('ATEN��O >>> N�O H� REGISTRO COM ESSE C�DIGO...VERIFIQUE!!!',MtInformation,[MbOk],0);
        cxDBText_CodTpExp.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TLCD_0101.cxDBText_CodCidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if cxDBText_CodCid.Text = '' then
    begin
      Dlg_Cidades := TDlg_Cidades.Create(Self);
      if Dlg_Cidades.ShowModal = mrOK then
      begin
        qry_imoveis.FieldByName('CODCID').AsString := Formatfloat('000000', Dlg_Cidades.FDQuery_Pesquisa.FieldByName('CODIGO').AsFloat);
        qry_imoveis.FieldByName('NOME_CID').AsString  := Dlg_Cidades.FDQuery_Pesquisa.FieldByName('NOME').AsString;
        qry_imoveis.FieldByName('ESTADO').AsString  := Dlg_Cidades.FDQuery_Pesquisa.FieldByName('SIGLA').AsString;
        cxDBText_CEP.SetFocus;
      end;
      Dlg_Cidades.Free;
    end
    else
    begin
      FDQuery_Pesquisa.Close;
      FDQuery_Pesquisa.SQL.Clear;
      FDQuery_Pesquisa.SQL.Add('SELECT A.CODIGO, A.NOME, B.SIGLA FROM CIDADE A, ESTADO B ');
      FDQuery_Pesquisa.SQL.Add('WHERE (A.CODESTADO = B.CODIGO) AND (A.CODIGO = :CODIGO)');
      FDQuery_Pesquisa.ParamByName('CODIGO').AsInteger := StrToInt(cxDBText_CodCid.Text);
      FDQuery_Pesquisa.Open;
      if FDQuery_Pesquisa.RecNo > 0 then
      begin
        qry_imoveis.FieldByName('CODCID').AsString   := Formatfloat('000000', FDQuery_Pesquisa.FieldByName('CODIGO').AsFloat);
        qry_imoveis.FieldByName('NOME_CID').AsString := FDQuery_Pesquisa.FieldByName('NOME').AsString;
        qry_imoveis.FieldByName('ESTADO').AsString   := FDQuery_Pesquisa.FieldByName('SIGLA').AsString;
        cxDBText_CEP.SetFocus;
      end
      else
      begin
        MessageDlg('ATEN��O >>> N�O H� REGISTRO COM ESSE C�DIGO...VERIFIQUE!!!',MtInformation,[MbOk],0);
        cxDBText_CodCid.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TLCD_0101.DBEdit_PorcParcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return then
    bbtn_GravarParc.SetFocus;
end;

procedure TLCD_0101.FormActivate(Sender: TObject);
begin
  if (qry_imoveis.state in [dsedit,dsinsert])
   then
     qry_imoveis.cancel;
  botoes;
{  qry_imoveis.Open;
  qry_ImoveisParc.ParamByName('COD_IMOVEL').AsInteger := qry_imoveis.FieldByName('CODIGO').AsInteger;
  qry_ImoveisParc.Open;
}end;

procedure TLCD_0101.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qry_cidade.close;
  //
  Action:= caFree;
end;

procedure TLCD_0101.FormCreate(Sender: TObject);
begin
  qry_cidade.Open;
end;

procedure TLCD_0101.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_Return then Perform(WM_NEXTDLGCTL,0,0);
  if key = Vk_Escape then Perform(WM_NEXTDLGCTL,1,0);
end;

procedure TLCD_0101.bbtn_alterarClick(Sender: TObject);
begin
  Pn_Dados.Enabled := True;
  qry_imoveis.Edit;
  wcodigo := qry_imoveis.FieldByName('CODIGO').AsInteger;
  botoes;
  cxDBText_Nome.SetFocus;
end;

procedure TLCD_0101.bbtn_AlterarParcClick(Sender: TObject);
begin
  wcodigo := qry_ImoveisParc.FieldByName('COD_IMOVEL').AsInteger;
  qry_ImoveisParc.Edit;
  Pn_Parceiros.Enabled := True;
  BotoesParceiros;
  Sb_Parceiro.Click;
end;

procedure TLCD_0101.bbtn_cancelarClick(Sender: TObject);
begin
  Pn_Dados.Enabled := False;
  qry_Imoveis.Cancel;
  qry_Imoveis.Close;
  botoes;
  bbtn_Incluir.SetFocus;
end;

procedure TLCD_0101.bbtn_CancelarParcClick(Sender: TObject);
begin
  wcodigo := qry_ImoveisParc.FieldByName('COD_IMOVEL').AsInteger;
  qry_ImoveisParc.Cancel;
  qry_ImoveisParc.Close;
  qry_ImoveisParc.ParamByName('COD_IMOVEL').AsInteger := wcodigo;
  qry_ImoveisParc.Open;
  Pn_Parceiros.Enabled := False;
  BotoesParceiros;
end;

procedure TLCD_0101.bbtn_excluirClick(Sender: TObject);
var
  i, result : Integer;
begin
   // Abaixo a pergunta que coloca primeiro o N�O e depois o SIM
   with CreateMessageDialog('Tem certeza que deseja excluir esse registro ???', mtConfirmation,[mbYes,mbNo]) do
     try
       for i := 0 to ComponentCount - 1 do
         if Components[i] is TButton then
           with TButton(Components[i]) do
             case ModalResult of
               mrYes : Caption := 'N�o'; {6}
               mrNo  : Caption := 'Sim'; {7} {2 � o click no bot�o X da janela}
             end;
        Result := ShowModal;
     finally
       Free;
   end;

   // Testa o resultado
   if result = 7 then
   begin
      // colocar filtro pra n�o deixar excluir se tiver lan�amento
     qry_imoveis.Delete;
     qry_imoveis.Close;
     qry_imoveis.Open;
   end;
end;

procedure TLCD_0101.bbtn_ExcluirParcClick(Sender: TObject);
var
  i, result : Integer;
begin
   // Abaixo a pergunta que coloca primeiro o N�O e depois o SIM
   with CreateMessageDialog('Tem certeza que deseja excluir esse registro ???', mtConfirmation,[mbYes,mbNo]) do
     try
       for i := 0 to ComponentCount - 1 do
         if Components[i] is TButton then
           with TButton(Components[i]) do
             case ModalResult of
               mrYes : Caption := 'N�o'; {6}
               mrNo  : Caption := 'Sim'; {7} {2 � o click no bot�o X da janela}
             end;
        Result := ShowModal;
     finally
       Free;
   end;

   // Testa o resultado
   if result = 7 then
   begin
      // colocar filtro pra n�o deixar excluir se tiver lan�amento
     qry_ImoveisParc.Delete;
     qry_ImoveisParc.Close;
     qry_ImoveisParc.ParamByName('COD_IMOVEL').AsInteger := qry_imoveis.FieldByName('CODIGO').AsInteger;
     qry_imoveisParc.Open;
   end;
end;

procedure TLCD_0101.bbtn_gravarClick(Sender: TObject);
begin
  Pn_Dados.Enabled := False;
  qry_imoveis.Post;
  if qry_imoveis.FieldByName('CODIGO').AsInteger = 0 then
  begin
    FDQuery_Pesquisa.Close;
    FDQuery_Pesquisa.Close;
    FDQuery_Pesquisa.SQL.Clear;
    FDQuery_Pesquisa.SQL.Add('SELECT MAX(CODIGO) CODIGO FROM IMOVEIS ');
    FDQuery_Pesquisa.Open;
    wcodigo := FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger;
//    montar_select(1, wcodigo);
  end
  else
  begin
    qry_imoveis.Close;
  end;
  botoes;
  bbtn_Incluir.SetFocus;
end;

procedure TLCD_0101.bbtn_GravarParcClick(Sender: TObject);
begin
  wcodigo := qry_ImoveisParc.FieldByName('COD_IMOVEL').AsInteger;
  qry_ImoveisParc.Post;
  qry_ImoveisParc.Close;
  qry_ImoveisParc.ParamByName('COD_IMOVEL').AsInteger := wcodigo;
  qry_ImoveisParc.Open;
  Pn_Parceiros.Enabled := False;
  BotoesParceiros;
  bbtn_IncluirParc.SetFocus;
end;

procedure TLCD_0101.bbtn_incluirClick(Sender: TObject);
begin
  qry_imoveis.Close;
  qry_imoveis.Open;
  Pn_Dados.Enabled := True;
  qry_imoveis.Insert;
  qry_imoveis.FieldByName('CODIGO').AsInteger := 0;
  qry_imoveis.FieldByName('FLG_SITUACAO').AsString := 'A';
  botoes;
  cxDBText_Nome.SetFocus;
end;

procedure TLCD_0101.bbtn_incluirParcClick(Sender: TObject);
begin
  if qry_Imoveis.RecordCount > 0 then
  begin
    qry_ImoveisParc.Insert;
    qry_ImoveisParc.FieldByName('ORDEM').AsInteger := 0;
    qry_ImoveisParc.FieldByName('COD_IMOVEL').AsInteger := qry_Imoveis.FieldByName('CODIGO').AsInteger;
    Pn_Parceiros.Enabled := true;
    BotoesParceiros;
    Sb_Parceiro.Click;
  end;
end;

procedure TLCD_0101.bbtn_pesquisarClick(Sender: TObject);
begin
  Dlg_Imoveis := TDlg_Imoveis.Create(Self);
  if Dlg_Imoveis.ShowModal = MrOk  then
  begin
    qry_imoveis.Close;
    qry_imoveisParc.Close;
    qry_imoveis.ParamByName('CODIGO').AsInteger := Dlg_Imoveis.FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger;
    qry_imoveis.Open;
    qry_imoveisParc.ParamByName('COD_IMOVEL').AsInteger := Dlg_Imoveis.FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger;
    qry_imoveisParc.Open;
    botoes;
  end;
  Dlg_Imoveis.Free;
end;

procedure TLCD_0101.bbtn_sairClick(Sender: TObject);
begin
  Close;
end;

end.
