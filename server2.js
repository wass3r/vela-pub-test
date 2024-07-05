const dns = require('dns');

dns.lookup('localhost', { all: true }, (err, addresses) => {
  if (err) {
    console.error(err);
    return;
  }

  console.log('Resolved addresses:', addresses);
});
