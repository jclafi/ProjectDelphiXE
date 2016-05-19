unit uTeste;

interface

uses Dialogs;

type
  TFigura = class
    protected
      FLado : String;

      procedure pPintar(p : integer); overload;
      procedure pPintar(p : String); overload;

      procedure pAtz; virtual; abstract;
    public
      constructor Create(); virtual; abstract;
      destructor Destroy(); virtual; abstract;
  end;

  TCirculo = class
  private
    procedure pPintar(p : integer); overload;
    procedure pPintar(p : String); overload;
    procedure pAtz; virtual; abstract;
  public
    procedure pPintou(p : String);
  end;

implementation

{ TFigura }

procedure TFigura.pPintar(p : integer);
begin
  ShowMessage('TFigua');
end;

procedure TFigura.pPintar(p : String);
begin
  ShowMessage('TFigua');
end;

{ TCirculo }

procedure TCirculo.pPintar(p: integer);
begin
  ShowMessage('Overload');
end;

procedure TCirculo.pPintar(p: String);
begin
  ShowMessage('Overload');
end;

procedure TCirculo.pPintou(p: String);
begin
  ShowMessage('Pintou');
end;

end.
