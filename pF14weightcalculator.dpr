program pF14weightcalculator;

uses
  Vcl.Forms,
  mF14weightcalculator in 'mF14weightcalculator.pas' {Fm_Window_Main};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFm_Window_Main, Fm_Window_Main);
  Application.Run;
end.
