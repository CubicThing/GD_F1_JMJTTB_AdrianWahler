unit pressionfacile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    SValve1: TShape;
    SValve2: TShape;
    SValve3: TShape;
    SValve4: TShape;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    ProgressBar4: TProgressBar;
    Player: TShape;
    Label1: TLabel;
    Timer1: TTimer;
    LMoyen: TLabel;
    NewValve: TTimer;
    LScore: TLabel;
    PTime: TProgressBar;
    TTEmps: TTimer;
    LTImeUp: TLabel;
    TCountDown: TTimer;
    Svalve5: TShape;
    ProgressBar5: TProgressBar;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure NewValveTimer(Sender: TObject);
    procedure TTEmpsTimer(Sender: TObject);
    procedure TCountDownTimer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form9: TForm9;
  xaxis : integer;
  yaxis : integer;
  valve1 : boolean;
  valve2 : boolean;
  valve3 : boolean;
  valve4 : boolean;
  valve5 : boolean;
  PlayerTotalScore : integer;
  gameend : boolean;
  time : integer;
  countdown : integer;

implementation

{$R *.dfm}


procedure TForm9.FormCreate(Sender: TObject);
var
  r : integer;
begin
  countdown := 1;
  r := trunc(random(5)+1);
  case r of
    1:  valve1 := true;
    2:  valve2 := true;
    3:  valve3 := true;
    4:  valve4 := true;
    5:  valve4 := true;
    else valve1 := true;
  end;
  time := 600;
end;

procedure TForm9.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if not gameend then
BEGIN

 if Key = 81 then
  xaxis := -6;

 if Key = 90 then
  yaxis := -6;

 if Key = 83 then
  yaxis := +6;

 if Key = 68 then
  xaxis := +6;

  if key = VK_Space then
  if (progressbar1.position > 0) AND (player.Left >= SValve1.Left) AND (player.Left <= SValve1.Left+65) AND (player.Top >= SValve1.Top) AND (player.Top <= SValve1.Top+65) then
  BEGIN
    progressbar1.position := progressbar1.Position - 1000;
    if progressbar1.Position <= 0 then
    BEGIN
      valve1 := false;
      PlayerTotalScore := PlayerTotalScore + 100;
    END;
  END;

  if key = VK_Space then
  if (progressbar2.position > 0) AND (player.Left >= SValve2.Left) AND (player.Left <= SValve2.Left+65) AND (player.Top >= SValve2.Top) AND (player.Top <= SValve2.Top+65) then
  BEGIN
    progressbar2.position := progressbar2.Position - 1000;
    if progressbar2.Position <= 0 then
    BEGIN
      valve2 := false;
      PlayerTotalScore := PlayerTotalScore + 100;
    END;
  END;

  if key = VK_Space then
  if (progressbar3.position > 0) AND (player.Left >= SValve3.Left) AND (player.Left <= SValve3.Left+65) AND (player.Top >= SValve3.Top) AND (player.Top <= SValve3.Top+65) then
  BEGIN
    progressbar3.position := progressbar3.Position - 1000;
    if progressbar3.Position <= 0 then
    begin
      valve3 := false;
      PlayerTotalScore := PlayerTotalScore + 100;
    end;
  END;

  if key = VK_Space then
if (progressbar4.position > 0) AND (player.Left >= SValve4.Left) AND (player.Left <= SValve4.Left+65) AND (player.Top >= SValve4.Top) AND (player.Top <= SValve4.Top+65) then
  BEGIN
    progressbar4.position := progressbar4.Position - 1000;
    if progressbar4.Position <= 0 then
    begin
      valve4 := false;
      PlayerTotalScore := PlayerTotalScore + 100;
    end;
  END;
END;

  if key = VK_Space then
if (progressbar5.position > 0) AND (player.Left >= SValve5.Left) AND (player.Left <= SValve5.Left+65) AND (player.Top >= SValve5.Top) AND (player.Top <= SValve5.Top+65) then
  BEGIN
    progressbar5.position := progressbar5.position - 1000;
    if progressbar5.Position <= 0 then
    begin
      valve5 := false;
      PlayerTotalScore := PlayerTotalScore + 100;
    end;
  END;
END;

procedure TForm9.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = 81 then
  xaxis := 0;

 if Key = 90 then
  yaxis := 0;

 if Key = 83 then
  yaxis := 0;

 if Key = 68 then
  xaxis := 0;
end;

procedure TForm9.NewValveTimer(Sender: TObject);
var
  r : integer;
begin
  r := trunc(random(5)+1);
  case r of
    1:  valve1 := true;
    2:  valve2 := true;
    3:  valve3 := true;
    4:  valve4 := true;
    5:  valve5 := true;
    else valve1 := true;

end;
end;

procedure TForm9.TCountDownTimer(Sender: TObject);
VAR
i : integer;
begin

case countdown of

4:BEGIN
  LTImeUp.Caption := 'REPARE!';
  countdown := countdown+1;
  TCOuntdown.Enabled := false;
  Timer1.Enabled := true;
  NewValve.Enabled := true;
  TTemps.Enabled := true;
END;

3:BEGIN
  LTImeUp.Caption := IntToStr(1);
  countdown := countdown+1;
END;

2:BEGIN
  LTImeUp.Caption := IntToStr(2);
  countdown := countdown+1;
END;

1:BEGIN
  LTimeUp.Caption := IntToStr(3);
  countdown := countdown+1;
END;

end;
end;

procedure TForm9.Timer1Timer(Sender: TObject);
begin
player.Left := player.Left + xaxis;
player.Top := player.Top + yaxis;
LScore.Caption := inttostr(PlayerTotalScore);
if valve1 = true then
  ProgressBar1.StepIt;
  if progressbar1.Position > progressBar1.Max - 10 then
  BEGIN
    Valve1 := FALSE;
    Time := Time - 100;
    progressbar1.position := 0;
  END;

if valve2 = true then
  ProgressBar2.StepIt;
    if progressbar2.Position > progressBar2.Max - 10 then
  BEGIN
    Valve2 := FALSE;
    Time := Time - 100;
    progressbar2.position := 0;
  END;

if valve3 = true then
  ProgressBar3.StepIt;
    if progressbar3.Position > progressBar3.Max - 10 then
  BEGIN
    Valve3 := FALSE;
    Time := Time - 100;
    progressbar3.position := 0;
  END;

if valve4 = true then
  ProgressBar4.StepIt;
    if progressbar4.Position > progressBar4.Max - 10 then
  BEGIN
    Valve4 := FALSE;
    Time := Time - 100;
    progressbar4.position := 0;
  END;

if valve5 = true then
  ProgressBar5.StepIt;
    if progressbar5.Position > progressBar5.Max - 10 then
  BEGIN
    Valve5 := FALSE;
    Time := Time - 100;
    progressbar4.position := 0;
  END;


end;



procedure TForm9.TTEmpsTimer(Sender: TObject);
begin
  Time := Time -10;
  PTIme.Position := time;
  if Ptime.Position <= 0 then
  BEGIN
    gameend := true;
    LTimeUp.Visible := true;
  END;


end;

end.
