;;; evil-hardcore.el --- teaching people to use Evil *properly*  -*- lexical-binding: t; -*-

;; Copyright (C) 2017  Daniel Oosthuizen

;; Author: Daniel Oosthuizen <danieltheexperimenter@gmail.com>
;; Keywords: extensions, evil, vim, vi
;; Version: 0.0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; I'm fed up with looking down at the keyboard and seeing my finger stuck on
;; the `j' key. I know *how* to use Evil properly; I just need to get the muscle
;; memory, and that's not happening if I don't force myself to use it.

;;; Code:

(require 'evil)
(require 'vertigo)

(defvar evil-hardcore-map
  (let ((map (make-sparse-keymap)))
    (evil-define-key* 'motion map
                      "j" #'evil-hardcore-jump-down
                      "k" #'evil-hardcore-jump-up
                      (kbd "g j") #'evil-next-line
                      (kbd "g k") #'evil-previous-line)
    map))

(evil-define-motion evil-hardcore-jump-down (count)
  "Jump down a number of lines using the home row keys."
  :type line
  :jump t ; so you can get back to where you were with ``
  (if count
      (evil-next-line count)
    (vertigo--jump #'evil-next-line "Jump down: ")))

(evil-define-motion evil-hardcore-jump-up (count)
  "Jump up a number of lines using the home row keys."
  :type line
  :jump t
  (if count
      (evil-previous-line count)
    (vertigo--jump #'evil-previous-line "Jump up: ")))

;; Needs to be at the end so that everything else is defined.
(define-minor-mode evil-hardcore-local-mode
  "Shadowings of default Evil bindings which discourage:
  · moving many lines with `j' and `k'
  · i.a."
  :lighter "ж"
  :keymap evil-hardcore-map)

(define-globalized-minor-mode evil-hardcore-global-mode
  evil-hardcore-local-mode
  (lambda () (evil-hardcore-local-mode 1)))

(provide 'evil-hardcore)
;;; evil-hardcore.el ends here
