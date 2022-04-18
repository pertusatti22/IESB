/*
* TODO:
[X] A seleção da disciplina deve ser realizada por uma lista definida, com as seguintes opções: Introdução à informática, Linguagens de Programação, e Programação de Computadores;
[X] As notas (prova 1, prova 2 e exame) devem aceitar apenas a digitação de números, na faixa entre 0 e 10;
[ ] A média será calculada e não deve permitir a inserção de valores (Utilize o atributo readonly= “” para impedir a entrada de dados nos campos desejados.);
[X] As faltas também devem aceitar apenas a digitação de números e a faixa de valores aceitáveis é de 0 a 16;
[X] Os campos prova 1, prova 2 e faltas são de preenchimento obrigatório.
 */

function validaNota(id, numero) {
  if (numero < 0 || numero > 10) {
    alert("Adicione um valor entre 0 e 10!!!");
    limpaCampo(id);
  }
}

function validaFalta(id, numero) {
  if (numero < 0 || numero > 16) {
    alert("Adicione um valor entre 0 e 16!!!");
    limpaCampo(id);
  }
}

function populaMedia(media, id) {
  let campo = document.getElementById(id);
  campo.value = media.toFixed(2);
}

function limpaCampo(id) {
  let campo = document.getElementById(id);
  campo.value = "";
}

let media1 = document.addEventListener('focusout', () => {
  let p1 = document.getElementById('aluno1-prova1').value;;
  let p2 = document.getElementById('aluno1-prova2').value;
  let ex = document.getElementById('aluno1-exame').value;
  let media = (Number(p1)+Number(p2)+Number(ex))/3;
  populaMedia(media, "aluno1-media")
});

let media2 = document.addEventListener('focusout', () => {
  let p1 = document.getElementById('aluno2-prova1').value;;
  let p2 = document.getElementById('aluno2-prova2').value;
  let ex = document.getElementById('aluno2-exame').value;
  let media = (Number(p1)+Number(p2)+Number(ex))/3;
  populaMedia(media, "aluno2-media")
});

let media3 = document.addEventListener('focusout', () => {
  let p1 = document.getElementById('aluno3-prova1').value;;
  let p2 = document.getElementById('aluno3-prova2').value;
  let ex = document.getElementById('aluno3-exame').value;
  let media = (Number(p1)+Number(p2)+Number(ex))/3;
  populaMedia(media, "aluno3-media")
});