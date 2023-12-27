unit fmTrinom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    meResult: TMemo;
    xPower2: TLabel;
    eqLabel: TLabel;
    x: TLabel;
    eq0: TLabel;
    edCoef1: TEdit;
    edCoef2: TEdit;
    edCoef3: TEdit;
    btnReinit: TButton;
    btnReset: TButton;
    btnClose: TButton;
    Panel1: TPanel;
    procedure btnReinitClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure FormShow(Sender: TObject); // Added FormShow event
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnReinitClick(Sender: TObject);
begin
  edCoef1.Text := '';
  edCoef2.Text := '';
  edCoef3.Text := '';
  meResult.Lines.Clear;
end;

procedure TForm2.btnResetClick(Sender: TObject);
var
  CoefA, CoefB, CoefC,
  Delta,
  Solutia1, Solutia2: Single;
begin
  CoefA := StrToFloat(edCoef1.Text);
  CoefB := StrToFloat(edCoef2.Text);
  CoefC := StrToFloat(edCoef3.Text);
  if CoefA = 0 then
  begin
    ShowMessage('Eroare: primul coeficient nu trebuie sa fie nul');
    Exit;
  end;
  meResult.Lines.Add('Ecuatia rezultata este : ' + FloatToStr(CoefA) + 'X² + ' +
    FloatToStr(CoefB)+'X + ' + FloatToStr(CoefC) + ' = 0');
  Delta := CoefB * CoefB - 4 * CoefA * CoefC;
  meResult.Lines.Add('Delta are valoarea ' + FloatToStr(Delta));

  if Delta > 0 then
  begin
    Solutia1 := (-CoefB - Sqrt(Delta)) / (2 * CoefA);
    Solutia2 := (-CoefB + Sqrt(Delta)) / (2 * CoefA);
    meResult.Lines.Add('Ecuatia admite doua solutii egale cu ' +
      FloatToStr(Solutia1) + ' si ' + FloatToStr(Solutia2));
  end
  else if Delta = 0 then
  begin
    Solutia1 := -CoefB / (2 * CoefA);
    meResult.Lines.Add('Ecuatia admite o singura solutie egala cu ' +
      FloatToStr(Solutia1));
  end
  else if Delta < 0 then // Fixed the syntax here
    meResult.Lines.Add('Ecuatia nu admite solutii Reale');
end;

procedure TForm2.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  btnReinitClick(Sender); // Call the btnReinitClick procedure
end;

end.

