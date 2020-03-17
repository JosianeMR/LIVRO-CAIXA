unit DlgContribuiente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, ComCtrls, StdCtrls, ExtCtrls, Buttons,
  IBX.IBCustomDataSet, IBX.IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDlg_Contribuinte = class(TForm)
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
  Dlg_Contribuinte: TDlg_Contribuinte;

implementation

uses Arquivos;

{$R *.DFM}

function TDlg_Contribuinte.RemoveAcento(Str: string): string;
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

procedure TDlg_Contribuinte.FDQuery_PesquisaAfterOpen(DataSet: TDataSet);
begin
  (FDQuery_Pesquisa.fieldbyname('CODIGO') As TIntegerfield).displayformat := '000000';
end;

procedure TDlg_Contribuinte.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TDlg_Contribuinte.FormShow(Sender: TObject);
begin
//  Caption := caption + '          '+ DM.sempresa;
  if RG_ordem.ItemIndex = 0 then itamanho := 1
  else itamanho := 0;
  EdPesq.Clear;
  EdPesq.SetFocus;
  FDQuery_Pesquisa.Open;
end;

procedure TDlg_Contribuinte.EdPesqChange(Sender: TObject);
begin
  if Length(EdPesq.Text) > itamanho then
  begin
    FDQuery_Pesquisa.Close;
    FDQuery_Pesquisa.SQL.Clear;
    FDQuery_Pesquisa.SQL.Add('SELECT * FROM CONTRIBUINTE ');
    if RG_ordem.ItemIndex = 0 then
    begin
      FDQuery_Pesquisa.SQL.Add('AND (UPPER(A.NOME) LIKE :N) ORDER BY A.NOME');
      if RG_pesquisa.ItemIndex = 0 then
         FDQuery_Pesquisa.ParamByName('N').AsString := AnsiUpperCase(EdPesq.Text)+'%'
      else
         FDQuery_Pesquisa.ParamByName('N').AsString := '%'+AnsiUpperCase(EdPesq.Text)+'%';
    end
    else
    begin
      FDQuery_Pesquisa.SQL.Add('AND (A.ID_IBGE = :N) ORDER BY A.ID_IBGE');
      FDQuery_Pesquisa.ParamByName('N').AsInteger := strtoint(EdPesq.Text);
    end;
    FDQuery_Pesquisa.Open;
  end;
end;

procedure TDlg_Contribuinte.RG_ordemClick(Sender: TObject);
begin
  if RG_ordem.ItemIndex = 0 then
     itamanho := 1
  else
     itamanho := 0;
  EdPesq.setfocus;
end;

procedure TDlg_Contribuinte.RG_pesquisaClick(Sender: TObject);
begin
  EdPesq.setfocus;
end;

procedure TDlg_Contribuinte.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := Mrok;
end;


end.
