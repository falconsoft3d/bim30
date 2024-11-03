unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormAcercaDe }

  TFormAcercaDe = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FormAcercaDe: TFormAcercaDe;

implementation

{$R *.lfm}

{ TFormAcercaDe }

procedure TFormAcercaDe.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAcercaDe.FormCreate(Sender: TObject);
begin

end;

end.

