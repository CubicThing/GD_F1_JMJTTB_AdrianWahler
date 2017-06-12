program SlasherFacile;

uses
  Vcl.Forms,
  SlashFacile in 'SlashFacile.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
