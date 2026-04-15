const fs = require('fs');

fs.readFile('first_node.js', 'utf8', (err, data) => {
if (err) {
console.log("Error reading file");
return;
}
console.log("File content:", data);
});
