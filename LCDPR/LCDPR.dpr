program LCDPR;

uses
  Vcl.Forms,
  LCD0102 in 'LCD0102.pas' {LCD_0102},
  LCD0000 in 'LCD0000.pas' {LCD_0000},
  LCD0101 in 'LCD0101.pas' {LCD_0101},
  LCD0104 in 'LCD0104.pas' {LCD_0104},
  DlgTipoExportacao in 'DlgTipoExportacao.pas' {Dlg_TipoExportacao},
  Arquivos in 'Arquivos.pas' {DM: TDataModule},
  DlgCidades in 'DlgCidades.pas' {Dlg_Cidades},
  DlgFazendas in 'DlgFazendas.pas' {Dlg_Fazendas},
  DlgContaBancaria in 'DlgContaBancaria.pas' {Dlg_ContaBancaria},
  DlgParceiros in 'DlgParceiros.pas' {Dlg_Parceiros},
  LCD0201 in 'LCD0201.pas' {LCD_0201},
  DlgImoveis in 'DlgImoveis.pas' {Dlg_Imoveis},
  LCD0103 in 'LCD0103.pas' {LCD_0103},
  LCD0203 in 'LCD0203.pas' {LCD_0203};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TLCD_0000, LCD_0000);
  Application.CreateForm(TLCD_0203, LCD_0203);
  Application.Run;
end.
