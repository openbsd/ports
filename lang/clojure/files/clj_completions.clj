(def completions (mapcat (comp keys ns-publics) (all-ns)))
(with-open [f (java.io.BufferedWriter. (java.io.FileWriter. "files/clj_completions"))]
	   (.write f (apply str (interpose \newline (sort (distinct completions))))))
