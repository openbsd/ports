;; define a debugger hook which exit early
(setf *debugger-hook*
      (lambda (c fun)
        (princ c)
        (si::tpl-backtrace)
        (quit 1)))
