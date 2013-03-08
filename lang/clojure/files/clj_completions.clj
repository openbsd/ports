;;; $OpenBSD: clj_completions.clj,v 1.1 2013/03/08 10:24:00 jasper Exp $

(def completions (mapcat (comp keys ns-publics) (all-ns)))
(with-open [f (java.io.BufferedWriter. (java.io.FileWriter. "clj_completions"))]
	   (.write f (apply str (interpose \newline completions))))
