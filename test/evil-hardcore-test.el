(ert-deftest eh/functions-bound ()
  (should (fboundp 'evil-hardcore-jump-down))
  (should (fboundp 'evil-hardcore-jump-up))
  (should (fboundp 'evil-hardcore-local-mode))
  (should (fboundp 'evil-hardcore-global-mode)))

(ert-deftest eh/variables-bound ()
  (should (boundp 'evil-hardcore-map)))
