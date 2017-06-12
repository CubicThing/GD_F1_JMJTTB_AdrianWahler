program Pressiondiff;

uses
  Vcl.Forms,
  pressiondifficile in '..\PRESSION D\pressiondifficile.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
