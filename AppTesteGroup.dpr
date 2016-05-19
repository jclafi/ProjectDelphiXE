program AppTesteGroup;

uses
  Vcl.Forms,
  fPrincipal in 'fPrincipal.pas' {Form1},
  uClasseHerda in 'uClasseHerda.pas',
  uThread in 'uThread.pas',
  fForm2 in 'fForm2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
