program CarEsp;

uses
  Vcl.Forms,
  uCarEsp in 'uCarEsp.pas' {TForm8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFCarEsp, FCarEsp);
  Application.Run;
end.
