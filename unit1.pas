unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sha1, md5, Forms, Controls, Graphics, Dialogs, StdCtrls,
  LazUTF8;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (UTF8Trim(Edit1.Text) = '') then Exit;

  Memo1.Clear;
  Memo1.Lines.Add(Format('md: %s',[MD5Print(MD5String(UTF8Trim(Edit1.Text)))])) ;
  Memo1.Lines.Add(Format('sha1: %s',[SHA1Print(SHA1String(UTF8Trim(Edit1.Text)))])) ;
end;

end.

