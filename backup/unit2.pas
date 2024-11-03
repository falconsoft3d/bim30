unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, fpjson,
  jsonparser, DB, SQLite3Conn, SQLDB, Unit5;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ToggleBox1: TToggleBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
var
  newFile : Boolean;
begin
  try
    // Abre la conexión y activa la transacción
    if not DataModule1.SQLite3Connection1.Connected then
      DataModule1.SQLite3Connection1.Open;
    if not DataModule1.SQLTransaction1.Active then
      DataModule1.SQLTransaction1.Active := True;

    // Verifica si el registro con ID = 1 ya existe
    DataModule1.SQLQuery1.SQL.Text := 'SELECT ID FROM odoo WHERE ID = 1';
    DataModule1.SQLQuery1.Open;

    if not DataModule1.SQLQuery1.EOF then
    begin
      // Si existe, actualiza el registro
      DataModule1.SQLQuery1.Close;
      DataModule1.SQLQuery1.SQL.Text :=
        'UPDATE odoo SET url = :url, user = :user, password = :password WHERE ID = 1';
      DataModule1.SQLQuery1.Params.ParamByName('url').AsString := Edit1.Text;
      DataModule1.SQLQuery1.Params.ParamByName('user').AsString := Edit2.Text;
      DataModule1.SQLQuery1.Params.ParamByName('password').AsString := Edit3.Text;
    end
    else
    begin
      // Si no existe, inserta un nuevo registro
      DataModule1.SQLQuery1.Close;
      DataModule1.SQLQuery1.SQL.Text :=
        'INSERT INTO odoo (id, url, user, password) VALUES (1, :url, :user, :password)';
      DataModule1.SQLQuery1.Params.ParamByName('url').AsString := Edit1.Text;
      DataModule1.SQLQuery1.Params.ParamByName('user').AsString := Edit2.Text;
      DataModule1.SQLQuery1.Params.ParamByName('password').AsString := Edit3.Text;
    end;

    // Ejecuta la consulta para insertar o actualizar el registro
    DataModule1.SQLQuery1.ExecSQL;

    // Confirma la transacción
    DataModule1.SQLTransaction1.Commit;
    ShowMessage('Datos guardados correctamente.');
  except
    on E: Exception do
    begin
      DataModule1.SQLTransaction1.Rollback; // Revierte la transacción en caso de error
      ShowMessage('Error al guardar los datos: ' + E.Message);
    end;
  end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.FormShow(Sender: TObject);
begin
  try
    // Abre la conexión y la transacción
    DataModule1.SQLTransaction1.Active := True;
    {
    // Realiza la consulta para obtener los valores de la tabla "odoo"
    DataModule1.SQLQuery1.SQL.Text := 'SELECT url, user, password FROM odoo WHERE ID = 1';  // Suponiendo que quieres obtener el primer registro
    DataModule1.SQLQuery1.Open;

    // Verifica si hay resultados y asigna los valores a los TEdit
    if not DataModule1.SQLQuery1.EOF then
    begin
      Edit1.Text := DataModule1.SQLQuery1.FieldByName('url').AsString;
      Edit2.Text := DataModule1.SQLQuery1.FieldByName('user').AsString;
      Edit3.Text := DataModule1.SQLQuery1.FieldByName('password').AsString;
    end
    else
      Edit1.Text := '';
      Edit2.Text := '';
      Edit3.Text := '';

    // Cierra la consulta
    DataModule1.SQLQuery1.Close;
    }
  except
    on E: Exception do
      ShowMessage('Error al contectarse a la base de datos: ' + E.Message);
  end;
end;

end.

