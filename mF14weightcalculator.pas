unit mF14weightcalculator;
// Made by Per_von_Harke
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

    Tb_Fuel: TTrackBar;
    Lb_FuelWeight: TLabel;
    Ed_FuelWeight: TEdit;
    Lb_FuelPercent: TLabel;
    Ed_Totalweight: TEdit;
    Lb_Info_2: TLabel;
    Lb_Info_3: TLabel;
    Lb_GunPercent: TLabel;
    Tb_GunAmmo: TTrackBar;
    Ed_GunWeight: TEdit;
    Lb_Info_4: TLabel;
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



    //ComboBox declaration
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


   {public}
    // Variables
    F14BWEIGHT,F14AWEIGHT, Aim9L, GunTotal, SUU258LUU2,  BDU33MAK79 , Aim9M, Aim7M, Aim54AMk47, Aim54AMk60, Aim54CMk47, Mk81, Mk82, Mk82SnakeEye, Mk82AIR, Mk83, GBU10, Mk84, Mk20, BDU33, ZUNIMk71, GBU12, GBU24, GBU16, ADM141A, fueltankfull, fueltankempty, TCTSPod, fuel, fuelinput : Integer;
    weighttotal : Real;

    // Procedures
    procedure CalculateWeight;



  public
   {public}
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


//Setting up all the variables with (hopefully xd) correct values
procedure TFm_Window_Main.FormCreate(Sender: TObject);
begin

//Creating all ComboBoxes
 // Station 1A
 Cb_Station_1A := TComboBox.Create(Fm_Window_Main);
 Cb_Station_1A.Parent := Fm_Window_Main;
// Cb_Station_1A.OnChange := CalculateWeight;
with Cb_Station_1A do
begin
  SetBounds(388,10,335,21);
  Style := csDropDownList;
  DropDownCount := 8;
  Color := clSilver;


  //Adding all Items
  Items.Add('Empty');
  Items.Add('AIM-9L');
  Items.Add('AIM-9M');
  Items.Add('AN/ASQ-T50 Po');

  ItemIndex := 0;
