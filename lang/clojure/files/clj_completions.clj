;;; $OpenBSD: clj_completions.clj,v 1.4 2016/01/30 09:31:59 jasper Exp $

(def completions (mapcat (comp keys ns-publics) (all-ns)))
(with-open [f (java.io.BufferedWriter. (java.io.FileWriter. "files/clj_completions"))]
	   (.write f (apply str (interpose \newline (sort (distinct completions))))))
