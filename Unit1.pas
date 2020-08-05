unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type
  Tproduto = record
    Valor: Integer;
    Nome: String;
    class operator Add(a, b: Tproduto): TProduto;
  end;
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
    a, b, c : TProduto;
begin
    a.Valor := 10;  //produto a vale 10...
    b.Valor := 30;  //produto b 30...
    c := a + b;   // o certo seria  c.valor := a.valor + b.valor;
    ShowMessage(IntToStr(c.Valor));
end;

{ Tproduto }

class operator Tproduto.Add(a, b: Tproduto): TProduto;
begin
   Result.Valor := a.Valor + b.Valor;
end;

{   eu tenho um Nome que � uma string e um Valor que � um inteiro.
    Criei tr�s vari�veis do tipo record TProduto, onde a.valor recebe 10,
    ent�o meu produto a vale 10, e o produto b recebe 30
    ai informo que C vai receber a soma desses dois produtos.

    a situa��o � a seguinte, primeiro essa implementa��o o delphi n�o
    teria que compilar,  se eu criar duas classes e tentar soma-las n�o ir� funcionar

    As classes n�o se somam, os records n�o se somam, mas nesse nosso exemplo
    estou solicitando para eles se somarem

    Eu mandei somando duas inst�ncias de uma classe, mas o correto seria eu
    somar os valores e n�o a classe.


    quest�o � na nota fiscal quando a gente quer somar um item n�o preciso
    varrer todos os itens pra ver o que tem e somar.
    s� somo os objetos.

    Classe record tem dentro dele o Class Operator ADD com isso consigo somar a classe;

    Voc� s� vai somar o objeto, e j� ir� ter uma classe impl�cita que faz isso para voc� de forma autom�tica
    }

end.