end;


 // Station 1B
 Cb_Station_1B := TComboBox.Create(Fm_Window_Main);
 Cb_Station_1B.Parent := Fm_Window_Main;

 with Cb_Station_1B do
 begin
  SetBounds(388,10+34*1,335,21);
  Style := csDropDownList;
  DropDownCount := 32;
  Color := clSilver;

  //Adding all Items
  Items.Add('Empty');
  Items.Add('Empty');
  Items.Add('AIM-9L');
  Items.Add('AIM-9M');
  Items.Add('AIM-7M');
  Items.Add('AIM-54A-Mk47');
  Items.Add('AIM-54A-Mk60');
  Items.Add('AIM-54C-Mk47');
  Items.Add('BDU-33 x3');
  Items.Add('MK-20 x2');
  Items.Add('MK-81 x2');
  Items.Add('MK-82 x2');
  Items.Add('MK-62 AIR x2');
  Items.Add('MK-82 SnakeEye x2');
  Items.Add('MK-84');
  Items.Add('4 ZUNI MK 71 x2');


  ItemIndex := 0;
 end;


 // Station 2
 Cb_Station_2 := TComboBox.Create(Fm_Window_Main);
 Cb_Station_2.Parent := Fm_Window_Main;

 with Cb_Station_2 do
 begin
  SetBounds(388,10+34*2,335,21);
  Style := csDropDownList;
  DropDownCount := 32;
  Color := clSilver;

  //Adding all Items
  Items.Add('Empty');
  Items.Add('Fuel tank 300 gal');
  Items.Add('Fuel tank 300 gal (empty)');


  ItemIndex := 0;
 end;


 // Station 3
 Cb_Station_3 := TComboBox.Create(Fm_Window_Main);
 Cb_Station_3.Parent := Fm_Window_Main;

 with Cb_Station_3 do
 begin
  SetBounds(388,10+34*3,335,21);
  Style := csDropDownList;
  DropDownCount := 32;
  Color := clSilver;

  //Adding all Items
  Items.Add('Empty');
  Items.Add('AIM-7M');
  Items.Add('AIM-54A-Mk47');
  Items.Add('AIM-54A-Mk60');
  Items.Add('AIM-54C-Mk47');
  Items.Add('ADM-141A');
  Items.Add('BDU-33 x3');
  Items.Add('BDU-33 x4');
  Items.Add('GBU-10');
  Items.Add('GBU-12');
  Items.Add('GBU-16');
  Items.Add('GBU-24');
  Items.Add('MK-20');
  Items.Add('MK-81 x4');
  Items.Add('MK-82');
  Items.Add('MK-82 x4');
  Items.Add('MK-82 AIR');
  Items.Add('MK-82 AIR x4');
  Items.Add('MK-82 SnakeEye');
  Items.Add('MK-82 SnakeEye x4');
  Items.Add('MK-83');
  Items.Add('MK-83 x3');
  Items.Add('MK-84');
  Items.Add('4 ZUNI MK 71 x2');

  ItemIndex := 0;
 end;


 // Station 4
 Cb_Station_4 := TComboBox.Create(Fm_Window_Main);
 Cb_Station_4.Parent := Fm_Window_Main;

 with Cb_Station_4 do
 begin
  SetBounds(388,10+34*4,335,21);
  Style := csDropDownList;
  DropDownCount := 32;
  Color := clSilver;

  //Adding all Items
  Items.Add('Empty');
  Items.Add('AIM-7M');
  Items.Add('AIM-54A-Mk47');
  Items.Add('AIM-54A-Mk60');
  Items.Add('AIM-54C-Mk47');
  Items.Add('ADM-141A');
  Items.Add('BDU-33 x3');
  Items.Add('BDU-33 x3 MAK79');
  Items.Add('GBU-12');
  Items.Add('GBU-16');
  Items.Add('MK-20');
  Items.Add('MK-81 x3');
  Items.Add('MK-82');
  Items.Add('MK-82 x3');
  Items.Add('MK-82 AIR');
  Items.Add('MK-82 AIR x3');
  Items.Add('MK-82 SnakeEye');
  Items.Add('MK-82 SnakeEye x3');
  Items.Add('Mk-83');
  Items.Add('Mk-84');
  Items.Add('SUU-25 * 8 LUU-2 x2');

  ItemIndex := 0;
 end;


 // Station 5
 Cb_Station_5 := TComboBox.Create(Fm_Window_Main);
 Cb_Station_5.Parent := Fm_Window_Main;

 with Cb_Station_5 do
 begin
  SetBounds(388,10+34*5,335,21);
  Style := csDropDownList;
  DropDownCount := 32;
  Color := clSilver;

  //Adding all Items
  Items.Add('Empty');
  Items.Add('AIM-7M');
  Items.Add('AIM-54A-Mk47');
  Items.Add('AIM-54A-Mk60');
  Items.Add('AIM-54C-Mk47');
  Items.Add('ADM-141A');
  Items.Add('BDU-33 x3');
  Items.Add('BDU-33 x3 MAK79');
  Items.Add('GBU-12');
  Items.Add('GBU-16');
  Items.Add('MK-20');
  Items.Add('MK-81 x3');
  Items.Add('MK-82');
  Items.Add('MK-82 x3');
  Items.Add('MK-82 AIR');
  Items.Add('MK-82 AIR x3');
  Items.Add('MK-82 SnakeEye');
  Items.Add('MK-82 SnakeEye x3');
  Items.Add('MK-83');
  Items.Add('MK-84');
  Items.Add('SUU-25 * 8 LUU-2 x2');



  ItemIndex := 0;
 end;


 // Station 6
 Cb_Station_6 := TComboBox.Create(Fm_Window_Main);
 Cb_Station_6.Parent := Fm_Window_Main;

 with Cb_Station_6 do
 begin
  SetBounds(388,10+34*6,335,21);
  Style := csDropDownList;
  DropDownCount := 32;
  Color := clSilver;

  //Adding all Items
  Items.Add('Empty');
  Items.Add('AIM-7M');
  Items.Add('AIM-54A-Mk47');
  Items.Add('AIM-54A-Mk60');
  Items.Add('AIM-54C-Mk47');
  Items.Add('ADM-141A');
  Items.Add('BDU-33 x3');
  Items.Add('BDU-33 x4');
  Items.Add('GBU-10');
  Items.Add('GBU-12');
  Items.Add('GBU-16');
  Items.Add('MK-20');
  Items.Add('MK-81 x4');
  Items.Add('MK-82');
  Items.Add('MK-82 x4');
  Items.Add('MK-82 AIR');
  Items.Add('MK-82 AIR x4');
  Items.Add('MK-82 SnakeEye');
  Items.Add('MK-82 SnakeEye x4');
  Items.Add('MK-83');
  Items.Add('MK-83 x3');
  Items.Add('Mk-84');
  Items.Add('4 ZUNI MK71');

  ItemIndex := 0;
 end;


 // Station 7
 Cb_Station_7 := TComboBox.Create(Fm_Window_Main);
 Cb_Station_7.Parent := Fm_Window_Main;

 with Cb_Station_7 do
 begin
  SetBounds(388,10+34*7,335,21);
  Style := csDropDownList;
  DropDownCount := 32;
  Color := clSilver;

  //Adding all Items
  Items.Add('Empty');
  Items.Add('Fuel tank 300 gal');
  Items.Add('Fuel tank 300 gal (empty)');

  ItemIndex := 0;
 end;


  // Station 8B
 Cb_Station_8B := TComboBox.Create(Fm_Window_Main);
 Cb_Station_8B.Parent := Fm_Window_Main;

 with Cb_Station_8B do
 begin
  SetBounds(388,10+34*8,335,21);
  Style := csDropDownList;
  DropDownCount := 32;
  Color := clSilver;

  //Adding all Items
  Items.Add('Empty');
  Items.Add('AIM-9L');
  Items.Add('AIM-9M');
  Items.Add('AIM-7M');
  Items.Add('AIM-54A-Mk47');
  Items.Add('AIM-54A-Mk60');
  Items.Add('AIM-54C-Mk47');
  Items.Add('BDU-33 x3');
  Items.Add('MK-20 x3');
  Items.Add('MK-81 x2');
  Items.Add('MK-82 x2');
  Items.Add('MK-62 AIR x2');
  Items.Add('MK-82 SnakeEye x2');
  Items.Add('MK-84');
  Items.Add('4 ZUNI MK 71 x2');
  Items.Add('LANTIRN TGP');

  ItemIndex := 0;
 end;


  // Station 8A
 Cb_Station_8A := TComboBox.Create(Fm_Window_Main);
 Cb_Station_8A.Parent := Fm_Window_Main;

 with Cb_Station_8A do
 begin
  SetBounds(388,10+34*9,335,21);
  Style := csDropDownList;
  DropDownCount := 32;
  Color := clSilver;

  //Adding all Items
  Items.Add('Empty');
  Items.Add('AIM-9L');
  Items.Add('AIM-9M');
  Items.Add('AN/ASQ-T50 Pod');

  ItemIndex := 0;
 end;



