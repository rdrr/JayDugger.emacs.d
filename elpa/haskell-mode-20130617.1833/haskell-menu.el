;;; haskell-menu.el -- A Haskell sessions menu.

;; Copyright (C) 2013 Chris Done

;; Author: Chris Done <chrisdone@gmail.com>

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;;; Todo:

;;; Code:

(require 'haskell-compat)
(require 'haskell-session)
(require 'haskell-process)
(with-no-warnings (require 'cl))

(defcustom haskell-menu-buffer-name
  "*haskell-menu*"
  "The path for starting cabal-dev."
  :group 'haskell
  :type 'string)

;;;###autoload
(defun haskell-menu ()
  "Launch the Haskell sessions menu."
  (interactive)
  (or (get-buffer haskell-menu-buffer-name)
      (with-current-buffer (get-buffer-create haskell-menu-buffer-name)
        (haskell-menu-mode)))
  (switch-to-buffer-other-window (get-buffer haskell-menu-buffer-name)))

(define-derived-mode haskell-menu-mode special-mode "Haskell Session Menu"
  "Major mode for managing Haskell sessions.
Each line describes one session.
Letters do not insert themselves; instead, they are commands."
  (setq buffer-read-only t)
  (set (make-local-variable 'revert-buffer-function)
       'haskell-menu-revert-function)
  (setq truncate-lines t)
  (haskell-menu-revert-function nil t))

(defun haskell-menu-revert-function (arg1 arg2)
  "Function to refresh the display."
  (let ((buffer-read-only nil)
        (orig-line (line-number-at-pos))
        (orig-col (current-column)))
    (or (eq buffer-undo-list t)
        (setq buffer-undo-list nil))
    (erase-buffer)
    (haskell-menu-insert-menu)
    (goto-char (point-min))
    (forward-line (1- orig-line))
    (forward-char orig-col)))

(defun haskell-menu-insert-menu ()
  "Insert the Haskell sessions menu to the current buffer."
  (if (null haskell-sessions)
      (insert "No Haskell sessions.")
    (haskell-menu-tabulate
     (list "Name" "PID" "Time" "RSS" "Cabal directory" "Working directory" "Command")
     (mapcar (lambda (session)
               (let* ((process (haskell-process-process (haskell-session-process session)))
                      (id (process-id process)))
                 (list (propertize (haskell-session-name session) 'face 'buffer-menu-buffer)
                       (if (haskell-process-live-p process) (number-to-string id) "-")
                       (if (haskell-process-live-p process)
                           (format-time-string "%H:%M:%S"
                                               (encode-time (caddr (assoc 'etime (process-attributes id)))
                                                            0 0 0 0 0))
                         "-")
                       (if (haskell-process-live-p process)
                           (concat (number-to-string (/ (cdr (assoc 'rss (process-attributes id)))
                                                        1024))
                                   "MB")
                         "-")
                       (haskell-session-cabal-dir session)
                       (haskell-session-current-dir session)
                       (mapconcat 'identity (process-command process) " "))))
             haskell-sessions))))

(defun haskell-menu-tabulate (headings rows)
  "Prints a list of lists as a formatted table to the current buffer."
  (let* ((columns (length headings))
         (widths (make-list columns 0)))
    ;; Calculate column widths. This is kind of hideous.
    (dolist (row rows)
      (setq widths
            (let ((list (list)))
              (dotimes (i columns)
                (setq list (cons (max (nth i widths)
                                      (1+ (length (nth i row)))
                                      (1+ (length (nth i headings))))
                                 list)))
              (reverse list))))
    ;; Print headings.
    (let ((heading (propertize " " 'display '(space :align-to 0))))
      (dotimes (i columns)
        (setq heading (concat heading
                              (format (concat "%-" (number-to-string (nth i widths)) "s")
                                      (nth i headings)))))
      (setq header-line-format heading))
    ;; Print tabulated rows.
    (dolist (row rows)
      (dotimes (i columns)
        (insert (format (concat "%-" (number-to-string (nth i widths)) "s")
                        (nth i row))))
      (insert "\n"))))

(defvar haskell-menu-mode-map
  (let ((map (make-keymap))
        (menu-map (make-sparse-keymap)))
    (suppress-keymap map t)
    menu-map))

;; Local Variables:
;; byte-compile-warnings: (not cl-functions)
;; End:

;;; haskell-menu.el ends here
