program JOGO;

uses
  Forms,
  Unit1 in 'Unit1.pas' {campo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tcampo, campo);
  Application.Run;
end.
