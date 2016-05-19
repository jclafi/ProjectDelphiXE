unit frmTeste2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTeste = class(TForm)
    Ok: TButton;
    Cancel: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTeste: TfrmTeste;

implementation

{$R *.dfm}

procedure TfrmTeste.Button1Click(Sender: TObject);
var
  svariante : Variant;
begin
  svariante := 1;
  svariante := svariante + '2';

  ShowMessage(VarToStr(svariante));
end;

procedure TfrmTeste.Button2Click(Sender: TObject);
var
  ssarray : array of variant;
  i, j : Integer;
begin
  j := 0;
  SetLength(ssarray, 5);

  //for I := 0 to High(ssarray) do
  for I := 0 to Length(ssarray) -1 do
  begin
    Inc(j);
    ssarray[i] := 'TESTE_' + IntToStr(j);
  end;

  for I := 0 to High(ssarray) do
    ShowMessage(ssarray[i]);
end;

procedure TfrmTeste.Button3Click(Sender: TObject);
var
  ssarray : variant;
  sshigh : Integer;
  ssi : Integer;
begin
  ssarray := VarArrayCreate([0, 9], varInteger);
  try
    sshigh := VarArrayHighBound(ssarray, 1);
    ssi := VarArrayLowBound(ssarray, 1);

    while ssi <= sshigh do
    begin
      ssarray[ssi] := ssi;
      ShowMessage(IntToStr(ssarray[ssi]));

      Inc(ssi);
    end;
  finally
    VarClear(ssarray);
  end;
end;

end.
