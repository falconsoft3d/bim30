unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SQLite3Conn, SQLDB, DB;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    DataSource1: TDataSource;
    DataSourceProject: TDataSource;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLQueryProject: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    SQLTransactionProject: TSQLTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLite3Connection1AfterConnect(Sender: TObject);
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

{ TDataModule1 }

procedure TDataModule1.SQLite3Connection1AfterConnect(Sender: TObject);
begin

end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
   // Configurar y abrir la conexión a la base de datos
   SQLite3Connection1.Connected:=True;

   // Ejecutar la consulta y abrir el conjunto de datos
   SQLTransactionProject.Active:= True;

   SQLQueryProject.Open;

end;

end.

