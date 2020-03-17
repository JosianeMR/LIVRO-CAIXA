unit LCD0104;

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
  Vcl.DBCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit,
  cxTextEdit, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TLCD_0104 = class(TForm)
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
    DBGrid1: TDBGrid;
    Ds_CtaBancaria: TDataSource;
    FDQuery_Pesquisa: TFDQuery;
    cxDBText_Nome: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBRG_Situacao: TcxDBRadioGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label2: TLabel;
    Label4: TLabel;
    cxDBText_Contr: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    qry_CtaBancaria: TFDQuery;
    qry_CtaBancariaCODIGO: TIntegerField;
    qry_CtaBancariaCOD_BANCO: TIntegerField;
    qry_CtaBancariaNRO_AGENCIA: TStringField;
    qry_CtaBancariaNRO_CONTA: TStringField;
    qry_CtaBancariaCODCONTRIB: TIntegerField;
    qry_CtaBancariaFLG_SITUACAO: TStringField;
    qry_CtaBancariaCONTA_SISFAZ: TIntegerField;
    qry_CtaBancariaCONTA_SENSATA: TIntegerField;
    qry_CtaBancariaNOME_BANCO: TStringField;
    qry_CtaBancariaNOME_DECLARANTE: TStringField;
    cxDBTextEdit4: TcxDBTextEdit;
    FDQuery1: TFDQuery;
    FDQuery1CODIGO: TIntegerField;
    FDQuery1COD_BANCO: TIntegerField;
    FDQuery1NRO_AGENCIA: TStringField;
    FDQuery1NRO_CONTA: TStringField;
    FDQuery1CODCONTRIB: TIntegerField;
    FDQuery1FLG_SITUACAO: TStringField;
    FDQuery1CONTA_SISFAZ: TIntegerField;
    FDQuery1CONTA_SENSATA: TIntegerField;
    procedure bbtn_sairClick(Sender: TObject);
    procedure Botoes;
    procedure bbtn_incluirClick(Sender: TObject);
    procedure bbtn_excluirClick(Sender: TObject);
    procedure bbtn_alterarClick(Sender: TObject);
    procedure bbtn_gravarClick(Sender: TObject);
    procedure bbtn_cancelarClick(Sender: TObject);
    procedure bbtn_pesquisarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBText_ContrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    wcodigo : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LCD_0104: TLCD_0104;

implementation

{$R *.dfm}

uses Arquivos, DlgParceiros, DlgContribuiente, DlgContaBancaria;

procedure TLCD_0104.Botoes;
begin
 //tabela em edição
 if qry_CtaBancaria.State in [dsEdit,dsInsert] then
   begin
      bbtn_incluir.Enabled  := False;
      bbtn_Excluir.Enabled  := False;
      bbtn_alterar.enabled  := false;
      bbtn_Cancelar.Enabled := True;
      bbtn_gravar.Enabled   := True;
      bbtn_pesquisar.Enabled   := False;
      bbtn_sair.Enabled   := False;
   end;
 if qry_CtaBancaria.State in [dsBrowse] then
   begin
      bbtn_incluir.Enabled  := True;
      bbtn_Excluir.Enabled  := True;
      bbtn_alterar.enabled  := True;
      bbtn_Cancelar.Enabled := False;
      bbtn_gravar.Enabled   := False;
      bbtn_pesquisar.Enabled   := true;
      bbtn_sair.Enabled   := True;
   end;
 if qry_CtaBancaria.State in [dsInactive] then
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

procedure TLCD_0104.cxDBText_ContrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if cxDBText_Contr.Text <> '' then
    begin
      FDQuery_Pesquisa.Close;
      FDQuery_Pesquisa.SQL.Clear;
      FDQuery_Pesquisa.SQL.Add('SELECT CODIGO, NOME FROM CONTRIBUINTE WHERE CODIGO = :CODIGO');
      FDQuery_Pesquisa.ParamByName('CODIGO').AsString :=  cxDBText_Contr.Text;
      FDQuery_Pesquisa.Open;
      if FDQuery_Pesquisa.RecordCount > 0 then
      begin
        qry_CtaBancaria.FieldByName('CODCONTRIB').AsInteger := FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger;
        qry_CtaBancaria.FieldByName('NOME_DECLARANTE').AsString := FDQuery_Pesquisa.FieldByName('NOME').AsString;
        cxDBRG_Situacao.SetFocus;
      end
      else
      begin
        MessageDlg('ATENÇÃO >>> NÃO HÁ REGISTRO COM ESSE CÓDIGO...VERIFIQUE!!!',MtInformation,[MbOk],0);
        cxDBText_Contr.SetFocus;
        Exit;
      end;
    end
    ELSE
    begin
      Dlg_Contribuinte := TDlg_Contribuinte.Create(Self);
      if Dlg_Contribuinte.ShowModal = MrOk  then
      begin
        qry_CtaBancaria.FieldByName('CODCONTRIB').AsInteger := Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger;
        qry_CtaBancaria.FieldByName('NOME_DECLARANTE').AsString := Dlg_Contribuinte.FDQuery_Pesquisa.FieldByName('NOME').AsString;
        cxDBRG_Situacao.SetFocus;
      end;
      Dlg_Contribuinte.Free;
    end;
  end;
