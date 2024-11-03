unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SQLite3Conn, SQLDB, Forms, Controls, Graphics, Dialogs,
  DBGrids;

type

  { TForm4 }

  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    procedure SQLite3Connection1AfterConnect(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.SQLite3Connection1AfterConnect(Sender: TObject);
begin

end;

end.

