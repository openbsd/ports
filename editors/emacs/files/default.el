;;; default.el -*- lexical-binding: t; -*-
;;;
;;; Commentary:
;;; OpenBSD-specific defaults for Emacs

;;; Code:

(push '("/patch-[^/]*$" . diff-mode)
      auto-mode-alist)

(provide 'default)

;; default.el ends here
