;;; $OpenBSD: clj_completions.clj,v 1.3 2014/03/30 21:08:24 jasper Exp $

(def completions (mapcat (comp keys ns-publics) (all-ns)))
(with-open [f (java.io.BufferedWriter. (java.io.FileWriter. "files/clj_completions"))]
	   (.write f (apply str (interpose \newline (sort completions)))))
