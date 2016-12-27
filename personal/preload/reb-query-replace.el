;;; reb-query-replace.el --- Summary
;;; Commentary:
;;; Code:

(eval-when-compile (defvar reb-regexp)) ; Defined elsewhere
(eval-when-compile (defvar reb-target-buffer))
(eval-when-compile (defvar reb-target-binding))

(defun reb-query-replace (to-string)
  "Replace current RE from point with `query-replace-regexp'."
  (interactive
   (progn (barf-if-buffer-read-only)
          (list (query-replace-read-to (reb-target-binding reb-regexp)
                                       "Query replace"  t))))
  (with-current-buffer reb-target-buffer
    (query-replace-regexp (reb-target-binding reb-regexp) to-string)))

(provide 'reb-query-replace)
;;; reb-query-replace ends here
