var p = process.argv[2];
var b = Buffer.alloc(4);
b.writeInt32BE(p, 0);
console.info('"PortNumber"=dword:' + b.toString('hex'));
