# class-operator-delphi

eu tenho um Nome que é uma string e um Valor que é um inteiro.
    Criei três variáveis do tipo record TProduto, onde a.valor recebe 10,
    então meu produto a vale 10, e o produto b recebe 30
    ai informo que C vai receber a soma desses dois produtos.
    a situação é a seguinte, primeiro essa implementação o delphi não
    teria que compilar,  se eu criar duas classes e tentar soma-las não irá funcionar
    As classes não se somam, os records não se somam, mas nesse nosso exemplo
    estou solicitando para eles se somarem
    Eu mandei somando duas instâncias de uma classe, mas o correto seria eu
    somar os valores e não a classe.
    questão é na nota fiscal quando a gente quer somar um item não preciso
    varrer todos os itens pra ver o que tem e somar.
    só somo os objetos.
    Classe record tem dentro dele o Class Operator ADD com isso consigo somar a classe;
    Você só vai somar o objeto, e já irá ter uma classe implícita que faz isso para você de forma automática
    de onde estudei http://thuliobittencourt.com
