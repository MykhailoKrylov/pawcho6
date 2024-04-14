const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.write(`Adres IP serwera: ${req.connection.remoteAddress}\n`);
  res.write(`Nazwa serwera: ${req.headers.host}\n`);
  res.end(`Wersja aplikacji: ${process.env.APP_VERSION}\n`);
});

const PORT = 8084;
server.listen(PORT, () => {
  console.log(`Aplikacja jest dostępna na http://localhost:${PORT}`);
});
