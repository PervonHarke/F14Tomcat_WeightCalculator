unit mF14weightcalculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFm_Window_Main = class(TForm)
    Cb_AircraftType: TComboBox;
    Lb_Info_1: TLabel;
    Lb_Station_1A: TLabel;
    Lb_Station_2B: TLabel;
    Lb_Station_2: TLabel;
    Lb_Station_3: TLabel;
    Lb_Station_4: TLabel;
    Lb_Station_5: TLabel;
    Lb_Station_6: TLabel;
    Lb_Station_7: TLabel;
    Lb_Station_8B: TLabel;
    Lb_Station_8A: TLabel;
    Cb_Station_1A: TComboBox;
    Cb_Station_1B: TComboBox;
    Cb_Station_2: TComboBox;
    Cb_Station_3: TComboBox;
    Cb_Station_4: TComboBox;
    Cb_Station_5: TComboBox;
    Cb_Station_6: TComboBox;
    Cb_Station_7: TComboBox;
    Cb_Station_8B: TComboBox;
    Cb_Station_8A: TComboBox;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Fm_Window_Main: TFm_Window_Main;

implementation

{$R *.dfm}

end.
