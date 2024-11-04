unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  ExtCtrls, StdCtrls, Buttons, ButtonPanel, Unit2, Unit3, Unit4, Unit6;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    TrayIcon1: TTrayIcon;
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CoolBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private

  public

  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin

end;

procedure TFormPrincipal.Label1Click(Sender: TObject);
begin

end;

procedure TFormPrincipal.Label8Click(Sender: TObject);
begin

end;

procedure TFormPrincipal.MenuItem18Click(Sender: TObject);
begin
  FormConfiguracion.ShowModal;
end;

procedure TFormPrincipal.CoolBar1Change(Sender: TObject);
begin

end;

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
  FormProyectos.ShowModal;
end;

procedure TFormPrincipal.Button12Click(Sender: TObject);
begin
  FormAcercaDe.ShowModal;
end;

procedure TFormPrincipal.Button14Click(Sender: TObject);
begin
  FormConfiguracionOdoo.ShowModal;
end;

procedure TFormPrincipal.Button11Click(Sender: TObject);
begin
  FormConfiguracion.ShowModal;
end;

procedure TFormPrincipal.MenuItem1Click(Sender: TObject);
begin

end;

procedure TFormPrincipal.MenuItem2Click(Sender: TObject);
begin
  FormProyectos.ShowModal;
end;

procedure TFormPrincipal.MenuItem5Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.MenuItem6Click(Sender: TObject);
begin
  FormConfiguracionOdoo.ShowModal;
end;

procedure TFormPrincipal.MenuItem7Click(Sender: TObject);
begin
  FormAcercaDe.ShowModal;
end;

procedure TFormPrincipal.MenuItem9Click(Sender: TObject);
begin

end;

end.

