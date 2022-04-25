var data1 = new Date(2019, 10, 1)
var data2 = new Date(2019, 1, 10)
Date.prototype.valueOf = function()
{
 return Math.floor(this.getTime() / 86400000)
}
console.log(data1 - data2)