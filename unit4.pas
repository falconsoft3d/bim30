unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SQLite3Conn, SQLDB, Forms, Controls, Graphics, Dialogs,
  DBGrids, DBCtrls, StdCtrls;

type

  { TFormProyectos }

  TFormProyectos = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure SQLite3Connection1AfterConnect(Sender: TObject);
  private

  public

  end;

var
  FormProyectos: TFormProyectos;

implementation

{$R *.lfm}

{ TFormProyectos }

procedure TFormProyectos.SQLite3Connection1AfterConnect(Sender: TObject);
begin

end;

end.
