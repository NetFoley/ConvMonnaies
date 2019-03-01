unit ConvertisseurDollarEuro;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, ExtCtrls;

type

  { TConvEuroDollar }

  TConvEuroDollar = class(TForm)
    conv: TButton;
    EuroToDollar: TRadioButton;
    DollarToEuro: TRadioButton;
    RadioGroup1: TRadioGroup;
    RAZ: TButton;
    Button3: TButton;
    quitter: TButton;
    nbEuro: TFloatSpinEdit;
    nbDollar: TFloatSpinEdit;
    EURO: TLabel;
    DOLLAR: TLabel;
    procedure convClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure quitterClick(Sender: TObject);
    procedure RAZClick(Sender: TObject);
  private

  public

  end;

var
  ConvEuroDollar: TConvEuroDollar;

implementation

{$R *.lfm}

{ TConvEuroDollar }

procedure TConvEuroDollar.convClick(Sender: TObject);
begin
  if EuroToDollar.checked = true then
     nbDollar.value:=nbEuro.value/0.87
  else
     nbEuro.value:=nbDollar.value*0.87;
end;

procedure TConvEuroDollar.FormCreate(Sender: TObject);
begin

end;

procedure TConvEuroDollar.quitterClick(Sender: TObject);
begin
  if MessageDlg('Quitter', 'Quitter le programme?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
     close;
end;

procedure TConvEuroDollar.RAZClick(Sender: TObject);
begin
  nbDollar.value:=0;
  nbEuro.value:=0;
end;

end.