// Defining weight variables
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
BDU33MAK79    := 000;
ZUNIMk71      := 293;
SUU258LUU2    := 260;
GBU12		      := 732;
GBU24 		    := 1369;
GBU16		      := 2441;
GBU10         := 2103;
ADM141A	      := 805;
fueltankfull  := 2113;
fueltankempty := 154;
TCTSPod       := 139;
F14BWeight    := 44040;
F14AWeight    := 40104;
GunTotal      := 520;
CalculateWeight;
end;


// === private ===


//Calculate Weight Procedure
procedure TFm_Window_Main.CalculateWeight;
var a,b : real;
begin
//stopping endless addition of the weights.
 weighttotal := 0;

//Adding the empty weight of plane.
case Cb_AircraftType.ItemIndex of
  0: begin weighttotal := weighttotal + F14BWeight end;
  1: begin weighttotal := weighttotal + F14AWeight end;
end;

// Tb_Fuel
a := Tb_Fuel.position;
Lb_FuelPercent.Caption  := FloatToStr(a) + '%';
Ed_FuelWeight.Text      :=  FloatToStr    (16200 * (a/100)) + ' Lbs';
weighttotal             := weighttotal +  (16200 * (a/100));

// Tb_GunAmmo
b := Tb_GunAmmo.position;
Lb_GunPercent.Caption   := FloatToStr(b) + '%';
Ed_GunWeight.Text       := FloatToStr(   round((520 * (b/100)))) + ' Lbs';
weighttotal             := weighttotal + round((520 * (b/100)));

