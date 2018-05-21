unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
function jetam( var slovo:string;i:integer):boolean;    //vytvorí funkciu pomocou, ktorej zistíme či už sa písmeno v slove vyskytlo alebo nie
var j:integer;
  begin
    jetam:=false;
    for j:=1 to (i-1) do
        if slovo[j]=slovo[i] then jetam:=true;
    end;
var i,pocet:integer;
  meno:string;
begin
  meno:=edit1.text;   //načíta meno
   pocet:=0;

   for i:=1 to length(meno) do       //pre každé písmeno v mene overí či už dané písmeno bolo alebo nebolo použité(pomocou funkcie)
       if jetam(meno,i)=false then inc(pocet);   //ak také písmeno ešte v mene nebolo pripočíta počet rôznych písmen v mene

   label3.caption:='Počet rôznych písmen:'+inttostr(pocet);  //vypíše vysledok

end;

end.

