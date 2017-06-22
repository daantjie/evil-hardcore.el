(require 'f)
(require 'ert)

(let* ((test-path (f-dirname (f-this-file)))
       (code-path (f-parent test-path)))
  (require 'evil-hardcore (f-expand "evil-hardcore.el" code-path)))