//
// Station 1A
case Cb_Station_1A.ItemIndex of
 1  : begin  weighttotal := weighttotal + (1*AIM9L)  end;
 2  : begin  weighttotal := weighttotal + (1*AIM9M)  end;
 3  : begin  weighttotal := weighttotal + (1*TCTSPod)end;
end;

// Station 8A
case Cb_Station_8A.ItemIndex of
 1  : begin  weighttotal := weighttotal + (1*AIM9L)  end;
 2  : begin  weighttotal := weighttotal + (1*AIM9M)  end;
 3  : begin  weighttotal := weighttotal + (1*TCTSPod)end;
end;

// Station 1B
case Cb_Station_1B.ItemIndex of
  1  : begin  weighttotal := weighttotal + (1*AIM9L)       end;
  2  : begin  weighttotal := weighttotal + (1*AIM9M)       end;
  3  : begin  weighttotal := weighttotal + (1*AIM7M)       end;
  4  : begin  weighttotal := weighttotal + (1*AIM54AMk47)  end;
  5  : begin  weighttotal := weighttotal + (1*Aim54AMk60)  end;
  6  : begin  weighttotal := weighttotal + (1*Aim54CMk47)  end;
  7  : begin  weighttotal := weighttotal + (3*BDU33)       end;
  8  : begin  weighttotal := weighttotal + (2*MK20)        end;
  9  : begin  weighttotal := weighttotal + (2*MK81)        end;
  10 : begin  weighttotal := weighttotal + (2*MK82)        end;
  11 : begin  weighttotal := weighttotal + (2*MK82AIR)     end;
  12 : begin  weighttotal := weighttotal + (2*MK82SNAKEEYE)end;
  13 : begin  weighttotal := weighttotal + (1*MK84)        end;
  14 : begin  weighttotal := weighttotal + (2*ZUNIMK71)    end;
end;

// Station 8B
case Cb_Station_8B.ItemIndex of
  1  : begin  weighttotal := weighttotal + (1*AIM9L)       end;
  2  : begin  weighttotal := weighttotal + (1*AIM9M)       end;
  3  : begin  weighttotal := weighttotal + (1*AIM7M)       end;
  4  : begin  weighttotal := weighttotal + (1*AIM54AMk47)  end;
  5  : begin  weighttotal := weighttotal + (1*Aim54AMk60)  end;
  6  : begin  weighttotal := weighttotal + (1*Aim54CMk47)  end;
  7  : begin  weighttotal := weighttotal + (3*BDU33)       end;
  8  : begin  weighttotal := weighttotal + (2*MK20)        end;
  9  : begin  weighttotal := weighttotal + (2*MK81)        end;
  10 : begin  weighttotal := weighttotal + (2*MK82)        end;
  11 : begin  weighttotal := weighttotal + (2*MK82AIR)     end;
  12 : begin  weighttotal := weighttotal + (2*MK82SNAKEEYE)end;
  13 : begin  weighttotal := weighttotal + (1*MK84)        end;
  14 : begin  weighttotal := weighttotal + (2*ZUNIMK71)    end;
