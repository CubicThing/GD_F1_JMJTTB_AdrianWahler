unit SlashMoyen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm9 = class(TForm)
    IPlayer: TImage;
    IGoblin: TImage;
    LScore: TLabel;
    IWarning: TImage;
    IFlame: TImage;
    TGolbin: TTimer;
    TFlame: TTimer;
    TGameTick: TTimer;
    LDead: TLabel;
    Label1: TLabel;
    PTime: TProgressBar;
    Timer1: TTimer;
    TImeUp: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure TGolbinTimer(Sender: TObject);
    procedure TGameTickTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TFlameTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form9: TForm9;
  PlayerTotalScore : integer;
  CurrentScore : Integer;
  duck : boolean;
  time : integer;
  goblinhp: integer;
  life : integer;

implementation

{$R *.dfm}

procedure TForm9.FormCreate(Sender: TObject);
begin
  LScore.caption := inttostr(PlayerTOtalScore);
  time := 6000;
  life := 3;
end;

procedure TForm9.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = ' ' then
    if (igoblin.visible = true) AND (duck = false) then
    BEGIN
    goblinhp := goblinhp - 1;
    if goblinhp = 0 then
    BEGIN
      igoblin.visible := false;
      PLayerTotalScore := PLayerTotalScore + CurrentScore;
      TGolbin.Interval := trunc(random(1500)+1000);
    END;
    END;

  if key = 's' then
    duck := TRUE;
end;

procedure TForm9.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 83 then
    duck := false;
end;

procedure TForm9.TFlameTimer(Sender: TObject);
begin
   if iflame.Visible = true then
  BEGIN
    iflame.Visible := false;
    TFLame.Interval := 3500;
  END

  else  if (iwarning.Visible = false) AND (iflame.Visible = false) then
  BEGIN
    iwarning.Visible := true;
    TFLame.Interval := 700;
  END

  else  if iwarning.Visible = true then
  BEGIN
    iwarning.Visible := false;
    iflame.Visible := true;
    tflame.Interval := 500;
    if duck = false then
    BEGIN
    life := life - 1;
      if life = 0 then
      BEGIN
      TGolbin.Enabled := false;
      TFlame.Enabled := false;
      LDead.Visible := true;
      IPlayer.Visible := false;
      Time := 200;
      END;
    END;
  END;

end;

procedure TForm9.TGameTickTimer(Sender: TObject);
begin
  if CurrentScore > 0 then CurrentScore := CurrentScore - 1;
  LScore.Caption := inttostr(PlayerTotalScore);

  if ((currentscore = 0) AND (IGoblin.Visible)) then
   BEGIN
    life := life - 1;
    IGoblin.Visible := false;
      if life = 0 then
      BEGIN
      TGolbin.Enabled := false;
      TFlame.Enabled := false;
      LDead.Visible := true;
      IPlayer.Visible := false;
      Time := 200;
      IGoblin.Visible := false;
      END;
    END;

  if duck = true then iplayer.top := 340
  else iplayer.top := 140;

  form9.Caption := IntToStr(life);
end;

procedure TForm9.TGolbinTimer(Sender: TObject);
begin
  if IGoblin.Visible = FALSE then
  BEGIN
    IGoblin.Visible := true;
    CurrentScore := 100;
    goblinhp := 3;
  END;
end;

procedure TForm9.Timer1Timer(Sender: TObject);
begin
  time := time -100;
  PTime.position := time;
  if time <= 0 then
  BEGIN
      TGolbin.Enabled := false;
      TFlame.Enabled := false;
      TimeUp.visible := true;
  END;
end;

end.
