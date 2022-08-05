unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  Tcampo = class(TForm)
    bola: TPanel;
    moverDireita: TTimer;
    Player1: TPanel;
    Player2: TPanel;
    moverEsquerda: TTimer;
    procedure moverDireitaTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure moverEsquerdaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  campo: Tcampo;

implementation

{$R *.dfm}
procedure colisaoPlayer2;
var
  corpo: integer;
begin
  corpo := campo.bola.Left + campo.bola.Width;
  if corpo >= campo.Player2.Left then
  begin
    campo.moverDireita.Enabled := False;
    campo.moverEsquerda.Enabled := True;
  end;
end;
procedure colisaoPlayer1;
var
  corpo: integer;
begin
  corpo := campo.bola.Left + campo.bola.Width;
  if corpo >= campo.Player1.Left then
  begin
    campo.moverDireita.Enabled := false;
    campo.moverEsquerda.Enabled := True;
  end;
end;
procedure Tcampo.moverDireitaTimer(Sender: TObject);
begin
 bola.Left := bola.Left +5;
 colisaoPlayer1;
end;

procedure Tcampo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 40 then
    begin
      Player1.Top := Player1.Top + 10;
    end;
  if key = 38 then
      Player1.Top := Player1.Top - 10;
end;

procedure Tcampo.moverEsquerdaTimer(Sender: TObject);
begin
  bola.Left := bola.Left - 5;
  colisaoPlayer2;
end;

end.
