unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, mysql50conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, DBGrids, StdCtrls, ComCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DataSource1: TDataSource;
    MySQL50Connection1: TMySQL50Connection;
    PageControl1: TPageControl;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
            uses Unit3;
{$R *.lfm}

{ TForm1 }

procedure TForm2.FormShow(Sender: TObject);
begin

end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  try
    MySQL50Connection1.Connected:=true;
  except
    ShowMessage(' Не могу подключиться к базе данных');
  exit;
  end;
  try
    SQLTransaction1.Active:=true;
  except
    ShowMessage(' Не могу создать транзакцию');
  exit;
  end;
  try
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.sql.add('SELECT * from  vidacha;');
    SQLQuery1.Open;

  except
    ShowMessage(' Ошибка при выполнении SQL запроса.');
  exit;
  end;
    //  DBGrid1.Columns[0].Width:=70;
 // DBGrid1.Columns[1].Width:=70;
 // DBGrid1.Columns[2].Width:=70;
 // DBGrid1.Columns[3].Width:=100;
 // DBGrid1.Columns[4].Width:=100;
 // DBGrid1.Columns[0].Title.Caption:='№ выдачи';
 // DBGrid1.Columns[1].Title.Caption:='№ книги';
 // DBGrid1.Columns[2].Title.Caption:='№ билета';
 // DBGrid1.Columns[3].Title.Caption:='Дата выдачи';
//  DBGrid1.Columns[4].Title.Caption:='Дата возврата';
//  DBGrid1.Columns[0].Title.Color:= clGradientActiveCaption;
//  DBGrid1.Columns[1].Title.Color:= clGradientActiveCaption ;
 // DBGrid1.Columns[2].Title.Color:= clGradientActiveCaption ;
 // DBGrid1.Columns[3].Title.Color:= clGradientActiveCaption ;
//  DBGrid1.Columns[4].Title.Color:= clGradientActiveCaption ;
begin
        Form3.show;
    Form2.Hide;
    end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.Button5Click(Sender: TObject);
