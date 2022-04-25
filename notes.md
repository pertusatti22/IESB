exemplo de instalação de componente externo React para seleção de data e hora com npm:

-> npm install react-datepicker --save

para renderizar o componente:
() => {
    const[startDate, setStartDate] = useState(new Date());
    return(
        <DatePicker selected = [startDate] onChange={date => setStartDate(date)} />
    );
};

-----

Configurando ambiente REACT
depois de instalar o NPM e o NODE:
1 - npm install -g create-react-app
2 - npx create-react-app nomedaaplicacao
3 - navegar até a pasta do projeto
4 - npm start
Vai estar live em localhost:3000

--------

O RegExp pode ser construído literalmente entre "/expressão/atributos" ou utilizando explicitamente o construtor "new RegExp(padrão, atributos)".

A vantagem do primeiro método está na possibilidade de representar o padrão e os atributos em uma única expressão.

O código a seguir identifica em qualquer texto os nomes Machado de Assis e Pedro Álvares Cabral, além de outros nomes ainda maiores.

let regex = /(([A-Z]｛1｝[a-z]+)(((( )[A-Z]{1}[a-z]+)+)|((( )[a-z]+)(( )[A-Z]{1}[a-z]+)+))+)/gm
while((result = regex.exec(texto)) !== null)
{
    console.log(result[0])
}