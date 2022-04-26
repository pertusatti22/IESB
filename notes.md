Nomear componentes em Capitalize, mostrando o caminho do componente. No exemplo das pastas abaixo:
UiButton
UserForm
UserList

----

Organização de pastas no React:
Agrupar os arquivos por Módulo/Feature
se um dos componentes da feature tiver mais de um arquivo(exemplo form) criar uma pasta pra ele dentro da feature.
Além das pastas específicas, ter a pasta UI para componentes genéricos da aplicação, como buttons, inputs, checkboxes, selects, modais, elementos de apresentação de dados e etc
Também temos uma pasta Screens para as telas que temos dentro da aplicação, exemplo em um CRUD de usuários teríamos para a listagem, uma para a criação e uma tela para a edição. cada uma delas seria uma screen. Uma screen é onde você utiliza os componentes para compor uma tela. Quanto menor a estrutura da screen, melhor. Idealmente, ela não conterá nenhum tipo de lógica.
A pasta das screens fica no mesmo nível da pasta components.

- src
-- screens
--- user
---- edit
----- edit.jsx
-- components
--- Ui
---- Button
----- Button.jsx
----- Button.css
--- User
---- Form
-----  Form.jsx
------ Form.css
---- List.jsx


-----

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