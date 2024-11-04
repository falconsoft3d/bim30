program bim30;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, unit1, unit2, unit3, unit4, unit5, unit6
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormConfiguracionOdoo, FormConfiguracionOdoo);
  Application.CreateForm(TFormAcercaDe, FormAcercaDe);
  Application.CreateForm(TFormProyectos, FormProyectos);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormConfiguracion, FormConfiguracion);
  Application.Run;
end.

