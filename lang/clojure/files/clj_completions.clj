;;; $OpenBSD: clj_completions.clj,v 1.2 2013/03/17 19:38:04 jasper Exp $

(def completions (mapcat (comp keys ns-publics) (all-ns)))
(with-open [f (java.io.BufferedWriter. (java.io.FileWriter. "files/clj_completions"))]
	   (.write f (apply str (interpose \newline completions))))
