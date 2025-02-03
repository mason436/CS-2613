const plus = (a,b) => {
    for (let i=0; i < a; i++){
        b++;
    }
    return b;
}
const test=require("node:test");
const assert=require("assert");

const mult = function (a,b) {
    sum=0;
    for (let i=0; i < a; i++){
        sum = (plus(sum, b))
    }
    return sum;
}

function mult2(a, b){
    sum=0;
    for (let i=0; i < a; i++){
        sum = (plus(sum, b))
    }
    return sum;
}

console.log(plus(2, 3))
console.log(mult(2, 3))
console.log(mult2(2, 3))

test('plus 0 is identity', assert.strictEqual(plus(0,42),42));

test('plus 0 is identity (2)', assert.strictEqual(plus(42, 0),42));
test('multiply(x,x) = x^2', (t) => assert.strictEqual(mult(9,9),81));
test('multiply(x,100) = 100x', (t) => assert.strictEqual(mult(123,100),12300));

//Functions that don't work
test('multiply(1.5, 2) = 3', (t) => assert.strictEqual(mult(1.5,2),3));