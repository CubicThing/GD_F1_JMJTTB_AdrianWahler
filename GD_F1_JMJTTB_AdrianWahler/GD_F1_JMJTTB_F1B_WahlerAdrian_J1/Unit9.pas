unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.ComCtrls;
CONST

DIFF = 10;

type
  TForm9 = class(TForm)
    LName: TLabel;
    LScore: TLabel;
    Image1: TImage;
    IOpponent: TImage;
    SVisor: TShape;
    TStartup: TTimer;
    TGameTick: TTimer;
    TDirectionChange: TTimer;
    LTimer: TLabel;
    ProgressBar1: TProgressBar;
    procedure TStartupTimer(Sender: TObject);
    procedure TDirectionChangeTimer(Sender: TObject);
    procedure TGameTickTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form9: TForm9;
  countdown : integer;
  x : integer;
  y : integer;
  xMov : integer;
  yMov : integer;
  PlayerTotalScore : integer;
  timep : integer;

implementation

{$R *.dfm}


procedure TForm9.FormCreate(Sender: TObject);
begin
//120 x 260
IOpponent.Height := 260 - (diff * 6);
IOpponent.Width :=  130 - (diff * 3)
end;

procedure TForm9.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 81 then
  xmov := diff * -1;

 if Key = 90 then
  ymov := diff * -1;

 if Key = 83 then
  ymov := diff;

 if Key = 68 then
  xmov := diff;
end;

procedure TForm9.TDirectionChangeTimer(Sender: TObject);
begin
  x := random(diff) - diff div 2;
  y := random(diff) - diff div 2;
end;

procedure TForm9.TGameTickTimer(Sender: TObject);
begin
  SVisor.Left := SVisor.Left + x + xmov;
  SVisor.Top := SVisor.Top + y + ymov;

  if (((Svisor.top) + (Svisor.Height div 2) >= (IOpponent.Top)) AND
  ((Svisor.top) + (Svisor.Height div 2) <= (IOpponent.Top + IOpponent.Height))) AND
  (((Svisor.left) + (Svisor.Width div 2) >= (IOpponent.left)) AND
  ((Svisor.left) + (Svisor.Width div 2) <= (IOpponent.left + IOpponent.width))) then PlayerTotalScore := PLayerTotalScore + 1;

  LScore.Caption := IntToStr(PlayerTotalScore);

  Timep := timep +1 ;
  ProgressBar1.Position := 1000 - timep;

  if timeP = 1000 then
  BEGIN
    TGameTick.Enabled := FALSE;
    TDirectionChange.Enabled := FALSE;

    if (((Svisor.top) + (Svisor.Height div 2) >= (IOpponent.Top)) AND
  ((Svisor.top) + (Svisor.Height div 2) <= (IOpponent.Top + IOpponent.Height))) AND
  (((Svisor.left) + (Svisor.Width div 2) >= (IOpponent.left)) AND
  ((Svisor.left) + (Svisor.Width div 2) <= (IOpponent.left + IOpponent.width))) then
  BEGIN
    Ltimer.Caption := 'Vous avez touch� l''enemi; + 500 points!';
    PlayerTotalScore := PlayerTotalScore + 400;
    LScore.Caption := IntToStr(PlayerTotalScore);
  END
  else
    Ltimer.Caption := 'Vous avez loup� l''adversaire!';
  END;

end;

procedure TForm9.TStartupTimer(Sender: TObject);
begin

  case countdown of
  0 :BEGIN
    LTimer.caption := '3';
    countdown := countdown + 1;
  END;

  1 :BEGIN
    LTimer.caption := '2';
    countdown := countdown + 1;
  END;

  2 :BEGIN
    LTimer.caption := '1';
    countdown := countdown + 1;
  END;

  3 :BEGIN
    LTimer.caption := 'VISE!';
    TGameTick.Enabled := TRUE;
    TDirectionChange.Enabled := TRUE;
    TStartup.enabled := FALSE;
  END;
  end;

end;

end.
