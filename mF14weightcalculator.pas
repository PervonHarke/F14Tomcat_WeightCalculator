unit mF14weightcalculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

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
    Tb_Fuel: TTrackBar;
    Lb_FuelWeight: TLabel;
    Ed_FuelWeight: TEdit;
    Lb_FuelPercent: TLabel;
    Ed_Totalweight: TEdit;
    Lb_Info_2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Tb_FuelChange(Sender: TObject);
    procedure Cb_AircraftTypeChange(Sender: TObject);
    procedure Cb_Station_1AChange(Sender: TObject);
    procedure Cb_Station_1BChange(Sender: TObject);
    procedure Cb_Station_2Change(Sender: TObject);
    procedure Cb_Station_3Change(Sender: TObject);
    procedure Cb_Station_4Change(Sender: TObject);
    procedure Cb_Station_5Change(Sender: TObject);
    procedure Cb_Station_6Change(Sender: TObject);
    procedure Cb_Station_7Change(Sender: TObject);
    procedure Cb_Station_8AChange(Sender: TObject);
    procedure Cb_Station_8BChange(Sender: TObject);
  private
    { Private-Deklarationen }
    F14BWEIGHT,F14AWEIGHT, Aim9L, Aim9M, Aim7M, Aim54AMk47, Aim54AMk60, Aim54CMk47, Mk81, Mk82, Mk82SnakeEye, Mk82AIR, Mk83, GBU10, Mk84, Mk20, BDU33, ZUNIMk71, GBU12, GBU24, GBU16, ADM141A, fueltankfull, fueltankempty, TCTSPod, fuel, fuelinput : Integer;
    weighttotal : Real;

    // Procedures
    procedure CalculateWeight;



  public
    { Public-Deklarationen }
  end;

var
  Fm_Window_Main: TFm_Window_Main;

implementation
{$R *.dfm}

// On Change calling the "Calculate Weight" procedure.
procedure TFm_Window_Main.Cb_AircraftTypeChange(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_1AChange(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_1BChange(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_2Change(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_3Change(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_4Change(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_5Change(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_6Change(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_7Change(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_8AChange(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Cb_Station_8BChange(Sender: TObject);
begin
CalculateWeight;
end;

procedure TFm_Window_Main.Tb_FuelChange(Sender: TObject);
begin
CalculateWeight;
end;


//Setting up all the variables with correct values
procedure TFm_Window_Main.FormCreate(Sender: TObject);
begin
Aim9L         := 190;
Aim9M         := 192;
Aim7M         := 626;
Aim54AMk47    := 1078;
Aim54AMk60    := 1140;
Aim54CMk47    := 1127;
Mk81     	    := 282;
Mk82     	    := 657;
Mk82AIR 	    := 657;
Mk82SnakeEye  := 657;
Mk83          := 1111;
Mk84     	    := 2097;
Mk20     	    := 615;
BDU33		      := 160;
ZUNIMk71	    := 293;
GBU12		      := 732;
GBU24 		    := 1369;
GBU16		      := 2441;
GBU10         :=0;
ADM141A	      := 805;
fueltankfull  := 2113;
fueltankempty := 154;
TCTSPod       := 139;
F14BWeight := 44040;
F14AWeight := 40104;
CalculateWeight;
end;




// === private ===


//Calculate Weight Procedure
procedure TFm_Window_Main.CalculateWeight;
var a,b,c,d : Real;
begin
//stopping endless addition of the weights.
 weighttotal := 0;

//Adding the empty weight of plane.
  case Cb_AircraftType.ItemIndex of
     0: begin weighttotal := weighttotal + F14BWeight end;
     1: begin weighttotal := weighttotal + F14AWeight end;
  end;

//Reading FuelTrackbar and letting a edit field display it
a := Tb_Fuel.position;
Lb_FuelPercent.Caption := FloatToStr(a) + '%';
Ed_FuelWeight.Text   :=  FloatToStr(16200 * (a/100)) + ' Lbs';
weighttotal := weighttotal +   (16200*((a/100)));

//Station 1A weight.
case Cb_Station_1A.ItemIndex of
 1  : begin  weighttotal := weighttotal + (1*AIM9L)  end;
 2  : begin  weighttotal := weighttotal + (1*AIM9M)  end;
 3  : begin  weighttotal := weighttotal + (1*TCTSPod)end;
end;
case Cb_Station_1B.ItemIndex of
 1  : begin  weighttotal := weighttotal + (1*AIM9L)       end;
 2  : begin  weighttotal := weighttotal + (1*AIM9M)       end;
 3  : begin  weighttotal := weighttotal + (1*AIM7M)       end;
 4  : begin  weighttotal := weighttotal + (1*AIM54AMk47)  end;
 5  : begin  weighttotal := weighttotal + (1*Aim54AMk60)  end;
 6  : begin  weighttotal := weighttotal + (1*Aim54CMk47)  end;
 7  : begin  weighttotal := weighttotal + (3*BDU33)       end;
 8  : begin  weighttotal := weighttotal + (   end;
 9  : begin  weighttotal := weighttotal +     end;
 10 : begin  weighttotal := weighttotal +     end;
 11 : begin  weighttotal := weighttotal +     end;
 12 : begin  weighttotal := weighttotal +     end;
 13 : begin  weighttotal := weighttotal +     end;
 14 : begin  weighttotal := weighttotal +     end;

end;





//Read out total weight to edit field
Ed_Totalweight.Text:= FloatToStr(weighttotal);

end;



end.
