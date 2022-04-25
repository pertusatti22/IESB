const obj1 = { valor1: 1 };
const obj2 = { valor2: 2, __proto__: obj1 };
const obj3 = { valor3: 3, __proto__: obj2 };
const obj4 = { valor4: 4, __proto__: obj2 };

obj1.valor4 = 2;
obj2.valor3 = 3;
obj3.valor2 = 4;
obj4.valor1 = 5;

Object.prototype.valueOf = function()
{
    let acum = 0
    acum += Number.isFinite(this.valor1) ? this.valor1 : 0
    acum += Number.isFinite(this.valor2) ? this.valor2 : 0
    acum += Number.isFinite(this.valor3) ? this.valor3 : 0
    acum += Number.isFinite(this.valor4) ? this.valor4 : 0
    return acum
}

console.log(obj1 - obj2 + obj3 - obj4)

let teste = () => {

};