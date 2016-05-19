unit uAtualizacaoProcesso;

interface

uses
  Classes, SysUtils;

type
  TAtualizacaoProcesso = class(TThread)
  private
    { Private Declarations }
  protected
    { Protected Declarations }

    procedure Execute; override;
  public

    procedure Resume;
  end;

implementation

uses Forms, Dialogs;

{ TAtualizacaoProcesso }

procedure TAtualizacaoProcesso.Execute;
begin
  try
    repeat
      Application.ProcessMessages;
    until Self.Terminated;
  except on e : exception do
    ShowMessage('Exce��o ao Atualizar Interface da aplica��o: Mensagem: ' + e.Message);
  end;
end;

procedure TAtualizacaoProcesso.resume;
begin
  inherited;

  Execute;
end;

end.
