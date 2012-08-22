(load-extension "/usr/local/lib/graphviz/guile/libgv_guile.so" "SWIG_init");
(define g (digraph "g"));

(define n1 (node g "a"));
(define n2 (node g "b"));
(define n3 (node g "c"));

(define e1 (edge n1 n2));
(define e2 (edge n2 n3));
(define e3 (edge n3 n1));

(layout g "dot");
(render g "xlib");