begin
    try
    MySQL50Connection1.Connected:=true;
  except
    ShowMessage(' Не могу подключиться к базе данных');
  exit;
  end;
  try
    SQLTransaction1.Active:=true;
  except
    ShowMessage(' Не могу создать транзакцию');
  exit;
  end;
  try
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.sql.add('SELECT * from  users;');
    SQLQuery1.Open;

  except
    ShowMessage(' Ошибка при выполнении SQL запроса.');
  exit;
  end;
  Form3.DBGrid1.Columns[0].Width:=70;
 Form3.DBGrid1.Columns[1].Width:=100;
  Form3.DBGrid1.Columns[2].Width:=100;
  Form3.DBGrid1.Columns[3].Width:=100;
  Form3.DBGrid1.Columns[4].Width:=130;
  Form3.DBGrid1.Columns[5].Width:=200;
 Form3.DBGrid1.Columns[0].Title.Caption:='№ билета';
 Form3.DBGrid1.Columns[0].Title.Color:= clMenuHighlight ;
 Form3. DBGrid1.Columns[1].Title.Color:= clMenuHighlight ;
  Form3.DBGrid1.Columns[2].Title.Color:= clMenuHighlight ;
 Form3.DBGrid1.Columns[3].Title.Color:= clMenuHighlight ;
 Form3.DBGrid1.Columns[4].Title.Color:= clMenuHighlight ;
 Form3.DBGrid1.Columns[5].Title.Color:= clMenuHighlight ;
      begin
        Form3.show;
    Form2.Hide;
    end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  try
    MySQL50Connection1.Connected:=true;
  except
    ShowMessage(' Не могу подключиться к базе данных');
  exit;
  end;
  try
    SQLTransaction1.Active:=true;
  except
    ShowMessage(' Не могу создать транзакцию');
  exit;
  end;
  try
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.sql.add('SELECT * from  avtor;');
    SQLQuery1.Open;

  except
    ShowMessage(' Ошибка при выполнении SQL запроса.');
  exit;
  end;
    Form3.DBGrid1.Columns[0].Width:=70;
    Form3.DBGrid1.Columns[1].Width:=100;
   Form3.DBGrid1.Columns[2].Width:=100;
    Form3.DBGrid1.Columns[3].Width:=100;
    Form3.DBGrid1.Columns[0].Title.Caption:='Код автора';
   Form3. DBGrid1.Columns[0].Title.Color:= clyellow ;
   Form3.DBGrid1.Columns[1].Title.Color:= clyellow ;
   Form3. DBGrid1.Columns[2].Title.Color:= clyellow ;
   Form3. DBGrid1.Columns[3].Title.Color:= clyellow ;
      begin
        Form3.show;
    Form2.Hide;
    end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  try
    MySQL50Connection1.Connected:=true;
  except
    ShowMessage(' Не могу подключиться к базе данных');
  exit;
  end;
  try
    SQLTransaction1.Active:=true;
  except
    ShowMessage(' Не могу создать транзакцию');
  exit;
  end;
  try
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.sql.add('SELECT * from  avtorbook;');
    SQLQuery1.Open;

  except
    ShowMessage(' Ошибка при выполнении SQL запроса.');
  exit;
  end;
 Form3.DBGrid1.Columns[0].Width:=110;
  Form3.DBGrid1.Columns[1].Width:=70;
  Form3.DBGrid1.Columns[2].Width:=70;
 Form3.DBGrid1.Columns[0].Title.Caption:='Код книги автора';
 Form3.DBGrid1.Columns[1].Title.Caption:='Код автора';
 Form3.DBGrid1.Columns[2].Title.Caption:='Код книги';
 Form3.DBGrid1.Columns[0].Title.Color:= clyellow ;
 Form3.DBGrid1.Columns[1].Title.Color:= clyellow ;
 Form3.DBGrid1.Columns[2].Title.Color:= clyellow ;
 begin
        Form3.show;
    Form2.Hide;
    end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  try
    MySQL50Connection1.Connected:=true;
  except
    ShowMessage(' Не могу подключиться к базе данных');
  exit;
  end;
  try
    SQLTransaction1.Active:=true;
  except
    ShowMessage(' Не могу создать транзакцию');
  exit;
  end;
  try
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.sql.add('SELECT * from  book;');
    SQLQuery1.Open;

  except
    ShowMessage(' Ошибка при выполнении SQL запроса.');
  exit;
  end;
  Form3.DBGrid1.Columns[0].Width:=70;
  Form3.DBGrid1.Columns[1].Width:=350;
 Form3.DBGrid1.Columns[2].Width:=50;
 Form3.DBGrid1.Columns[3].Width:=70;
 Form3.DBGrid1.Columns[4].Width:=70;
 Form3.DBGrid1.Columns[0].Title.Caption:='Код книги';
 Form3.DBGrid1.Columns[3].Title.Caption:='Год издания';
 Form3.DBGrid1.Columns[0].Title.Color:= clyellow ;
 Form3.DBGrid1.Columns[1].Title.Color:= clyellow ;
 Form3.DBGrid1.Columns[2].Title.Color:= clyellow ;
 Form3.DBGrid1.Columns[3].Title.Color:= clyellow ;
 Form3.DBGrid1.Columns[4].Title.Color:= clyellow ;
 begin
        Form3.show;
    Form2.Hide;
    end;
end;

procedure TForm2.Button4Click(Sender: TObject);

begin

  try
    MySQL50Connection1.Connected:=true;
  except
    ShowMessage(' Не могу подключиться к базе данных');
  exit;
  end;
  try
    SQLTransaction1.Active:=true;
  except
    ShowMessage(' Не могу создать транзакцию');
  exit;
  end;
  try
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.sql.add('SELECT * from  razdel;');
    SQLQuery1.Open;

  except
    ShowMessage(' Ошибка при выполнении SQL запроса.');
  exit;
  end;
 Form3.DBGrid1.Columns[0].Width:=80;
 Form3.DBGrid1.Columns[1].Width:=120;
 Form3.DBGrid1.Columns[0].Title.Caption:='Код раздела';
 Form3.DBGrid1.Columns[0].Title.Color:= clyellow ;
 Form3.DBGrid1.Columns[1].Title.Color:= clyellow ;
  begin
        Form3.show;
    Form2.Hide;
    end;

end;





end.

