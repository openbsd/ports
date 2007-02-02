package require http
package require tls

http::register https 443 [list ::tls::socket -require 1 -cafile ./server.pem]

set tok [http::geturl https://securewww.esat.kuleuven.be/]

