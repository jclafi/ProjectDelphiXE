unit uFormApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uForm2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  with TForm2.Create(Application) do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  FFormTST : TForm2;
begin
  FFormTST := TForm2.Create(Application);
  try
    FFormTST.ShowModal;
  finally
    if Assigned(FFormTST) then
      FreeAndNil(FFormTST);
  end;
end;

end.