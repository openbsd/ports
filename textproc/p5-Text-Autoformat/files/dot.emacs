;; Add  these  lines  to  your  .emacs  and  you  will  be   happy   with
;; p5-Text-Autoformat. 
;; Use ctrl-c k to reformat a region.

;; Set a global key for autoformat region
(global-set-key (kbd "C-c k") (lambda () (interactive)                                                                                                           (shell-command-on-region (region-beginning) (region-end)
  "perl -MText::Autoformat -e \"{autoformat{all=>1,justify=>\'full\'};}\"" 
  (current-buffer) t)))