end;

// Station 2
case Cb_Station_2.ItemIndex of
  1  : begin weighttotal := weighttotal + (1*FUELTANKFULL) end;
  2  : begin weighttotal := weighttotal + (1*FUELTANKEMPTY)end;
end;

// Station 7
case Cb_Station_7.ItemIndex of
  1  : begin weighttotal := weighttotal + (1*FUELTANKFULL) end;
  2  : begin weighttotal := weighttotal + (1*FUELTANKEMPTY)end;
end;

// Station 3     23 Options
case Cb_Station_3.ItemIndex of
  1   : begin weighttotal := weighttotal + (1*AIM7M)        end;
  2   : begin weighttotal := weighttotal + (1*AIM54AMK47)   end;
  3   : begin weighttotal := weighttotal + (1*AIM54AMk60)   end;
  4   : begin weighttotal := weighttotal + (1*AIM54CMk47)   end;
  5   : begin weighttotal := weighttotal + (1*ADM141A)      end;
  6   : begin weighttotal := weighttotal + (3*BDU33)        end;
  7   : begin weighttotal := weighttotal + (4*BDU33)        end;
  8   : begin weighttotal := weighttotal + (1*GBU10)        end;
  9   : begin weighttotal := weighttotal + (1*GBU12)        end;
  10  : begin weighttotal := weighttotal + (1*GBU16)        end;
  11  : begin weighttotal := weighttotal + (1*GBU24)        end;
  12  : begin weighttotal := weighttotal + (1*MK20)         end;
  13  : begin weighttotal := weighttotal + (4*MK81)         end;
  14  : begin weighttotal := weighttotal + (1*MK82)         end;
  15  : begin weighttotal := weighttotal + (4*MK82)         end;
  16  : begin weighttotal := weighttotal + (1*MK82AIR)      end;
  17  : begin weighttotal := weighttotal + (4*MK82AIR)      end;
  18  : begin weighttotal := weighttotal + (1*MK82SNAKEEYE) end;
  19  : begin weighttotal := weighttotal + (4*MK82SNAKEEYE) end;
  20  : begin weighttotal := weighttotal + (1*MK83)         end;
  21  : begin weighttotal := weighttotal + (3*MK83)         end;
  22  : begin weighttotal := weighttotal + (1*MK84)         end;
  23  : begin weighttotal := weighttotal + (1*ZUNIMK71)     end;
end;

// Station 4
case Cb_Station_4.ItemIndex of
  1   : begin weighttotal := weighttotal + (1*AIM7M)        end;
  2   : begin weighttotal := weighttotal + (1*AIM54AMK47)   end;
  3   : begin weighttotal := weighttotal + (1*AIM54AMk60)   end;
  4   : begin weighttotal := weighttotal + (1*AIM54CMk47)   end;
  5   : begin weighttotal := weighttotal + (1*ADM141A)      end;
  6   : begin weighttotal := weighttotal + (3*BDU33)        end;
  7   : begin weighttotal := weighttotal + (3*BDU33MAK79)   end;
  8   : begin weighttotal := weighttotal + (1*GBU12)        end;
  9   : begin weighttotal := weighttotal + (1*GBU16)        end;
  10  : begin weighttotal := weighttotal + (1*MK20)         end;
  11  : begin weighttotal := weighttotal + (3*MK81)         end;
  12  : begin weighttotal := weighttotal + (1*MK82)         end;
  13  : begin weighttotal := weighttotal + (3*MK82)         end;
  14  : begin weighttotal := weighttotal + (1*MK82AIR)      end;
  15  : begin weighttotal := weighttotal + (3*MK82AIR)      end;
  16  : begin weighttotal := weighttotal + (1*MK82SNAKEEYE) end;
  17  : begin weighttotal := weighttotal + (3*MK82SNAKEEYE) end;
  18  : begin weighttotal := weighttotal + (1*MK83)         end;
  19  : begin weighttotal := weighttotal + (1*MK84)         end;
  20  : begin weighttotal := weighttotal + (1*SUU258LUU2 )  end;
