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
    Left = 120
    Top = 160
    Width = 65
    Height = 65
  end
  object SValve2: TShape
    Left = 120
    Top = 575
    Width = 65
    Height = 65
  end
  object SValve3: TShape
    Left = 824
    Top = 160
    Width = 65
    Height = 65
  end
  object SValve4: TShape
    Left = 824
    Top = 575
    Width = 65
    Height = 65
  end
  object Player: TShape
    Left = 504
    Top = 350
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
    Left = 488
    Top = 663
    Width = 65
    Height = 65
  end
  object ProgressBar1: TProgressBar
    Left = 120
    Top = 231
    Width = 65
    Height = 21
    Max = 10000
    Step = 7
    TabOrder = 0
  end
  object ProgressBar2: TProgressBar
    Left = 120
    Top = 548
    Width = 65
    Height = 21
    Max = 10000
    Step = 7
    TabOrder = 1
  end
  object ProgressBar3: TProgressBar
    Left = 824
    Top = 231
    Width = 65
    Height = 21
    Max = 10000
    Step = 7
    TabOrder = 2
  end
  object ProgressBar4: TProgressBar
    Left = 824
    Top = 548
    Width = 65
    Height = 21
    Max = 10000
    Step = 7
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
    Left = 488
    Top = 636
    Width = 65
    Height = 21
    Max = 10000
    Step = 7
    TabOrder = 5
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 96
    Top = 96
  end
  object NewValve: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = NewValveTimer
    Left = 899
    Top = 128
  end
  object TTEmps: TTimer
    Enabled = False
    OnTimer = TTEmpsTimer
    Left = 448
    Top = 64
  end
  object TCountDown: TTimer
    OnTimer = TCountDownTimer
    Left = 496
    Top = 712
  end
end
