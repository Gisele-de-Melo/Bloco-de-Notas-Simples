//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BtnNew: TButton;
    BtnOpen: TButton;
    BtnSave: TButton;
    BtnSaveAs: TButton;
    BtnExit: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnSaveAsClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
  private
    { Private declarations }
    CurrentFileName: string;
    procedure SaveFile(FileName: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnNewClick(Sender: TObject);
begin
  Memo1.Clear;
  CurrentFileName := '';
end;

procedure TForm1.BtnOpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
    CurrentFileName := OpenDialog1.FileName;
  end;
end;

procedure TForm1.BtnSaveClick(Sender: TObject);
begin
  if CurrentFileName = '' then
    BtnSaveAsClick(Sender)
  else
    SaveFile(CurrentFileName);
end;

procedure TForm1.BtnSaveAsClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    SaveFile(SaveDialog1.FileName);
    CurrentFileName := SaveDialog1.FileName;
  end;
end;

procedure TForm1.BtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.SaveFile(FileName: string);
begin
  Memo1.Lines.SaveToFile(FileName);
end;

end.
