unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SQLite3Conn, SQLDB, Forms, Controls, Graphics, Dialogs,
  DBGrids, DBCtrls, StdCtrls;

type

  { TFormProyectos }

  TFormProyectos = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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

