(require 'f)

(defvar evil-hardcore-support-path
  (f-dirname load-file-name))

(defvar evil-hardcore-features-path
  (f-parent evil-hardcore-support-path))

(defvar evil-hardcore-root-path
  (f-parent evil-hardcore-features-path))

(add-to-list 'load-path evil-hardcore-root-path)

(when (require 'undercover nil t)
  (undercover "*.el"))

;; Ensure that we don't load old byte-compiled versions
(let ((load-prefer-newer t))
  (require 'evil)
  (require 'vertigo)
  (require 'evil-hardcore)
  (require 'espuds)
  (require 'ert))


(Setup
  (evil-mode)
  (evil-hardcore-global-mode))

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