end;

procedure TLCD_0104.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDQuery1.Close;
//  qry_CtaBancaria.Close;
end;

procedure TLCD_0104.FormCreate(Sender: TObject);
begin
  FDQuery1.Open;
//  qry_CtaBancaria.Open;
end;

procedure TLCD_0104.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_Return then Perform(WM_NEXTDLGCTL,0,0);
  if key = Vk_Escape then Perform(WM_NEXTDLGCTL,1,0);
end;

procedure TLCD_0104.bbtn_alterarClick(Sender: TObject);
begin
  Pn_Dados.Enabled := True;
  qry_CtaBancaria.Edit;
  wcodigo := qry_CtaBancaria.FieldByName('CODIGO').AsInteger;
  botoes;
  cxDBText_Nome.SetFocus;
end;

procedure TLCD_0104.bbtn_cancelarClick(Sender: TObject);
begin
  Pn_Dados.Enabled := False;
  qry_CtaBancaria.Cancel;
  botoes;
  bbtn_Incluir.SetFocus;
end;

procedure TLCD_0104.bbtn_excluirClick(Sender: TObject);
var
  i, result : Integer;
begin
   // Abaixo a pergunta que coloca primeiro o NÃO e depois o SIM
   with CreateMessageDialog('Tem certeza que deseja excluir esse registro ???', mtConfirmation,[mbYes,mbNo]) do
     try
       for i := 0 to ComponentCount - 1 do
         if Components[i] is TButton then
           with TButton(Components[i]) do
             case ModalResult of
               mrYes : Caption := 'Não'; {6}
               mrNo  : Caption := 'Sim'; {7} {2 é o click no botão X da janela}
             end;
        Result := ShowModal;
     finally
       Free;
   end;

   // Testa o resultado
   if result = 7 then
   begin
      // colocar filtro pra não deixar excluir se tiver lançamento
     qry_CtaBancaria.Delete;
     qry_CtaBancaria.Close;
   end;
end;

procedure TLCD_0104.bbtn_gravarClick(Sender: TObject);
begin
  Pn_Dados.Enabled := False;
  qry_CtaBancaria.Post;
  if qry_CtaBancaria.FieldByName('CODIGO').AsInteger = 0 then
  begin
//    dm.IBDS_Imoveis.Close;
    FDQuery_Pesquisa.Close;
    FDQuery_Pesquisa.SQL.Clear;
    FDQuery_Pesquisa.SQL.Add('SELECT MAX(CODIGO) CODIGO FROM CONTA_BANCARIA ');
    FDQuery_Pesquisa.Open;
    wcodigo := FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger;
    qry_CtaBancaria.Close;
    qry_CtaBancaria.ParamByName('CODIGO').AsInteger := wcodigo;
    qry_CtaBancaria.Open;
  end
  else
  begin
    qry_CtaBancaria.Close;
    qry_CtaBancaria.ParamByName('CODIGO').AsInteger := wcodigo;
    qry_CtaBancaria.Open;
  end;
  botoes;
  bbtn_Incluir.SetFocus;
end;

procedure TLCD_0104.bbtn_incluirClick(Sender: TObject);
begin
  Pn_Dados.Enabled := True;
  qry_CtaBancaria.Open;
  qry_CtaBancaria.Append;
  qry_CtaBancaria.FieldByName('CODIGO').AsInteger := 0;
  qry_CtaBancaria.FieldByName('FLG_SITUACAO').AsString := 'A';
  botoes;
  cxDBText_Nome.SetFocus;
end;

procedure TLCD_0104.bbtn_pesquisarClick(Sender: TObject);
begin
  Dlg_ContaBancaria := TDlg_ContaBancaria.Create(Self);
  if Dlg_ContaBancaria.ShowModal = MrOk  then
  begin
//    qry_CtaBancaria.Close;
    qry_CtaBancaria.Locate('CODIGO', Dlg_ContaBancaria.FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger);
//    qry_CtaBancaria.ParamByName('CODIGO').AsInteger := Dlg_ContaBancaria.FDQuery_Pesquisa.FieldByName('CODIGO').AsInteger;
  //  qry_CtaBancaria.Open;
    botoes;
  end;
  Dlg_ContaBancaria.Free;
end;

procedure TLCD_0104.bbtn_sairClick(Sender: TObject);
begin
  Close;
end;

end.
