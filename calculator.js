// calculator.js 
//funcion sumar
function sumar(a, b) { return a + b; }
//funcion restar
function restar(a, b) { return a - b; }
//funcion multiplicar
function multiplicar(a, b) { return a * b; }
//funcion dividir
function dividir(a, b) {
    //se maneja el error de dividir entre 0
    if (b === 0) throw new Error("No es posible dividir entre cero"); 
    return a / b; 
} 
module.exports = { sumar, restar, multiplicar, dividir }; 