;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

;; I think this is a very good way of doing things; it gives you a rather
;; obvious template for what you need to do. All tools should be like this.

(require 'cl-lib)

(defun evil-hardcore--insert-frankenstein ()
  (interactive)
  (insert
"It was on a dreary night of November that I beheld
the accomplishment of my toils. With an anxiety
that almost amounted to agony, collected the
instruments of life around me, that I might infuse
a spark of being into the lifeless thing that lay
at my feet. It was already one in the morning; the
rain pattered dismally against the panes, and my
candle was nearly burnt out, when, by the glimmer
of the half-extinguished light, I saw the dull
yellow eye of the creature open; it breathed hard,
and a convulsive motion agitated its limbs."))

(Given "^the buffer contains an extract from Frankenstein$"
  "Puts the first paragraph of C5 of Frankenstein into the
buffer, wiping it beforehand."
  (lambda ()
    (erase-buffer)
    (evil-hardcore--insert-frankenstein)))

(Given "^I have \"\\(.+\\)\"$"
  (lambda (something)
    ;; ...
    ))

(When "^I have \"\\(.+\\)\"$"
  (lambda (something)
    ;; ...
    ))

(Then "^the buffer should contain\\(?: \"\\(.+\\)\"\\|:\\)$"
      "Asserts that the current buffer contents are the given string."
      (lambda (expected)
        (let ((actual (buffer-string))
              (message "Expected\n%s\nto be:\n%s"))
          (cl-assert (string= expected actual) nil message expected actual))))

(And "^I have \"\\(.+\\)\"$"
  (lambda (something)
    ;; ...
    ))

(But "^I should not have \"\\(.+\\)\"$"
  (lambda (something)
    ;; ...
    ))
