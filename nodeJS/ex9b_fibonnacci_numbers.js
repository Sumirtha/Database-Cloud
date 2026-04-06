let a = 0,b = 1;
const fib = [];
for (let i = 0;i < 10;i++){   // first 10 fibonnaci
	fib.push(a);
	let next = a + b;
	a = b;
	b = next;
}

console.log("Fibonacci:" + fib.join(","));
