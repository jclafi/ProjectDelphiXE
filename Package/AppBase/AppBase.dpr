program AppBase;

uses
  Vcl.Forms,
  uForm1 in 'uForm1.pas' {Form1},
  uForm2 in 'uForm2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
