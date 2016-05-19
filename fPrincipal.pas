unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uComponentNaoVisual,
  uComponenteVisual, uThread, EditVisual2;

type
  tyPalavra = string[255];
  //Dll Din�mica
  tyCodificar = function(strPalavra : tyPalavra) : tyPalavra; stdCall;

  tyfCodificar = function(strParam : tyPalavra) : tyPalavra; stdCall;

  TyRecord = record
    codigo : Integer;
    descricao : String;
  end;

  TyMinhaExcecao = Exception;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComponentNaoVisual1: TComponentNaoVisual;
    LabelComponenteVisual1: TLabelComponenteVisual;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit21: TEdit2;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }

    VarRecord : TyRecord;

    procedure pMensagem;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses {uTeste, }frmTeste2, uClasseHerda;

{$R *.dfm}

//Dll Est�tica
function Codificar(strParam : tyPalavra) : tyPalavra; stdCall; external 'DllProject.dll';

{ TForm1 }

procedure TForm1.Button10Click(Sender: TObject);
begin
//  LabelComponenteVisual1.BooTeste := True;
  LabelComponenteVisual1.Mensagem('julio');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  pMensagem;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(Codificar('Julio'));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Handle : THandle;
  Codificar : tyCodificar;
  StrTexto : String;
begin
  Handle := LoadLibrary('DllProject.dll');
  try
    if Handle = 0 then
      Exit;

    @Codificar := GetProcAddress(Handle, 'Codificar');
    if @Codificar = nil then
      Exit;
    StrTexto := Codificar('Julio');
    ShowMessage(StrTexto);
  finally
    FreeLibrary(Handle);
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  Handle : THandle;
  fCodificar : tyfCodificar;
begin
  Handle := SafeLoadLibrary('DllProject2.dll');
  try
    if Handle = 0 then
      Exit;

    @fCodificar := GetProcAddress(Handle, 'fCodificar');

    if @fCodificar = nil then
      Exit;

    ShowMessage(Codificar('JULIO'));
  finally
    FreeLibrary(Handle);
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  objThread : TClasseThread;
begin
  objThread := TClasseThread.Create(True);
  try
    objThread.FreeOnTerminate := False;
    objThread.pInitThread;
    objThread.Resume;

  finally
    objThread.Terminate;
    objThread.Destroy;
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  try
    raise Exception.Create('Erro Teste');
  except on EMathError do ShowMessage('Teste');
         on EDivByZero do ShowMessage('Teste');
         on e : Exception do ShowMessage(e.Message);
  else
    raise;//ShowMessage('Exce��o n�o suportada');
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i : Integer;
begin
  try
    try

      i := StrToInt('1/5');

   { except on e : exception do
      begin
        ShowMessage('Erro');
      end;
    end; }

    {except on e : EConvertError do
      begin
        ShowMessage('Erro: ' + e.Message);
      end;
    end;}

    except on e : EConvertError do raise;//ShowMessage('Teste Convers�o Erro Criado: ' + e.Message);
           on e : EDivByZero do ShowMessage('Teste Divis�o Erro Criado: ' + e.Message);
           on e : Exception do ShowMessage('Teste Erro Criado: ' + e.Message);
    end;
  except on e : exception
    do begin
      ShowMessage(e.Message + ' Bloco Final ');
    end;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  frmForm : TfrmTeste;
begin
  frmForm := TfrmTeste.Create(Application);
  try
    frmForm.ShowModal;

    if frmForm.ModalResult = mrOk then
      ShowMessage('MrOk')
    else
      ShowMessage('Mr Cancel');
  finally
    if Assigned(frmForm) then
      FreeAndNil(frmForm);
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  objHerda : TClasseTeste;
begin
  objHerda := TClasseTeste.Create;
  try
    objHerda.pAtz;
  finally
    objHerda.Destroy;
  end;
end;

procedure TForm1.pMensagem;
//var
  //objFigura : TFigura;
  //objLista : TStringList;
  //objListaItem : TStringItemList;?}
begin
  {//ShowMessage('Hello World');

  objLista := TStringList.Create;
  objLista.Add('TESTE');
  ShowMessage(objLista[0]);
  objLista.Delete(0);

  FreeAndNil(objLista);

  objFigura := TFigura.Create;
  try
    //objFigura.pPintar(1);
  finally
    if Assigned(objFigura) then
      FreeAndNil(objFigura);
  end;}
end;

end.
