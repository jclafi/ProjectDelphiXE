unit uComponenteVisual;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, vcl.dialogs;

type
  TLabelComponenteVisual = class(TLabel)
  private
    { Private declarations }

    FBooTeste : Boolean;
  protected
    { Protected declarations }
  public
    { Public declarations }

    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }

    procedure Mensagem(strtexto : String);

    property BooTeste : Boolean read FBooTeste write FBooTeste;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TLabelComponenteVisual]);
end;

{ TLabelComponenteVisual }

constructor TLabelComponenteVisual.Create(AOwner: TComponent);
begin
  FBooTeste := False;

  inherited;
end;

procedure TLabelComponenteVisual.Mensagem(strtexto: String);
begin
  ShowMessage(strtexto + ' ' + BoolToStr(FBooTeste));
end;

end.
