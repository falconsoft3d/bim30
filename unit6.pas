unit Unit6;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormConfiguracion }

  TFormConfiguracion = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  FormConfiguracion: TFormConfiguracion;

implementation

{$R *.lfm}

{ TFormConfiguracion }

procedure TFormConfiguracion.Button1Click(Sender: TObject);
begin
  Close;
end;

end.

