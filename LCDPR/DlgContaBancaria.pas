unit DlgContaBancaria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, ComCtrls, StdCtrls, ExtCtrls, Buttons,
  IBX.IBCustomDataSet, IBX.IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDlg_ContaBancaria = class(TForm)
    ds_pesquisa: TDataSource;
    DBGrid1: TDBGrid;
    EdPesq: TEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    RG_pesquisa: TRadioGroup;
    RG_ordem: TRadioGroup;
    FDQuery_Pesquisa: TFDQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EdPesqChange(Sender: TObject);
    procedure RG_ordemClick(Sender: TObject);
    procedure RG_pesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    function RemoveAcento(Str: string): string;
    procedure FDQuery_PesquisaAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
    itamanho : integer;
  public
    { Public declarations }
  end;

var
  Dlg_ContaBancaria: TDlg_ContaBancaria;

implementation

uses Arquivos;

{$R *.DFM}

function TDlg_ContaBancaria.RemoveAcento(Str: string): string;
const
  ComAcento = '����������������������������';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
   x: Integer;
begin;
  for x := 1 to Length(Str) do
  if Pos(Str[x],ComAcento) <> 0 then
    Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  Result := Str;
end;

procedure TDlg_ContaBancaria.FDQuery_PesquisaAfterOpen(DataSet: TDataSet);
begin
  (FDQuery_Pesquisa.fieldbyname('CODIGO') As TIntegerfield).displayformat := '000000';
end;

procedure TDlg_ContaBancaria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssAlt]) and (Key = VK_F4) then Key := VK_Clear;
  if (key = VK_Return) and
     (FDQuery_Pesquisa.Active) and
     (FDQuery_Pesquisa.recordcount <> 0)
                     then ModalResult := mrOk;
  if key = vk_up     then FDQuery_Pesquisa.Prior;
  if key = vk_down   then FDQuery_Pesquisa.Next;
  if key = VK_Escape then ModalResult := mrCancel;
end;

procedure TDlg_ContaBancaria.FormShow(Sender: TObject);
begin
//  Caption := caption + '          '+ DM.sempresa;
  if RG_ordem.ItemIndex = 0 then itamanho := 1
  else itamanho := 0;
  EdPesq.Clear;
  EdPesq.SetFocus;
  FDQuery_Pesquisa.Open;
end;

procedure TDlg_ContaBancaria.EdPesqChange(Sender: TObject);
begin
  if Length(EdPesq.Text) > itamanho then
  begin
    FDQuery_Pesquisa.Close;
    FDQuery_Pesquisa.SQL.Clear;
    FDQuery_Pesquisa.SQL.Add('SELECT A.*, B.NOME NOME_BANCO, ');
    FDQuery_Pesquisa.SQL.Add('C.NOME NOME_DECLARANTE FROM CONTA_BANCARIA A ');
    FDQuery_Pesquisa.SQL.Add('JOIN BANCOS B ON (A.COD_BANCO = B.CODIGO) ');
    FDQuery_Pesquisa.SQL.Add('JOIN CONTRIBUINTE C ON (A.CODCONTRIB = C.CODIGO) ');
    if RG_ordem.ItemIndex = 0 then
    begin
      FDQuery_Pesquisa.SQL.Add('AND (UPPER(B.NOME_DECLARANTE) LIKE :N) ORDER BY B.NOME_DECLARANTE');
      if RG_pesquisa.ItemIndex = 0 then
         FDQuery_Pesquisa.ParamByName('N').AsString := AnsiUpperCase(EdPesq.Text)+'%'
      else
         FDQuery_Pesquisa.ParamByName('N').AsString := '%'+AnsiUpperCase(EdPesq.Text)+'%';
    end
    else
    begin
      FDQuery_Pesquisa.SQL.Add('AND (A.NRO_CONTA = :N) ORDER BY A.NRO_CONTA');
      FDQuery_Pesquisa.ParamByName('N').AsInteger := strtoint(EdPesq.Text);
    end;
    FDQuery_Pesquisa.Open;
  end;
end;

procedure TDlg_ContaBancaria.RG_ordemClick(Sender: TObject);
begin
  if RG_ordem.ItemIndex = 0 then
     itamanho := 1
  else
     itamanho := 0;
  EdPesq.setfocus;
end;

procedure TDlg_ContaBancaria.RG_pesquisaClick(Sender: TObject);
begin
  EdPesq.setfocus;
end;

procedure TDlg_ContaBancaria.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := Mrok;
end;


end.
