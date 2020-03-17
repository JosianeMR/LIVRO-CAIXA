unit LCD0000;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TLCD_0000 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    ImportarArquivos1: TMenuItem;
    GerarLivro1: TMenuItem;
    Sair1: TMenuItem;
    Imveis1: TMenuItem;
    Declarante1: TMenuItem;
    Parceiros1: TMenuItem;
    ImportarSISFAZ1: TMenuItem;
    ImportarSensata1: TMenuItem;
    Movimentao1: TMenuItem;
    ContaBancria1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Imveis1Click(Sender: TObject);
    procedure Declarante1Click(Sender: TObject);
    procedure Parceiros1Click(Sender: TObject);
    procedure ImportarSISFAZ1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ContaBancria1Click(Sender: TObject);
    procedure Movimentao1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LCD_0000: TLCD_0000;

implementation

{$R *.dfm}

uses LCD0101, LCD0102, LCD0103, LCD0203, LCD0104, LCD0201;

procedure TLCD_0000.ContaBancria1Click(Sender: TObject);
begin
  LCD_0104 := TLCD_0104.Create(Self);
  LCD_0104.ShowModal;
  LCD_0104.free;
end;

procedure TLCD_0000.Declarante1Click(Sender: TObject);
begin
  LCD_0102 := TLCD_0102.Create(Self);
  LCD_0102.ShowModal;
  LCD_0102.free;
end;

procedure TLCD_0000.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TLCD_0000.ImportarSISFAZ1Click(Sender: TObject);
begin
  LCD_0201 := TLCD_0201.Create(Self);
  LCD_0201.ShowModal;
  LCD_0201.Destroy;
end;

procedure TLCD_0000.Imveis1Click(Sender: TObject);
begin
  LCD_0101 := TLCD_0101.Create(Self);
  LCD_0101.ShowModal;
  LCD_0101.Destroy;
end;

procedure TLCD_0000.Movimentao1Click(Sender: TObject);
begin
  LCD_0203 := TLCD_0203.Create(Self);
  LCD_0203.ShowModal;
  LCD_0203.Destroy;
end;

procedure TLCD_0000.Parceiros1Click(Sender: TObject);
begin
  LCD_0103 := TLCD_0103.Create(Self);
  LCD_0103.ShowModal;
  LCD_0103.Destroy;
end;

procedure TLCD_0000.Sair1Click(Sender: TObject);
begin
     Application.Terminate;
end;

end.
