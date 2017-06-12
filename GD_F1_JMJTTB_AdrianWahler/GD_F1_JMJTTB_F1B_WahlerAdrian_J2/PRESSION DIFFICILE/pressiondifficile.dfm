object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 768
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  PixelsPerInch = 120
  TextHeight = 16
  object SValve1: TShape
    Left = 8
    Top = 80
    Width = 65
    Height = 65
  end
  object SValve2: TShape
    Left = 8
    Top = 695
    Width = 65
    Height = 65
  end
  object SValve3: TShape
    Left = 951
    Top = 80
    Width = 65
    Height = 65
  end
  object SValve4: TShape
    Left = 951
    Top = 695
    Width = 65
    Height = 65
  end
  object Player: TShape
    Left = 472
    Top = 430
    Width = 57
    Height = 49
    Shape = stCircle
  end
  object Label1: TLabel
    Left = 63
    Top = 21
    Width = 101
    Height = 16
    Caption = 'Trop de pression!'
  end
  object LMoyen: TLabel
    Left = 16
    Top = 21
    Width = 40
    Height = 16
    Caption = 'FACILE'
  end
  object LScore: TLabel
    Left = 968
    Top = 21
    Width = 4
    Height = 16
  end
  object LTImeUp: TLabel
    Left = 504
    Top = 328
    Width = 36
    Height = 16
    Caption = 'PRET?'
  end
  object SValve5: TShape
    Left = 464
    Top = 695
    Width = 65
    Height = 65
  end
  object SValve6: TShape
    Left = 464
    Top = 80
    Width = 65
    Height = 65
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 151
    Width = 65
    Height = 21
    Max = 10000
    Step = 9
    TabOrder = 0
  end
  object ProgressBar2: TProgressBar
    Left = 8
    Top = 668
    Width = 65
    Height = 21
    Max = 10000
    Step = 9
    TabOrder = 1
  end
  object ProgressBar3: TProgressBar
    Left = 951
    Top = 151
    Width = 65
    Height = 21
    Max = 10000
    Step = 9
    TabOrder = 2
  end
  object ProgressBar4: TProgressBar
    Left = 951
    Top = 668
    Width = 65
    Height = 21
    Max = 10000
    Step = 9
    TabOrder = 3
  end
  object PTime: TProgressBar
    Left = 280
    Top = 16
    Width = 601
    Height = 21
    Max = 600
    Step = -10
    TabOrder = 4
  end
  object ProgressBar5: TProgressBar
    Left = 464
    Top = 668
    Width = 65
    Height = 21
    Max = 10000
    Step = 9
    TabOrder = 5
  end
  object ProgressBar6: TProgressBar
    Left = 464
    Top = 151
    Width = 65
    Height = 21
    Max = 10000
    Step = 9
    TabOrder = 6
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 968
    Top = 16
  end
  object NewValve: TTimer
    Enabled = False
    Interval = 1800
    OnTimer = NewValveTimer
    Left = 891
    Top = 16
  end
  object TTEmps: TTimer
    Enabled = False
    OnTimer = TTEmpsTimer
    Left = 928
    Top = 16
  end
  object TCountDown: TTimer
    OnTimer = TCountDownTimer
    Left = 432
    Top = 696
  end
end