end;

// Station 5
case Cb_Station_5.ItemIndex of
  1   : begin weighttotal := weighttotal + (1*AIM7M)        end;
  2   : begin weighttotal := weighttotal + (1*AIM54AMK47)   end;
  3   : begin weighttotal := weighttotal + (1*AIM54AMk60)   end;
  4   : begin weighttotal := weighttotal + (1*AIM54CMk47)   end;
  5   : begin weighttotal := weighttotal + (1*ADM141A)      end;
  6   : begin weighttotal := weighttotal + (3*BDU33)        end;
  7   : begin weighttotal := weighttotal + (3*BDU33MAK79)   end;
  8   : begin weighttotal := weighttotal + (1*GBU12)        end;
  9   : begin weighttotal := weighttotal + (1*GBU16)        end;
  10  : begin weighttotal := weighttotal + (1*GBU24)        end;
  11  : begin weighttotal := weighttotal + (1*MK20)         end;
  12  : begin weighttotal := weighttotal + (3*MK81)         end;
  13  : begin weighttotal := weighttotal + (1*MK82)         end;
  14  : begin weighttotal := weighttotal + (3*MK82)         end;
  15  : begin weighttotal := weighttotal + (1*MK82AIR)      end;
  16  : begin weighttotal := weighttotal + (3*MK82AIR)      end;
  17  : begin weighttotal := weighttotal + (1*MK82SNAKEEYE) end;
  18  : begin weighttotal := weighttotal + (3*MK82SNAKEEYE) end;
  19  : begin weighttotal := weighttotal + (1*MK83)         end;
  20  : begin weighttotal := weighttotal + (1*MK84)         end;
  21  : begin weighttotal := weighttotal + (1*SUU258LUU2)   end;
end;

// Station 6
case Cb_Station_6.ItemIndex of
  1   : begin weighttotal := weighttotal + (1*AIM7M)        end;
  2   : begin weighttotal := weighttotal + (1*AIM54AMK47)   end;
  3   : begin weighttotal := weighttotal + (1*AIM54AMk60)   end;
  4   : begin weighttotal := weighttotal + (1*AIM54CMk47)   end;
  5   : begin weighttotal := weighttotal + (1*ADM141A)      end;
  6   : begin weighttotal := weighttotal + (3*BDU33)        end;
  7   : begin weighttotal := weighttotal + (4*BDU33)        end;
  8   : begin weighttotal := weighttotal + (1*GBU10)        end;
  9   : begin weighttotal := weighttotal + (1*GBU12)        end;
  10  : begin weighttotal := weighttotal + (1*GBU16)        end;
  11  : begin weighttotal := weighttotal + (1*MK20)         end;
  12  : begin weighttotal := weighttotal + (4*MK81)         end;
  13  : begin weighttotal := weighttotal + (1*MK82)         end;
  14  : begin weighttotal := weighttotal + (4*MK82)         end;
  15  : begin weighttotal := weighttotal + (1*MK82AIR)      end;
  16  : begin weighttotal := weighttotal + (4*MK82AIR)      end;
  17  : begin weighttotal := weighttotal + (1*MK82SNAKEEYE) end;
  18  : begin weighttotal := weighttotal + (4*MK82SNAKEEYE) end;
  19  : begin weighttotal := weighttotal + (1*MK83)         end;
  20  : begin weighttotal := weighttotal + (3*MK83)         end;
  21  : begin weighttotal := weighttotal + (1*MK84)         end;
  22  : begin weighttotal := weighttotal + (1*ZUNIMK71)     end;
end;

//Read out total weight to edit field
Ed_Totalweight.Text:= FloatToStr(weighttotal);
end;
// Made by Per_von_Harke
end.
