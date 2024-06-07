unit uCarEsp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.RegularExpressions;

type
  TFCarEsp = class(TForm)
    btnmemoria: TButton;
    mmmemoria: TMemo;
    mmtexto: TMemo;
    btnchange: TButton;
    edttexto: TEdit;
    procedure btnmemoriaClick(Sender: TObject);
    procedure btnchangeClick(Sender: TObject);
  private
    { Private declarations }
    function fRemoveFormatoCarEsp(Texto: string): string;
  public
    { Public declarations }
  end;

var
  FCarEsp: TFCarEsp;

implementation

{$R *.dfm}

procedure TFCarEsp.btnchangeClick(Sender: TObject);
var
  sTexto: String;
begin

  sTexto := edttexto.Text;

  mmtexto.Clear;

  mmtexto.Lines.Text := mmtexto.Lines.Text + 'Op1: '
  + fRemoveFormatoCarEsp(sTexto) + sLineBreak;

  mmtexto.Lines.Text := mmtexto.Lines.Text + 'Op2: '
  +  TRegEx.Replace(sTexto, '[!@#$%�&*()]', '') + sLineBreak;

    mmtexto.Lines.Text := mmtexto.Lines.Text + 'Op3: '
    + sTexto.Replace(')', '10');
end;

procedure TFCarEsp.btnmemoriaClick(Sender: TObject);
var
  S: string;
  MemoryUsed: Integer;
begin
  // Define a string com espa�os em branco
  S := 'Delphi';

  // Calcula a mem�ria usada pela string em bytes
  // Cada caractere Unicode em Delphi ocupa 2 bytes
  MemoryUsed := Length(S) * SizeOf(Char);

  // Limpa o Memo
  mmmemoria.Clear;

  // Exibe a string e o uso de mem�ria
  mmmemoria.Lines.Add('String: "' + S + '"');
  mmmemoria.Lines.Add('Comprimento da string: ' + IntToStr(Length(S)) + ' caracteres');
  mmmemoria.Lines.Add('Mem�ria usada pela string: ' + IntToStr(MemoryUsed) + ' bytes');


end;

function TFCarEsp.fRemoveFormatoCarEsp(Texto: string): string;
var
  Aux: string;
begin

  Aux := Texto;
  Aux := StringReplace(Aux, '/', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, ',', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '.', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, ':', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '-', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '(', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, ')', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '�', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '�', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '�', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '-', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '*', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '&', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '�', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '%', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '$', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '#', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '@', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '!', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '_', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '=', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '+', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '"', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '�', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '`', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '�', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, ';', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '<', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '>', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, ',', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '{', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '}', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '[', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, ']', '', [rfReplaceAll]);
  Aux := StringReplace(Aux, '\', '', [rfReplaceAll]);

  fRemoveFormatoCarEsp := Aux;

end;


end.
