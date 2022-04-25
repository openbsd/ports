(def completions
  (mapcat (comp keys ns-publics) (all-ns)))

(with-open [f (java.io.FileWriter. "files/clj_completions")]
  (binding [*out* f]
    (doseq [c (-> completions sort distinct)]
      (println c))))
