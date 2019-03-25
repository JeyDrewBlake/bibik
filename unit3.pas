unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;

implementation
       uses unit2;

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
begin
        Form2.show;
    Form3.Hide;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin

end;

end.

