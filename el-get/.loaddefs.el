;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (artbollocks-mode) "artbollocks-mode/artbollocks-mode"
;;;;;;  "artbollocks-mode/artbollocks-mode.el" (20444 16222))
;;; Generated autoloads from artbollocks-mode/artbollocks-mode.el

(autoload 'artbollocks-mode "artbollocks-mode/artbollocks-mode" "\
highlight passive voice, weasel words and artbollocks in text, provide useful text metrics

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (clojure-enable-slime-on-existing-buffers clojure-jack-in
;;;;;;  clojure-mode) "clojure-mode/clojure-mode" "clojure-mode/clojure-mode.el"
;;;;;;  (20444 37112))
;;; Generated autoloads from clojure-mode/clojure-mode.el

(autoload 'clojure-mode "clojure-mode/clojure-mode" "\
Major mode for editing Clojure code - similar to Lisp mode.
Commands:
Delete converts tabs to spaces as it moves back.
Blank lines separate paragraphs.  Semicolons start comments.
\\{clojure-mode-map}
Note that `run-lisp' may be used either to start an inferior Lisp job
or to switch back to an existing one.

Entry to this mode calls the value of `clojure-mode-hook'
if that value is non-nil.

\(fn)" t nil)

(autoload 'clojure-jack-in "clojure-mode/clojure-mode" "\


\(fn)" t nil)

(autoload 'clojure-enable-slime-on-existing-buffers "clojure-mode/clojure-mode" "\


\(fn)" t nil)

(add-hook 'slime-connected-hook 'clojure-enable-slime-on-existing-buffers)

(put 'clojure-test-ns-segment-position 'safe-local-variable 'integerp)

(put 'clojure-mode-load-command 'safe-local-variable 'stringp)

(put 'clojure-swank-command 'safe-local-variable 'stringp)

(add-hook 'slime-connected-hook 'clojure-enable-slime-on-existing-buffers)

(add-hook 'slime-indentation-update-hooks 'put-clojure-indent)

(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

(add-to-list 'interpreter-mode-alist '("jark" . clojure-mode))

(add-to-list 'interpreter-mode-alist '("cake" . clojure-mode))

;;;***

;;;### (autoloads (clojure-test-mode) "clojure-mode/clojure-test-mode"
;;;;;;  "clojure-mode/clojure-test-mode.el" (20444 37112))
;;; Generated autoloads from clojure-mode/clojure-test-mode.el

(autoload 'clojure-test-mode "clojure-mode/clojure-test-mode" "\
A minor mode for running Clojure tests.

\(fn &optional ARG)" t nil)

(defun clojure-test-maybe-enable nil "\
Enable clojure-test-mode if the current buffer contains a namespace
with a \"test.\" bit on it." (let ((ns (clojure-find-package))) (when (and ns (string-match "test\\(\\.\\|$\\)" ns)) (save-window-excursion (clojure-test-mode t)))))

(add-hook 'clojure-mode-hook 'clojure-test-maybe-enable)

;;;***

;;;### (autoloads (clojurescript-mode) "clojure-mode/clojurescript-mode"
;;;;;;  "clojure-mode/clojurescript-mode.el" (20444 37112))
;;; Generated autoloads from clojure-mode/clojurescript-mode.el

(autoload 'clojurescript-mode "clojure-mode/clojurescript-mode" "\
Major mode for ClojureScript

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.cljs$" . clojurescript-mode))

;;;***

;;;### (autoloads (color-theme-solarized-light color-theme-solarized-dark
;;;;;;  color-theme-solarized) "color-theme-solarized/color-theme-solarized"
;;;;;;  "color-theme-solarized/color-theme-solarized.el" (20325 24345))
;;; Generated autoloads from color-theme-solarized/color-theme-solarized.el

(autoload 'color-theme-solarized "color-theme-solarized/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn MODE)" t nil)

(autoload 'color-theme-solarized-dark "color-theme-solarized/color-theme-solarized" "\


\(fn)" t nil)

(autoload 'color-theme-solarized-light "color-theme-solarized/color-theme-solarized" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme/color-theme" "color-theme/color-theme.el" (17529
;;;;;;  41105))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (diredp-send-bug-report diredp-dired-plus-help
;;;;;;  diredp-describe-mode diredp-mouse-do-chmod diredp-mouse-do-load
;;;;;;  diredp-mouse-do-byte-compile diredp-mouse-do-compress diredp-mouse-do-grep
;;;;;;  diredp-mouse-do-print diredp-mouse-do-hardlink diredp-mouse-do-symlink
;;;;;;  diredp-mouse-do-shell-command diredp-mouse-do-delete diredp-mouse-downcase
;;;;;;  diredp-mouse-upcase diredp-mouse-do-rename diredp-mouse-do-copy
;;;;;;  diredp-mouse-flag-file-deletion diredp-mouse-mark/unmark-mark-region-files
;;;;;;  diredp-mouse-mark-region-files diredp-mouse-mark/unmark diredp-mouse-unmark
;;;;;;  diredp-mouse-mark diredp-mouse-backup-diff diredp-mouse-diff
;;;;;;  diredp-mouse-ediff diredp-mouse-view-file diredp-mouse-find-file
;;;;;;  dired-mouse-find-file-other-window diredp-mouse-find-file-other-frame
;;;;;;  diredp-find-file-other-frame diredp-mouse-3-menu diredp-toggle-marks-in-region
;;;;;;  diredp-flag-region-files-for-deletion diredp-unmark-region-files
;;;;;;  diredp-mark-region-files dired-mark-sexp diredp-chmod-this-file
;;;;;;  diredp-load-this-file diredp-byte-compile-this-file diredp-mouse-describe-file
;;;;;;  diredp-describe-file diredp-mouse-copy-tags diredp-copy-tags-this-file
;;;;;;  diredp-set-tag-value-this-file diredp-paste-replace-tags-this-file
;;;;;;  diredp-paste-add-tags-this-file diredp-remove-all-tags-this-file
;;;;;;  diredp-untag-this-file diredp-tag-this-file diredp-bookmark-this-file
;;;;;;  diredp-shell-command-this-file diredp-compress-this-file
;;;;;;  diredp-grep-this-file diredp-print-this-file diredp-hardlink-this-file
;;;;;;  diredp-symlink-this-file diredp-relsymlink-this-file diredp-copy-this-file
;;;;;;  diredp-rename-this-file diredp-upcase-this-file diredp-downcase-this-file
;;;;;;  diredp-capitalize-this-file diredp-delete-this-file diredp-capitalize
;;;;;;  dired-do-delete dired-do-flagged-delete dired-goto-file dired-up-directory
;;;;;;  dired-do-find-marked-files dired-maybe-insert-subdir dired-do-load
;;;;;;  dired-do-byte-compile dired-do-compress diredp-ediff diredp-omit-unmarked
;;;;;;  diredp-omit-marked diredp-toggle-find-file-reuse-dir diredp-mouse-find-file-reuse-dir-buffer
;;;;;;  diredp-find-file-reuse-dir-buffer diredp-do-bookmark-in-bookmark-file
;;;;;;  diredp-set-bookmark-file-bookmark-for-marked diredp-mouse-do-bookmark
;;;;;;  diredp-do-bookmark diredp-mouse-do-set-tag-value diredp-do-set-tag-value
;;;;;;  diredp-mouse-do-paste-replace-tags diredp-do-paste-replace-tags
;;;;;;  diredp-mouse-do-paste-add-tags diredp-do-paste-add-tags diredp-mouse-do-remove-all-tags
;;;;;;  diredp-do-remove-all-tags diredp-mouse-do-untag diredp-do-untag
;;;;;;  diredp-mouse-do-tag diredp-do-tag diredp-unmark-files-tagged-not-all
;;;;;;  diredp-unmark-files-tagged-some diredp-unmark-files-tagged-none
;;;;;;  diredp-unmark-files-tagged-all diredp-unmark-files-tagged-regexp
;;;;;;  diredp-mark-files-tagged-regexp diredp-mark-files-tagged-not-all
;;;;;;  diredp-mark-files-tagged-some diredp-mark-files-tagged-none
;;;;;;  diredp-mark-files-tagged-all diredp-mark/unmark-extension
;;;;;;  diredp-marked-other-window diredp-marked diredp-do-redisplay-recursive
;;;;;;  diredp-do-touch-recursive diredp-do-chmod-recursive diredp-do-copy-recursive
;;;;;;  diredp-do-move-recursive diredp-downcase-recursive diredp-upcase-recursive
;;;;;;  diredp-capitalize-recursive diredp-copy-filename-as-kill-recursive
;;;;;;  diredp-list-marked-recursive diredp-marked-recursive-other-window
;;;;;;  diredp-marked-recursive diredp-do-grep-recursive diredp-do-query-replace-regexp-recursive
;;;;;;  diredp-do-find-marked-files-recursive diredp-set-bookmark-file-bookmark-for-marked-recursive
;;;;;;  diredp-do-bookmark-in-bookmark-file-recursive diredp-do-bookmark-recursive
;;;;;;  diredp-image-dired-comment-files-recursive diredp-image-dired-delete-tag-recursive
;;;;;;  diredp-image-dired-tag-files-recursive diredp-image-dired-display-thumbs-recursive
;;;;;;  diredp-do-print-recursive diredp-do-hardlink-recursive diredp-do-symlink-recursive
;;;;;;  diredp-do-shell-command-recursive diredp-insert-subdirs-recursive
;;;;;;  diredp-insert-subdirs diredp-dired-inserted-subdirs diredp-dired-this-subdir
;;;;;;  diredp-fileset diredp-dired-union-other-window diredp-dired-union
;;;;;;  diredp-dired-for-files-other-window diredp-dired-for-files
;;;;;;  diredp-dired-files-other-window diredp-dired-files diredp-w32-local-drives
;;;;;;  diredp-prompt-for-bookmark-prefix-flag diff-switches) "dired+/dired+"
;;;;;;  "dired+/dired+.el" (20444 16228))
;;; Generated autoloads from dired+/dired+.el

(defvar diff-switches "-c" "\
*A string or list of strings specifying switches to be passed to diff.")

(custom-autoload 'diff-switches "dired+/dired+" t)

(defvar diredp-prompt-for-bookmark-prefix-flag nil "\
*Non-nil means prompt for a prefix string for bookmark names.")

(custom-autoload 'diredp-prompt-for-bookmark-prefix-flag "dired+/dired+" t)

(defvar diredp-w32-local-drives '(("C:" "Local disk")) "\
*Local MS Windows drives that you want to use for `diredp-w32-drives'.
Each entry is a list (DRIVE DESCRIPTION), where DRIVE is the drive
name and DESCRIPTION describes DRIVE.")

(custom-autoload 'diredp-w32-local-drives "dired+/dired+" t)

(autoload 'diredp-dired-files "dired+/dired+" "\
Like `dired', but non-positive prefix arg prompts for files to list.
This is like `dired' unless you use a non-positive prefix arg.
In that case, you are prompted for names of files and directories to
list, and then you are prompted for the name of the Dired buffer that
lists them.  Use `C-g' when you are done entering file names to list.

In all cases, when inputting a file or directory name you can use
shell wildcards.

If you use Icicles, then in Icicle mode the following keys are bound
in the minibuffer during completion (`*' means the key requires
library `Bookmark+'):

  M-|       - Open Dired on the file names matching your input
  C-c +     - Create a new directory
 *C-x a +   - Add tags to the current-candidate file
 *C-x a -   - Remove tags from the current-candidate file
 *C-x m     - Access file bookmarks (not just autofiles)

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-files-other-window "dired+/dired+" "\
Same as `diredp-dired-files' except uses another window.

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-for-files "dired+/dired+" "\
Like `dired', but prompts for the specific files to list.
You are prompted for names of files and directories to list, and then
you are prompted for the name of the Dired buffer that lists them.
Use `C-g' when you are done entering file names to list.

In all cases, when inputting a file or directory name you can use
shell wildcards.

If you use Icicles, then in Icicle mode the following keys are bound
in the minibuffer during completion (`*' means the key requires
library `Bookmark+'):

  M-|       - Open Dired on the file names matching your input
  C-c +     - Create a new directory
 *C-x a +   - Add tags to the current-candidate file
 *C-x a -   - Remove tags from the current-candidate file
 *C-x m     - Access file bookmarks (not just autofiles)

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-for-files-other-window "dired+/dired+" "\
Same as `diredp-dired-for-files' except uses another window.

\(fn ARG &optional SWITCHES)" t nil)

(autoload 'diredp-dired-union "dired+/dired+" "\
Create a Dired buffer that is the union of some existing Dired buffers.
With a prefix arg, read `ls' switches.
You are prompted for the Dired buffers.  Use `C-g' when done choosing
them.  Then you are prompted for the name of the new Dired buffer.
Its `default-directory' is the same as the `default-directory' before
invoking the command.

The selected Dired listings are included in the order that you choose
them, and each entry is listed only once in the new Dired buffer.  The
new Dired listing respects the markings, subdirectory insertions, and
hidden subdirectories of the selected Dired listings.

However, in case of conflict between marked or unmarked status for the
same entry, the entry is marked.  Similarly, in case of conflict over
an included subdirectory between it being hidden or shown, it is
hidden, but its contained files are also listed.

\(fn DIRBUFS &optional SWITCHES)" t nil)

(autoload 'diredp-dired-union-other-window "dired+/dired+" "\
Same as `diredp-dired-union' but uses another window.

\(fn DIRBUFS &optional SWITCHES)" t nil)

(autoload 'diredp-fileset "dired+/dired+" "\
Open Dired on the files in fileset FLSET-NAME.

\(fn FLSET-NAME)" t nil)

(autoload 'diredp-dired-this-subdir "dired+/dired+" "\
Open Dired for the subdir at or above point.
If point is not on a subdir line, but is in an inserted subdir
listing, then use that subdir.

With a prefix arg:
 If the subdir is inserted and point is in the inserted listing then
 remove that listing and move to the ordinary subdir line.  In other
 words, when in an inserted listing, a prefix arg tears off the
 inserted subdir to its own Dired buffer.

\(fn &optional TEAR-OFF-P MSGP)" t nil)

(autoload 'diredp-dired-inserted-subdirs "dired+/dired+" "\
Open Dired for each of the subdirs inserted in this Dired buffer.
With a prefix arg, create the Dired buffers but do not display them.
Markings and current Dired switches are preserved.

\(fn &optional NO-SHOW-P MSGP)" t nil)

(autoload 'diredp-insert-subdirs "dired+/dired+" "\
Insert the marked subdirectories.
Like using \\<dired-mode-map>`\\[dired-maybe-insert-subdir]' at each marked directory line.

\(fn &optional SWITCHES)" t nil)

(autoload 'diredp-insert-subdirs-recursive "dired+/dired+" "\
Insert the marked subdirs, including those in marked subdirs.
Like `diredp-insert-subdirs', but act recursively on subdirs.
The subdirs inserted are those that are marked in the current Dired
buffer, or all subdirs in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way (their marked
subdirs are inserted...).

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-shell-command-recursive "dired+/dired+" "\
Run shell COMMAND on the marked files, including those in marked subdirs.
Like `dired-do-shell-command', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn COMMAND &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-symlink-recursive "dired+/dired+" "\
Make symbolic links to marked files, including those in marked subdirs.
Like `dired-do-symlink', but act recursively on subdirs to pick up the
files to link.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-hardlink-recursive "dired+/dired+" "\
Add hard links for marked files, including those in marked subdirs.
Like `dired-do-hardlink', but act recursively on subdirs to pick up the
files to link.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-print-recursive "dired+/dired+" "\
Print the marked files, including those in marked subdirs.
Like `dired-do-print', but act recursively on subdirs to pick up the
files to print.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-image-dired-display-thumbs-recursive "dired+/dired+" "\
Display thumbnails of marked files, including those in marked subdirs.
Like `image-dired-display-thumbs', but act recursively on subdirs.
Optional arguments APPEND and DO-NOT-POP are as for
`image-dired-display-thumbs'.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P APPEND DO-NOT-POP)" t nil)

(autoload 'diredp-image-dired-tag-files-recursive "dired+/dired+" "\
Tag marked file(s) in dired, including those in marked subdirs
Like `image-dired-tag-files', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-image-dired-delete-tag-recursive "dired+/dired+" "\
Remove tag for selected file(s), including those in marked subdirs.
Like `image-dired-delete-tag', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-image-dired-comment-files-recursive "dired+/dired+" "\
Add comment to marked files in dired, including those in marked subdirs.
Like `image-dired-dired-comment-files' but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-bookmark-recursive "dired+/dired+" "\
Bookmark the marked files, including those in marked subdirs.
Like `diredp-do-bookmark', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P PREFIX)" t nil)

(autoload 'diredp-do-bookmark-in-bookmark-file-recursive "dired+/dired+" "\
Bookmark files here and below in BOOKMARK-FILE and save BOOKMARK-FILE.
Like `diredp-do-bookmark-in-bookmark-file', but act recursively on
subdirs.  The files included are those that are marked in the current
Dired buffer, or all files in the directory if none are marked.
Marked subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn BOOKMARK-FILE &optional PREFIX IGNORE-MARKS-P BFILE-BOOKMARKP)" t nil)

(autoload 'diredp-set-bookmark-file-bookmark-for-marked-recursive "dired+/dired+" "\
Bookmark the marked files and create a bookmark-file bookmark for them.
Like `diredp-set-bookmark-file-bookmark-for-marked', but act
recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn BOOKMARK-FILE &optional PREFIX ARG)" t nil)

(autoload 'diredp-do-find-marked-files-recursive "dired+/dired+" "\
Find marked files simultaneously, including those in marked subdirs.
Like `dired-do-find-marked-files', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-query-replace-regexp-recursive "dired+/dired+" "\
Do `query-replace-regexp' of FROM with TO, on all marked files.
If you exit (\\[keyboard-quit], RET or q), you can resume the query replace
with the command \\[tags-loop-continue].

\(fn FROM TO &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-grep-recursive "dired+/dired+" "\
Run `grep' on marked files, including those in marked subdirs.
Like `diredp-do-grep', but act recursively on subdirs.
The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn COMMAND-ARGS &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-marked-recursive "dired+/dired+" "\
Open Dired on marked files, including those in marked subdirs.
Like `diredp-marked', but act recursively on subdirs.

See `diredp-do-find-marked-files-recursive' for a description of the
files included.  In particular, if no files are marked here or in a
marked subdir, then all files in the directory are included.

\(fn DIRNAME &optional IGNORE-MARKED-P)" t nil)

(autoload 'diredp-marked-recursive-other-window "dired+/dired+" "\
Same as `diredp-marked-recursive', but uses a different window.

\(fn DIRNAME &optional IGNORE-MARKED-P)" t nil)

(autoload 'diredp-list-marked-recursive "dired+/dired+" "\
List the files marked here and in marked subdirs, recursively.
See `diredp-do-find-marked-files-recursive' for a description of the
files included.  In particular, if no files are marked here or in a
marked subdir, then all files in the directory are included.

Non-interactively, non-nil PREDICATE is a file-name predicate.  List
only the files for which it returns non-nil.

\(fn &optional IGNORE-MARKS-P PREDICATE)" t nil)

(autoload 'diredp-copy-filename-as-kill-recursive "dired+/dired+" "\
Copy names of marked files here and in marked subdirs, to `kill-ring'.
The names are separated by a space.

Like `dired-copy-filename-as-kill', but act recursively on subdirs.
\(Do not copy subdir names themselves.)

With no prefix arg, use relative file names.
With a zero prefix arg, use absolute file names.
With a plain prefix arg (`C-u'), use names relative to the current
Dired directory.  (This might contain slashes if in a subdirectory.)

If on a subdir headerline, use absolute subdir name instead - prefix
arg and marked files are ignored in this case.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

\(fn &optional ARG)" t nil)

(autoload 'diredp-capitalize-recursive "dired+/dired+" "\
Rename marked files, including in marked subdirs, by capitalizing them.
Like `diredp-capitalize', but act recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-upcase-recursive "dired+/dired+" "\
Rename marked files, including in marked subdirs, making them uppercase.
Like `dired-upcase', but act recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-downcase-recursive "dired+/dired+" "\
Rename marked files, including in marked subdirs, making them lowercase.
Like `dired-downcase', but act recursively on subdirs.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-move-recursive "dired+/dired+" "\
Move marked files, including in marked subdirs, to a given directory.
Like `dired-do-rename', but act recursively on subdirs to pick up the
files to move.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

This means move the marked files of marked subdirs and their marked
subdirs, etc.  It does not mean move or rename the subdirs themselves
recursively.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

Renames any buffers that are visiting the files.

The default suggested for the target directory depends on the value of
`dired-dwim-target', which see.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-copy-recursive "dired+/dired+" "\
Copy marked files, including in marked subdirs, to a given directory.
Like `dired-do-copy', but act recursively on subdirs to pick up the
files to copy.

The files included are those that are marked in the current Dired
buffer, or all files in the directory if none are marked.  Marked
subdirectories are handled recursively in the same way.

This means copy the marked files of marked subdirs and their marked
subdirs, etc.  It does not mean copy the subdirs themselves
recursively.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

Preserves the last-modified date when copying, unless
`dired-copy-preserve-time' is nil.

The default suggested for the target directory depends on the value of
`dired-dwim-target', which see.

This command copies symbolic links by creating new ones, like UNIX
command `cp -d'.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-chmod-recursive "dired+/dired+" "\
Change the mode of the marked files, including those in marked subdirs.
Symbolic modes like `g+w' are allowed.

Note that marked subdirs are not changed.  Their markings are used only
to indicate that some of their files are to be changed.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-touch-recursive "dired+/dired+" "\
Change the timestamp of marked files, including those in marked subdirs.
This calls `touch'.  Like `dired-do-touch', but act recursively on
subdirs.  The subdirs inserted are those that are marked in the
current Dired buffer, or all subdirs in the directory if none are
marked.  Marked subdirectories are handled recursively in the same
way.

With a prefix argument, ignore all marks - include all files in this
Dired buffer and all subdirs, recursively.

\(fn &optional IGNORE-MARKS-P)" t nil)

(autoload 'diredp-do-redisplay-recursive "dired+/dired+" "\
Redisplay marked file lines, including those in marked subdirs.
Like `dired-do-redisplay' with no args, but act recursively on
subdirs.

\(fn &optional MSGP)" t nil)

(autoload 'diredp-marked "dired+/dired+" "\
Open Dired on only the marked files or the next N files.
With a non-zero numeric prefix arg N, use the next abs(N) files.
A plain (`C-u'), zero, or negative prefix arg prompts for listing
switches as in command `dired'.

Note that the marked files can include files in inserted
subdirectories, so the Dired buffer that is opened can contain files
from multiple directories in the same tree.

\(fn DIRNAME &optional N SWITCHES)" t nil)

(autoload 'diredp-marked-other-window "dired+/dired+" "\
Same as `diredp-marked', but uses a different window.

\(fn DIRNAME &optional N SWITCHES)" t nil)

(autoload 'diredp-mark/unmark-extension "dired+/dired+" "\
Mark all files with a certain EXTENSION for use in later commands.
A `.' is not automatically prepended to the string entered.
Non-nil prefix argument UNMARK-P means unmark instead of mark.

\(fn EXTENSION &optional UNMARK-P)" t nil)

(autoload 'diredp-mark-files-tagged-all "dired+/dired+" "\
Mark all files that are tagged with *each* tag in TAGS.
As a special case, if TAGS is empty, then mark the files that have
 any tags at all (i.e., at least one tag).
With a prefix arg, mark all that are *not* tagged with *any* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional NONE-P PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-none "dired+/dired+" "\
Mark all files that are not tagged with *any* tag in TAGS.
As a special case, if TAGS is empty, then mark the files that have
 no tags at all.
With a prefix arg, mark all that are tagged with *each* tag in TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional ALLP PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-some "dired+/dired+" "\
Mark all files that are tagged with *some* tag in TAGS.
As a special case, if TAGS is empty, then mark the files that have
 any tags at all (i.e., at least one tag).
With a prefix arg, mark all that are *not* tagged with *all* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMENOTP PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-not-all "dired+/dired+" "\
Mark all files that are not tagged with *all* TAGS.
As a special case, if TAGS is empty, then mark the files that have
 no tags at all.
With a prefix arg, mark all that are tagged with *some* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMEP PREFIX)" t nil)

(autoload 'diredp-mark-files-tagged-regexp "dired+/dired+" "\
Mark files that have at least one tag that matches REGEXP.
With a prefix arg, mark all that are tagged but have no matching tags.
You need library `bookmark+.el' to use this command.

\(fn REGEXP &optional NOTP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-regexp "dired+/dired+" "\
Unmark files that have at least one tag that matches REGEXP.
With a prefix arg, unmark all that are tagged but have no matching tags.
You need library `bookmark+.el' to use this command.

\(fn REGEXP &optional NOTP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-all "dired+/dired+" "\
Unmark all files that are tagged with *each* tag in TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 any tags at all (i.e., at least one tag).
With a prefix arg, unmark all that are *not* tagged with *any* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional NONE-P PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-none "dired+/dired+" "\
Unmark all files that are *not* tagged with *any* tag in TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 no tags at all.
With a prefix arg, unmark all that are tagged with *each* tag in TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional ALLP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-some "dired+/dired+" "\
Unmark all files that are tagged with *some* tag in TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 any tags at all.
With a prefix arg, unmark all that are *not* tagged with *all* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMENOTP PREFIX)" t nil)

(autoload 'diredp-unmark-files-tagged-not-all "dired+/dired+" "\
Unmark all files that are *not* tagged with *all* TAGS.
As a special case, if TAGS is empty, then unmark the files that have
 no tags at all.
With a prefix arg, unmark all that are tagged with *some* TAGS.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional SOMEP PREFIX)" t nil)

(autoload 'diredp-do-tag "dired+/dired+" "\
Tag the marked (or the next prefix argument) files.
You need library `bookmark+.el' to use this command.

Hit `RET' to enter each tag, then hit `RET' again after the last tag.
You can use completion to enter each tag.  Completion is lax: you are
not limited to existing tags.

TAGS is a list of strings.  PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn TAGS &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-tag "dired+/dired+" "\
In Dired, add some tags to this file.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-untag "dired+/dired+" "\
Remove some tags from the marked (or the next prefix arg) files.
You need library `bookmark+.el' to use this command.

Hit `RET' to enter each tag, then hit `RET' again after the last tag.
You can use completion to enter each tag.  Completion is lax: you are
not limited to existing tags.

TAGS is a list of strings.  PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn TAGS &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-untag "dired+/dired+" "\
In Dired, remove some tags from this file.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-remove-all-tags "dired+/dired+" "\
Remove all tags from the marked (or the next prefix arg) files.
You need library `bookmark+.el' to use this command.

PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-remove-all-tags "dired+/dired+" "\
In Dired, remove all tags from the marked (or next prefix arg) files.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-paste-add-tags "dired+/dired+" "\
Add previously copied tags to the marked (or next prefix arg) files.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-paste-add-tags "dired+/dired+" "\
In Dired, add previously copied tags to this file.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-paste-replace-tags "dired+/dired+" "\
Replace tags for marked (or next prefix arg) files with copied tags.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-paste-replace-tags "dired+/dired+" "\
In Dired, replace tags for this file with tags copied previously.
The tags were previously copied from a file to `bmkp-copied-tags'.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-set-tag-value "dired+/dired+" "\
Set TAG value to VALUE, for the marked (or next prefix arg) files.
This does not change the TAG name.
You need library `bookmark+.el' to use this command.

PREFIX is as for `diredp-do-bookmark'.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn TAG VALUE &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-set-tag-value "dired+/dired+" "\
In Dired, set the value of a tag for this file.
This does not change the tag name.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-do-bookmark "dired+/dired+" "\
Bookmark the marked (or the next prefix argument) files.
Each bookmark name is the non-directory portion of the file name,
 prefixed by PREFIX if it is non-nil.
Interactively, you are prompted for the PREFIX if
 `diredp-prompt-for-bookmark-prefix-flag' is non-nil.
The bookmarked position is the beginning of the file.
If you use library `bookmark+.el' then the bookmark is an autofile.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional PREFIX ARG)" t nil)

(autoload 'diredp-mouse-do-bookmark "dired+/dired+" "\
In Dired, bookmark this file.  See `diredp-do-bookmark'.

\(fn EVENT)" t nil)

(autoload 'diredp-set-bookmark-file-bookmark-for-marked "dired+/dired+" "\
Bookmark the marked files and create a bookmark-file bookmark for them.
The bookmarked position is the beginning of the file.
Jumping to the bookmark-file bookmark loads the set of file bookmarks.
You need library `bookmark+.el' to use this command.

Each bookmark name is the non-directory portion of the file name,
 prefixed by PREFIX if it is non-nil.
Interactively, you are prompted for PREFIX if
 `diredp-prompt-for-bookmark-prefix-flag' is non-nil.

A prefix argument ARG specifies files to use instead of those marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

You are also prompted for the bookmark file, BOOKMARK-FILE.  The
default is `.emacs.bmk' in the current directory, but you can enter
any file name, anywhere.

The marked-file bookmarks are added to file BOOKMARK-FILE, but this
command does not make BOOKMARK-FILE the current bookmark file.  To
make it current, just jump to the bookmark-file bookmark created by
this command.  That bookmark (which bookmarks BOOKMARK-FILE) is
defined in that current bookmark file.

Example:

 Bookmark file `~/.emacs.bmk' is current before invoking this command.
 The current (Dired) directory is `/foo/bar'.
 The marked files are bookmarked in the (possibly new) bookmark file
   `/foo/bar/.emacs.bmk'.
 The bookmarks for the marked files have names prefixed by `FOOBAR '.
 The name of the bookmark-file bookmark is `Foobar Files'.
 Bookmark `Foobar Files' is itself in bookmark file `~/.emacs.bmk'.
 Bookmark file `~/.emacs.bmk' is current after invoking this command.

You are prompted for the name of the bookmark-file bookmark, the
BOOKMARK-FILE for the marked-file bookmarks, and a PREFIX string for
each of the marked-file bookmarks.

See also command `diredp-do-bookmark-in-bookmark-file'.

\(fn BOOKMARK-FILE &optional PREFIX ARG)" t nil)

(autoload 'diredp-do-bookmark-in-bookmark-file "dired+/dired+" "\
Bookmark files in BOOKMARK-FILE and save BOOKMARK-FILE.
The files bookmarked are the marked files, by default.
The bookmarked position is the beginning of the file.
You are prompted for BOOKMARK-FILE.  The default is `.emacs.bmk' in
the current directory, but you can enter any file name, anywhere.
You need library `bookmark+.el' to use this command.

The marked files are bookmarked in file BOOKMARK-FILE, but this
command does not make BOOKMARK-FILE the current bookmark file.  To
make it current, use `\\[bmkp-switch-bookmark-file]' (`bmkp-switch-bookmark-file').

Each bookmark name is the non-directory portion of the file name,
 prefixed by PREFIX if it is non-nil.
Interactively, you are prompted for PREFIX if
 `diredp-prompt-for-bookmark-prefix-flag' is non-nil.

Interactively, a prefix argument ARG specifies the files to use
instead of those marked.

 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

See also command `diredp-set-bookmark-file-bookmark-for-marked'.

Non-interactively:

 * Non-nil BFILE-BOOKMARKP means create a bookmark-file bookmark for
   BOOKMARK-FILE.
 * Non-nil FILES is the list of files to bookmark.

\(fn BOOKMARK-FILE &optional PREFIX ARG BFILE-BOOKMARKP FILES)" t nil)

(autoload 'diredp-find-file-reuse-dir-buffer "dired+/dired+" "\
Like `dired-find-file', but reuse Dired buffers.
Unlike `dired-find-alternate-file' this does not use
`find-alternate-file' if the target is not a directory.

\(fn)" t nil)

(autoload 'diredp-mouse-find-file-reuse-dir-buffer "dired+/dired+" "\
Like `diredp-mouse-find-file', but reuse Dired buffers.
Unlike `dired-find-alternate-file' this does not use
`find-alternate-file' if the target is not a directory.

\(fn EVENT)" t nil)

(defalias 'toggle-diredp-find-file-reuse-dir 'diredp-toggle-find-file-reuse-dir)

(autoload 'diredp-toggle-find-file-reuse-dir "dired+/dired+" "\
Toggle whether Dired `find-file' commands reuse directories.
A prefix arg specifies directly whether or not to reuse.
 If its numeric value is non-negative then reuse; else do not reuse.

To set the behavior as a preference (default behavior), put this in
your ~/.emacs, where VALUE is 1 to reuse or -1 to not reuse:

 (diredp-toggle-find-file-reuse-dir VALUE)

\(fn FORCE-P)" t nil)

(autoload 'diredp-omit-marked "dired+/dired+" "\
Omit lines of marked files.  Return the number of lines omitted.

\(fn)" t nil)

(autoload 'diredp-omit-unmarked "dired+/dired+" "\
Omit lines of unmarked files.  Return the number of lines omitted.

\(fn)" t nil)

(autoload 'diredp-ediff "dired+/dired+" "\
Compare file at cursor with file FILE2 using `ediff'.
FILE2 defaults to the file at the cursor as well.  If you enter just a
directory name for FILE2, then the file at the cursor is compared with
a file of the same name in that directory.  FILE2 is the second file
given to `ediff'; the file at the cursor is the first.

\(fn FILE2)" t nil)

(autoload 'dired-do-compress "dired+/dired+" "\
Compress or uncompress marked (or next prefix argument) files.
A prefix argument ARG specifies files to use instead of marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-byte-compile "dired+/dired+" "\
Byte compile marked (or next prefix argument) Emacs Lisp files.
A prefix argument ARG specifies files to use instead of marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional ARG)" t nil)

(autoload 'dired-do-load "dired+/dired+" "\
Load the marked (or next prefix argument) Emacs Lisp files.
A prefix argument ARG specifies files to use instead of marked.
 An integer means use the next ARG files (previous -ARG, if < 0).
 `C-u': Use the current file (whether or not any are marked).
 `C-u C-u': Use all files in Dired, except directories.
 `C-u C-u C-u': Use all files and directories, except `.' and `..'.
 `C-u C-u C-u C-u': Use all files and all directories.

\(fn &optional ARG)" t nil)

(autoload 'dired-maybe-insert-subdir "dired+/dired+" "\
Move to Dired subdirectory line or subdirectory listing.
This bounces you back and forth between a subdirectory line and its
inserted listing header line.  Using it on a non-directory line in a
subdirectory listing acts the same as using it on the subdirectory
header line.

* If on a subdirectory line, then go to the subdirectory's listing,
  creating it if not yet present.

* If on a subdirectory listing header line or a non-directory file in
  a subdirectory listing, then go to the line for the subdirectory in
  the parent directory listing.

* If on a non-directory file in the top Dired directory listing, do
  nothing.

Subdirectories are listed in the same position as for `ls -lR' output.

With a prefix arg, you can edit the `ls' switches used for this
listing.  Add `R' to the switches to expand the directory tree under a
subdirectory.

Dired remembers the switches you specify with a prefix arg, so
reverting the buffer does not reset them.  However, you might
sometimes need to reset some subdirectory switches after a
`dired-undo'.  You can reset all subdirectory switches to the
default value using \\<dired-mode-map>\\[dired-reset-subdir-switches].  See Info node
`(emacs)Subdir switches' for more details.

\(fn DIRNAME &optional SWITCHES NO-ERROR-IF-NOT-DIR-P)" t nil)

(autoload 'dired-do-find-marked-files "dired+/dired+" "\
Find marked files, displaying all of them simultaneously.
With a prefix ARG >= 0, just find files but do not select them.

If no prefix ARG, and variable `pop-up-frames' is non-nil, or
if prefix ARG < 0, then each file is displayed in a separate frame.

Otherwise (no prefix ARG and nil `pop-up-frames'), the current window
is split across all marked files, as evenly as possible.  Remaining
lines go to the bottom-most window.  The number of files that can be
displayed this way is restricted by the height of the current window
and `window-min-height'.

A prefix argument also behaves according to the ARG argument of
`dired-get-marked-files'.  In particular, `C-u C-u' operates on all
files in the Dired buffer.

To keep the Dired buffer displayed, type \\[split-window-vertically] first.
To display just the marked files, type \\[delete-other-windows] first.

\(fn &optional ARG)" t nil)

(autoload 'dired-up-directory "dired+/dired+" "\
Run Dired on parent directory of current directory.
Find the parent directory either in this buffer or another buffer.
Creates a buffer if necessary.

On MS Windows, if you already at the root directory, invoke
`diredp-w32-drives' to visit a navigable list of Windows drives.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'dired-goto-file "dired+/dired+" "\
Go to line describing file FILE in this dired buffer.

\(fn FILE)" t nil)

(autoload 'dired-do-flagged-delete "dired+/dired+" "\
In Dired, delete the files flagged for deletion.
NOTE: This deletes flagged, not marked, files.
If arg NO-MSG is non-nil, no message is displayed.

User option `dired-recursive-deletes' controls whether deletion of
non-empty directories is allowed.

\(fn &optional NO-MSG)" t nil)

(autoload 'dired-do-delete "dired+/dired+" "\
Delete all marked (or next ARG) files.
NOTE: This deletes marked, not flagged, files.
`dired-recursive-deletes' controls whether deletion of
non-empty directories is allowed.

\(fn &optional ARG)" t nil)

(autoload 'diredp-capitalize "dired+/dired+" "\
Rename all marked (or next ARG) files by capitalizing them.
Makes the first char of the name uppercase and the others lowercase.

\(fn &optional ARG)" t nil)

(autoload 'diredp-delete-this-file "dired+/dired+" "\
In Dired, delete the file on the cursor line, upon confirmation.

\(fn)" t nil)

(autoload 'diredp-capitalize-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line by capitalizing it.
Makes the first char of the name uppercase and the others lowercase.

\(fn)" t nil)

(autoload 'diredp-downcase-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line to lower case.

\(fn)" t nil)

(autoload 'diredp-upcase-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line to upper case.

\(fn)" t nil)

(autoload 'diredp-rename-this-file "dired+/dired+" "\
In Dired, rename the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-copy-this-file "dired+/dired+" "\
In Dired, copy the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-relsymlink-this-file "dired+/dired+" "\
In Dired, make a relative symbolic link to file on cursor line.

\(fn)" t nil)

(autoload 'diredp-symlink-this-file "dired+/dired+" "\
In Dired, make a symbolic link to the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-hardlink-this-file "dired+/dired+" "\
In Dired, add a name (hard link) to the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-print-this-file "dired+/dired+" "\
In Dired, print the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-grep-this-file "dired+/dired+" "\
In Dired, grep the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-compress-this-file "dired+/dired+" "\
In Dired, compress or uncompress the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-shell-command-this-file "dired+/dired+" "\
In Dired, run a shell COMMAND on the file on the cursor line.

\(fn COMMAND)" t nil)

(autoload 'diredp-bookmark-this-file "dired+/dired+" "\
In Dired, bookmark the file on the cursor line.
See `diredp-do-bookmark'.

\(fn &optional PREFIX)" t nil)

(autoload 'diredp-tag-this-file "dired+/dired+" "\
In Dired, add some tags to the file on the cursor line.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional PREFIX)" t nil)

(autoload 'diredp-untag-this-file "dired+/dired+" "\
In Dired, remove some tags from the file on the cursor line.
With a prefix arg, remove all tags from the file.
You need library `bookmark+.el' to use this command.

\(fn TAGS &optional PREFIX ARG)" t nil)

(autoload 'diredp-remove-all-tags-this-file "dired+/dired+" "\
In Dired, remove all tags from this file.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-paste-add-tags-this-file "dired+/dired+" "\
In Dired, add previously copied tags to this file.
See `diredp-paste-add-tags'.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-paste-replace-tags-this-file "dired+/dired+" "\
In Dired, replace tags for this file with previously copied tags.
See `diredp-paste-replace-tags'.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-set-tag-value-this-file "dired+/dired+" "\
In Dired, Set value of TAG to VALUE for this file.
See `diredp-set-tag-value'.
You need library `bookmark+.el' to use this command.

\(fn TAG VALUE &optional PREFIX MSGP)" t nil)

(autoload 'diredp-copy-tags-this-file "dired+/dired+" "\
In Dired, copy the tags from this file, so you can paste them to another.
See `diredp-copy-tags'.
You need library `bookmark+.el' to use this command.

\(fn &optional PREFIX MSGP)" t nil)

(autoload 'diredp-mouse-copy-tags "dired+/dired+" "\
In Dired, copy the tags from this file, so you can paste them to another.
You need library `bookmark+.el' to use this command.

\(fn EVENT)" t nil)

(autoload 'diredp-describe-file "dired+/dired+" "\
In Dired, describe this file or directory.
You need library `help-fns+.el' to use this command.
If the file has an autofile bookmark and you use library `Bookmark+',
then show also the bookmark information (tags etc.).  In this case, a
prefix arg shows the internal form of the bookmark.

\(fn &optional INTERNAL-FORM-P)" t nil)

(autoload 'diredp-mouse-describe-file "dired+/dired+" "\
Describe the clicked file.
You need library `help-fns+.el' to use this command.
If the file has an autofile bookmark and you use library `Bookmark+',
then show also the bookmark information (tags etc.).  In this case, a
prefix arg shows the internal form of the bookmark.

\(fn EVENT &optional INTERNAL-FORM-P)" t nil)

(autoload 'diredp-byte-compile-this-file "dired+/dired+" "\
In Dired, byte compile the (Lisp source) file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-load-this-file "dired+/dired+" "\
In Dired, load the file on the cursor line.

\(fn)" t nil)

(autoload 'diredp-chmod-this-file "dired+/dired+" "\
In Dired, change the mode of the file on the cursor line.

\(fn)" t nil)

(autoload 'dired-mark-sexp "dired+/dired+" "\
Mark files for which PREDICATE returns non-nil.
With non-nil prefix arg UNMARK-P, unmark those files instead.

PREDICATE is a lisp sexp that can refer to the following variables:

    `mode'   [string]  file permission bits, e.g. \"-rw-r--r--\"
    `nlink'  [integer] number of links to file
    `size'   [integer] file size in bytes
    `uid'    [string]  owner
    `gid'    [string]  group (If the gid is not displayed by `ls',
                       this will still be set (to the same as uid))
    `time'   [string]  the time that `ls' displays, e.g. \"Feb 12 14:17\"
    `name'   [string]  the name of the file
    `sym'    [string]  if file is a symbolic link, the linked-to name,
                       else \"\"
    `inode'  [integer] the inode of the file (only for `ls -i' output)
    `blks'   [integer] the size of the file for `ls -s' output
                       (ususally in blocks or, with `-k', in Kbytes)
Examples:
  Mark zero-length files: `(equal 0 size)'
  Mark files last modified on Feb 2: `(string-match \"Feb  2\" time)'
  Mark uncompiled Emacs Lisp files (`.el' file without a `.elc' file):
     First, dired just the source files: `dired *.el'.
     Then, use \\[dired-mark-sexp] with this sexp:
          (not (file-exists-p (concat name \"c\")))

\(fn PREDICATE &optional UNMARK-P)" t nil)

(autoload 'diredp-mark-region-files "dired+/dired+" "\
Mark all of the files in the current region (if it is active).
With non-nil prefix arg, unmark them instead.

\(fn &optional UNMARK-P)" t nil)

(autoload 'diredp-unmark-region-files "dired+/dired+" "\
Unmark all of the files in the current region (if it is active).
With non-nil prefix arg, mark them instead.

\(fn &optional MARK-P)" t nil)

(autoload 'diredp-flag-region-files-for-deletion "dired+/dired+" "\
Flag all of the files in the current region (if it is active) for deletion.

\(fn)" t nil)

(autoload 'diredp-toggle-marks-in-region "dired+/dired+" "\
Toggle marks in the region.

\(fn START END)" t nil)

(autoload 'diredp-mouse-3-menu "dired+/dired+" "\
Dired pop-up `mouse-3' menu, for files in selection or current line.

\(fn EVENT)" t nil)

(autoload 'diredp-find-file-other-frame "dired+/dired+" "\
In Dired, visit this file or directory in another frame.

\(fn)" t nil)

(autoload 'diredp-mouse-find-file-other-frame "dired+/dired+" "\
In Dired, visit file or directory clicked on in another frame.

\(fn EVENT)" t nil)

(autoload 'dired-mouse-find-file-other-window "dired+/dired+" "\
In Dired, visit the file or directory name you click on.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-find-file "dired+/dired+" "\
Replace dired in its window by this file or directory.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-view-file "dired+/dired+" "\
Examine this file in view mode, returning to dired when done.
When file is a directory, show it in this buffer if it is inserted;
otherwise, display it in another buffer.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-ediff "dired+/dired+" "\
Compare this file (pointed by mouse) with file FILE2 using `ediff'.
FILE2 defaults to this file as well.  If you enter just a directory
name for FILE2, then this file is compared with a file of the same
name in that directory.  FILE2 is the second file given to `ediff';
this file is the first given to it.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-diff "dired+/dired+" "\
Compare this file (pointed by mouse) with file FILE2 using `diff'.
FILE2 defaults to the file at the mark.  This file is the first file
given to `diff'.  With prefix arg, prompt for second arg SWITCHES,
which are options for `diff'.

\(fn EVENT &optional SWITCHES)" t nil)

(autoload 'diredp-mouse-backup-diff "dired+/dired+" "\
Diff this file with its backup file or vice versa.
Use the latest backup, if there are several numerical backups.
If this file is a backup, diff it with its original.
The backup file is the first file given to `diff'.
With prefix arg, prompt for SWITCHES which are the options for `diff'.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark "dired+/dired+" "\
In Dired, mark this file.
If on a subdir headerline, mark all its files except `.' and `..'.

Use \\[dired-unmark-all-files] to remove all marks,
and \\[dired-unmark] on a subdir to remove the marks in this subdir.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-unmark "dired+/dired+" "\
In Dired, unmark this file.
If looking at a subdir, unmark all its files except `.' and `..'.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark/unmark "dired+/dired+" "\
Mark/unmark file or directory at mouse EVENT.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark-region-files "dired+/dired+" "\
Mark files between point and the mouse.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-mark/unmark-mark-region-files "dired+/dired+" "\
Mark/unmark file or mark files in region.
If the file the cursor is on is marked, then mark all files between it
 and the line clicked (included).
Otherwise (cursor's file is unmarked):
 If the file clicked is marked, then unmark it.
 If it is unmarked, then mark it.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-flag-file-deletion "dired+/dired+" "\
In Dired, flag this file for deletion.
If on a subdir headerline, mark all its files except `.' and `..'.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-copy "dired+/dired+" "\
In Dired, copy this file.
This normally preserves the last-modified date when copying.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-rename "dired+/dired+" "\
In Dired, rename this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-upcase "dired+/dired+" "\
In Dired, rename this file to upper case.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-downcase "dired+/dired+" "\
In Dired, rename this file to lower case.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-delete "dired+/dired+" "\
In Dired, delete this file, upon confirmation.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-shell-command "dired+/dired+" "\
Run a shell COMMAND on this file.
If there is output, it goes to a separate buffer.

No automatic redisplay of dired buffers is attempted, as there's no
telling what files the command may have changed.  Type
\\[dired-do-redisplay] to redisplay.

The shell command has the top level directory as working directory, so
output files usually are created there instead of in a subdir.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-symlink "dired+/dired+" "\
Make symbolic link to this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-hardlink "dired+/dired+" "\
Make hard link (alias) to this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-print "dired+/dired+" "\
Print this file.
Uses the shell command coming from variables `lpr-command' and
`lpr-switches' as default.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-grep "dired+/dired+" "\
Run grep against this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-compress "dired+/dired+" "\
Compress or uncompress this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-byte-compile "dired+/dired+" "\
Byte compile this file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-load "dired+/dired+" "\
Load this Emacs Lisp file.

\(fn EVENT)" t nil)

(autoload 'diredp-mouse-do-chmod "dired+/dired+" "\
Change the mode of this file.
This calls chmod, so symbolic modes like `g+w' are allowed.

\(fn EVENT)" t nil)

(autoload 'diredp-describe-mode "dired+/dired+" "\
Describe Dired mode, including Dired+ features.
This is `describe-mode' plus a description of Dired+ features.
For just the latter, use \\<dired-mode-map>`\\[diredp-dired-plus-help]'.

\(fn &optional BUFFER)" t nil)

(autoload 'diredp-dired-plus-help "dired+/dired+" "\
Describe Dired+.

\(fn)" t nil)

(autoload 'diredp-send-bug-report "dired+/dired+" "\
Send a bug report about a Dired+ problem.

\(fn)" t nil)

;;;***

;;;### (autoloads (g-app-view g-app-publish) "g-client/g-app" "g-client/g-app.el"
;;;;;;  (20311 29240))
;;; Generated autoloads from g-client/g-app.el

(autoload 'g-app-publish "g-client/g-app" "\
Publish current entry.

\(fn)" t nil)

(autoload 'g-app-view "g-client/g-app" "\
View feed using auth credentials in auth-handle.

\(fn AUTH-HANDLE FEED-URL)" t nil)

;;;***

;;;### (autoloads (g-auth-lifetime) "g-client/g-auth" "g-client/g-auth.el"
;;;;;;  (20379 32099))
;;; Generated autoloads from g-client/g-auth.el

(defvar g-auth-lifetime "4 hours" "\
Auth lifetime.")

(custom-autoload 'g-auth-lifetime "g-client/g-auth" nil)

;;;***

;;;### (autoloads (gblogger-sign-in gblogger-sign-out gblogger-add-label
;;;;;;  gblogger-delete-entry gblogger-new-entry gblogger-edit-entry
;;;;;;  gblogger-atom-display gblogger-blog) "g-client/gblogger"
;;;;;;  "g-client/gblogger.el" (20314 10482))
;;; Generated autoloads from g-client/gblogger.el

(autoload 'gblogger-blog "g-client/gblogger" "\
Retrieve and display feed of feeds after authenticating.

\(fn)" t nil)

(autoload 'gblogger-atom-display "g-client/gblogger" "\
Retrieve and display specified feed after authenticating.

\(fn FEED-URL)" t nil)

(autoload 'gblogger-edit-entry "g-client/gblogger" "\
Retrieve entry and prepare it for editting.
The retrieved entry is placed in a buffer ready for editing.
`url' is the URL of the entry.

\(fn URL)" t nil)

(autoload 'gblogger-new-entry "g-client/gblogger" "\
Create a new Blog post.

\(fn URL &optional TITLE TEXT)" t nil)

(autoload 'gblogger-delete-entry "g-client/gblogger" "\
Delete item at specified edit URL.

\(fn EDIT-URL)" t nil)

(autoload 'gblogger-add-label "g-client/gblogger" "\
Adds labels to gblogger entry being editted.

\(fn LABEL)" t nil)

(autoload 'gblogger-sign-out "g-client/gblogger" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gblogger-sign-in "g-client/gblogger" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gcal-sign-in gcal-sign-out gcal-emacs-calendar-setup
;;;;;;  gcal-show-event gcal-view gcal-calendar-agenda-days gcal-reject-event
;;;;;;  gcal-delete-event gcal-quickadd-event gcal-add-event gcal-user-email
;;;;;;  gcal-default-user-email) "g-client/gcal" "g-client/gcal.el"
;;;;;;  (20311 29240))
;;; Generated autoloads from g-client/gcal.el

(defvar gcal-default-user-email nil "\
Default user id for Calendar.")

(custom-autoload 'gcal-default-user-email "g-client/gcal" t)

(defvar gcal-user-email nil "\
Mail address that identifies calendar user.")

(custom-autoload 'gcal-user-email "g-client/gcal" t)

(autoload 'gcal-add-event "g-client/gcal" "\
Add a calendar event.

\(fn)" t nil)

(autoload 'gcal-quickadd-event "g-client/gcal" "\
Add a calendar event.
Specify the event in plain English.

\(fn EVENT-DESC)" t nil)

(autoload 'gcal-delete-event "g-client/gcal" "\
Delete a calendar event.

\(fn EVENT-URI)" t nil)

(autoload 'gcal-reject-event "g-client/gcal" "\
Reject (RSVP)  a calendar event.

\(fn EVENT-URI)" t nil)

(defvar gcal-calendar-agenda-days 5 "\
Number of days for which we show an agenda by default.")

(custom-autoload 'gcal-calendar-agenda-days "g-client/gcal" t)

(autoload 'gcal-view "g-client/gcal" "\
Retrieve and display resource after authenticating.

\(fn RESOURCE)" t nil)

(autoload 'gcal-show-event "g-client/gcal" "\
Show event at URL.

\(fn URL)" t nil)

(define-prefix-command 'gcal-calendar-prefix-map)

(autoload 'gcal-emacs-calendar-setup "g-client/gcal" "\
Setup GCal keybindings in Emacs calendar.

\(fn)" nil nil)

(autoload 'gcal-sign-out "g-client/gcal" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gcal-sign-in "g-client/gcal" "\
Sign in, useful when changing to a different user profile.

\(fn)" t nil)

;;;***

;;;### (autoloads (gcontacts-create gcontacts-initialize) "g-client/gcontacts"
;;;;;;  "g-client/gcontacts.el" (20311 29240))
;;; Generated autoloads from g-client/gcontacts.el

(autoload 'gcontacts-initialize "g-client/gcontacts" "\
Initialize GContacts process handle.

\(fn USERNAME)" t nil)

(autoload 'gcontacts-create "g-client/gcontacts" "\
Create a new contact as specified.

\(fn NAME EMAIL MOBILE)" t nil)

;;;***

;;;### (autoloads (gdocs-sign-in gdocs-sign-out gdocs-view-item gdocs-delete-item
;;;;;;  gdocs-add-collaborator gdocs-doclist) "g-client/gdocs" "g-client/gdocs.el"
;;;;;;  (20311 29240))
;;; Generated autoloads from g-client/gdocs.el

(autoload 'gdocs-doclist "g-client/gdocs" "\
Retrieve and display feed of feeds after authenticating.
Interactive prefix arg prompts for a query string.

\(fn &optional QUERY)" t nil)

(autoload 'gdocs-add-collaborator "g-client/gdocs" "\
Add collaborator to ACL at acl-url.
You can find the acl-url through the DocList.

\(fn EMAIL ACL-URL)" t nil)

(autoload 'gdocs-delete-item "g-client/gdocs" "\
Delete specified item.

\(fn URL)" t nil)

(autoload 'gdocs-view-item "g-client/gdocs" "\
View specified item.

\(fn URL)" t nil)

(autoload 'gdocs-sign-out "g-client/gdocs" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gdocs-sign-in "g-client/gdocs" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gfeeds-lookup-and-view gfeeds-view gfeeds-titles
;;;;;;  gfeeds-freshness) "g-client/gfeeds" "g-client/gfeeds.el"
;;;;;;  (20311 29240))
;;; Generated autoloads from g-client/gfeeds.el

(defsubst gfeeds-feed (feed-url) "\
Return feed structure." (declare (special gfeeds-feeds-url gfeeds-referer)) (let ((result nil)) (g-using-scratch (call-process g-curl-program nil t nil "-s" "-e" gfeeds-referer (format gfeeds-feeds-url (g-url-encode feed-url))) (goto-char (point-min)) (setq result (json-read)) (when (= 200 (g-json-get (quote responseStatus) result)) (g-json-get (quote feed) (g-json-get (quote responseData) result))))))

(defsubst gfeeds-lookup (url) "\
Lookup feed for a given Web page." (declare (special gfeeds-lookup-url gfeeds-referer)) (let ((result nil)) (g-using-scratch (call-process g-curl-program nil t nil "-s" "-e" gfeeds-referer (format gfeeds-lookup-url (g-url-encode url))) (goto-char (point-min)) (setq result (json-read)) (when (= 200 (g-json-get (quote responseStatus) result)) (g-json-get (quote url) (g-json-get (quote responseData) result))))))

(defsubst gfeeds-find (query) "\
Find feeds matching a query." (declare (special gfeeds-find-url gfeeds-referer)) (let ((result nil)) (g-using-scratch (call-process g-curl-program nil t nil "-s" "-e" gfeeds-referer (format gfeeds-find-url (g-url-encode query))) (goto-char (point-min)) (setq result (json-read)) (when (= 200 (g-json-get (quote responseStatus) result)) (g-json-get (quote entries) (g-json-get (quote responseData) result))))))

(defvar gfeeds-freshness "1 hour" "\
Freshness used to decide if we return titles.")

(custom-autoload 'gfeeds-freshness "g-client/gfeeds" nil)

(autoload 'gfeeds-titles "g-client/gfeeds" "\
Return list of titles from feed at feed-url.

\(fn FEED-URL)" nil nil)

(autoload 'gfeeds-view "g-client/gfeeds" "\
Display Feed in a browser.
Interactive prefix arg causes the feed url to be looked up given a Web site.

\(fn URL &optional LOOKUP)" t nil)

(autoload 'gfeeds-lookup-and-view "g-client/gfeeds" "\
Lookup feed URL for a site and browse result.

\(fn SITE)" t nil)

;;;***

;;;### (autoloads (gfinance-sign-in gfinance-sign-out gfinance-display-feed
;;;;;;  gfinance-portfolios) "g-client/gfinance" "g-client/gfinance.el"
;;;;;;  (20311 29240))
;;; Generated autoloads from g-client/gfinance.el

(autoload 'gfinance-portfolios "g-client/gfinance" "\
Retrieve and display feed of feeds after authenticating.

\(fn)" t nil)

(autoload 'gfinance-display-feed "g-client/gfinance" "\
Retrieve and display feedat feed-url  after authenticating.

\(fn FEED-URL)" t nil)

(autoload 'gfinance-sign-out "g-client/gfinance" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gfinance-sign-in "g-client/gfinance" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (ghealth-sign-in ghealth-sign-out) "g-client/ghealth"
;;;;;;  "g-client/ghealth.el" (20311 29240))
;;; Generated autoloads from g-client/ghealth.el

(autoload 'ghealth-sign-out "g-client/ghealth" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'ghealth-sign-in "g-client/ghealth" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gphoto-edit-entry gphoto-sign-in gphoto-sign-out
;;;;;;  gphoto-comment-or-tag gphoto-directory-add-photos gphoto-photo-add
;;;;;;  gphoto-album-create gphoto-user-tagsearch gphoto-user-search
;;;;;;  gphoto-recent gphoto-community-search gphoto-download gphoto-view
;;;;;;  gphoto-tags gphoto-albums gphoto-feeds) "g-client/gphoto"
;;;;;;  "g-client/gphoto.el" (20311 29240))
;;; Generated autoloads from g-client/gphoto.el

(autoload 'gphoto-feeds "g-client/gphoto" "\
Retrieve and display feed of albums or tags after authenticating.

\(fn KIND USER)" t nil)

(autoload 'gphoto-albums "g-client/gphoto" "\
Display feed of albums.
Interactive prefix arg prompts for userid whose albums we request.

\(fn &optional PROMPT)" t nil)

(autoload 'gphoto-tags "g-client/gphoto" "\
View feed of tags.

\(fn)" t nil)

(autoload 'gphoto-view "g-client/gphoto" "\
Retrieve and display resource after authenticating.

\(fn RESOURCE)" t nil)

(autoload 'gphoto-download "g-client/gphoto" "\
Download resource after authenticating.

\(fn RESOURCE)" t nil)

(autoload 'gphoto-community-search "g-client/gphoto" "\
Search all public photos.

\(fn QUERY)" t nil)

(autoload 'gphoto-recent "g-client/gphoto" "\
Retrieve feed of recently uploaded photos or comments.

\(fn USER KIND)" t nil)

(autoload 'gphoto-user-search "g-client/gphoto" "\
Retrieve feed of recently uploaded comments for  specified user.

\(fn USER QUERY)" t nil)

(autoload 'gphoto-user-tagsearch "g-client/gphoto" "\
Retrieve feed o matches comments for  specified user.

\(fn USER TAG)" t nil)

(autoload 'gphoto-album-create "g-client/gphoto" "\
Create a new GPhoto album.

\(fn)" t nil)

(autoload 'gphoto-photo-add "g-client/gphoto" "\
Add a photo to an existing album.

\(fn ALBUM-NAME PHOTO)" t nil)

(autoload 'gphoto-directory-add-photos "g-client/gphoto" "\
Add all jpeg files in a directory to specified album.

\(fn DIRECTORY ALBUM-NAME)" t nil)

(autoload 'gphoto-comment-or-tag "g-client/gphoto" "\
Add comments or tags  to an existing photo.

\(fn TYPE RESOURCE)" t nil)

(autoload 'gphoto-sign-out "g-client/gphoto" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gphoto-sign-in "g-client/gphoto" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gphoto-edit-entry "g-client/gphoto" "\
Retrieve metadata for entry and prepare it for editting.
The retrieved entry is placed in a buffer ready for editing.
`url' is the URL of the entry.

\(fn URL)" t nil)

;;;***

;;;### (autoloads (greader-re-authenticate greader-sign-in greader-sign-out
;;;;;;  greader-search greader-find-feeds greader-star greader-add-label
;;;;;;  greader-update-subscription greader-untag-feed greader-tag-feed
;;;;;;  greader-title-feed greader-unsubscribe-feed greader-subscribe-feed
;;;;;;  greader-opml greader-feed-list greader-subscriptions greader-subscription-list
;;;;;;  greader-preferences greader-reading-list) "g-client/greader"
;;;;;;  "g-client/greader.el" (20325 24345))
;;; Generated autoloads from g-client/greader.el

(autoload 'greader-reading-list "g-client/greader" "\
Ensure our cookies are live, and get the reading list.
Optional interactive prefix `state' prompts for state to retrieve

e.g., starred.

\(fn &optional STATE)" t nil)

(autoload 'greader-preferences "g-client/greader" "\
Ensure our cookies are live, and get all preferences for this
user.

\(fn)" t nil)

(autoload 'greader-subscription-list "g-client/greader" "\
Return list of subscribed urls.

\(fn)" nil nil)

(autoload 'greader-subscriptions "g-client/greader" "\
Return list of subscribed feeds.

\(fn)" nil nil)

(autoload 'greader-feed-list "g-client/greader" "\
Retrieve list of subscribed feeds.

\(fn)" t nil)

(autoload 'greader-opml "g-client/greader" "\
Retrieve OPML representation of our subscription list.

\(fn)" t nil)

(autoload 'greader-subscribe-feed "g-client/greader" "\
Subscribe to specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-unsubscribe-feed "g-client/greader" "\
UnSubscribe from specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-title-feed "g-client/greader" "\
Title  specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-tag-feed "g-client/greader" "\
Tag  specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-untag-feed "g-client/greader" "\
Remove Tag from specified feed.

\(fn FEED-URL)" t nil)

(autoload 'greader-update-subscription "g-client/greader" "\
Perform specified subscribe, unsubscribe, or edit action.

\(fn FEED-URL ACTION)" nil nil)

(autoload 'greader-add-label "g-client/greader" "\
Add label to this item.

\(fn ITEM-URL LABEL)" t nil)

(autoload 'greader-star "g-client/greader" "\
Star this item.

\(fn ITEM-URL)" t nil)

(autoload 'greader-find-feeds "g-client/greader" "\
Find feeds matching query.

\(fn QUERY)" t nil)

(autoload 'greader-search "g-client/greader" "\
GReader search.

\(fn QUERY)" t nil)

(autoload 'greader-sign-out "g-client/greader" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'greader-sign-in "g-client/greader" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'greader-re-authenticate "g-client/greader" "\
Reauthenticate current user.

\(fn)" t nil)

;;;***

;;;### (autoloads (gsheet-sign-in gsheet-sign-out gsheet-sheets gsheet-fetch)
;;;;;;  "g-client/gsheet" "g-client/gsheet.el" (20311 29240))
;;; Generated autoloads from g-client/gsheet.el

(autoload 'gsheet-fetch "g-client/gsheet" "\
Fetch specified sheet.

\(fn SHEET-URL)" t nil)

(autoload 'gsheet-sheets "g-client/gsheet" "\
Retrieve and display feed of feeds after authenticating.

\(fn)" t nil)

(autoload 'gsheet-sign-out "g-client/gsheet" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gsheet-sign-in "g-client/gsheet" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gskeleton-sign-in gskeleton-sign-out) "g-client/gskeleton"
;;;;;;  "g-client/gskeleton.el" (20311 29240))
;;; Generated autoloads from g-client/gskeleton.el

(autoload 'gskeleton-sign-out "g-client/gskeleton" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

(autoload 'gskeleton-sign-in "g-client/gskeleton" "\
Resets client so you can start with a different userid.

\(fn)" t nil)

;;;***

;;;### (autoloads (gtube-video-featured gtube-video-by-user gtube-video-popular
;;;;;;  gtube-video-playlist gtube-video-by-category-and-tag gtube-video-by-tag
;;;;;;  gtube-video-details gtube-user-friends gtube-user-favorites
;;;;;;  gtube-user-profile) "g-client/gtube" "g-client/gtube.el"
;;;;;;  (20311 29240))
;;; Generated autoloads from g-client/gtube.el

(autoload 'gtube-user-profile "g-client/gtube" "\
Retrieve user profile.

\(fn &optional USER)" t nil)

(autoload 'gtube-user-favorites "g-client/gtube" "\
Retrieve user favorites.

\(fn &optional USER)" t nil)

(autoload 'gtube-user-friends "g-client/gtube" "\
Retrieve user profile.

\(fn &optional USER)" t nil)

(autoload 'gtube-video-details "g-client/gtube" "\
Display details of specified video.

\(fn VIDEO-ID)" t nil)

(autoload 'gtube-video-by-tag "g-client/gtube" "\
Retrieve content having specified tag.
optional args page and count specify position in result-set and
  number of results to retrieve.

\(fn TAG &optional PAGE COUNT)" t nil)

(autoload 'gtube-video-by-category-and-tag "g-client/gtube" "\
Retrieve content from specified category having specified tag.
optional args page and count specify position in result-set and
  number of results to retrieve.

\(fn CATEGORY TAG &optional PAGE COUNT)" t nil)

(autoload 'gtube-video-playlist "g-client/gtube" "\
Retrieve content in specified playlist.
optional args page and count specify position in result-set and
  number of results to retrieve.

\(fn PLAYLIST-ID &optional PAGE COUNT)" t nil)

(autoload 'gtube-video-popular "g-client/gtube" "\
Retrieve popular content for specified time-range.
  Time-range is one of day, week, month, or all.

\(fn TIME-RANGE)" t nil)

(autoload 'gtube-video-by-user "g-client/gtube" "\
Retrieve content from specified user.
optional args page and count specify position in result-set and
  number of results to retrieve.

\(fn USER &optional PAGE COUNT)" t nil)

(autoload 'gtube-video-featured "g-client/gtube" "\
Retrieved featured video list.

\(fn)" t nil)

;;;***

;;;### (autoloads (gweb-my-address gweb-maps-reverse-geocode gweb-maps-geocode
;;;;;;  gweb-google-at-point) "g-client/gweb" "g-client/gweb.el"
;;;;;;  (20407 15943))
;;; Generated autoloads from g-client/gweb.el

(defsubst gweb-google-autocomplete-with-corpus (corpus) "\
Read user input using Google Suggest for auto-completion.
Uses specified corpus for prompting and suggest selection." (let* ((completer (intern (format "gweb-%s-suggest-completer" corpus))) (minibuffer-completing-file-name t) (completion-ignore-case t) (word (thing-at-point (quote word))) (query nil)) (unless (fboundp completer) (error "No  suggest handler for corpus %s" corpus)) (setq query (completing-read corpus completer nil nil word (quote gweb-history))) (pushnew query gweb-history) (g-url-encode query)))

(autoload 'gweb-google-at-point "g-client/gweb" "\
Google for term at point, and display top result succinctly.
Attach URL at point so we can follow it later --- subsequent invocations of this command simply follow that URL.
Optional interactive prefix arg refresh forces this cached URL to be refreshed.

\(fn SEARCH-TERM &optional REFRESH)" t nil)

(autoload 'gweb-maps-geocode "g-client/gweb" "\
Geocode given address.
Optional argument `raw-p' returns complete JSON  object.

\(fn ADDRESS &optional RAW-P)" nil nil)

(autoload 'gweb-maps-reverse-geocode "g-client/gweb" "\
Reverse geocode lat-long.
Optional argument `raw-p' returns raw JSON  object.

\(fn LAT-LONG &optional RAW-P)" nil nil)

(defvar gweb-my-location nil "\
Geo coordinates --- automatically set by reverse geocoding gweb-my-address")

(defvar gweb-my-address nil "\
Location address. Setting this updates gweb-my-location coordinates  via geocoding.")

(custom-autoload 'gweb-my-address "g-client/gweb" nil)

;;;***

;;;### (autoloads (js2-mode) "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (20354 40415))
;;; Generated autoloads from js2-mode/js2-mode.el
 (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

;;;***

;;;### (autoloads (magit-status) "magit/magit" "magit/magit.el" (20425
;;;;;;  35020))
;;; Generated autoloads from magit/magit.el

(autoload 'magit-status "magit/magit" "\
Open a Magit status buffer for the Git repository containing
DIR.  If DIR is not within a Git repository, offer to create a
Git repository in DIR.

Interactively, a prefix argument means to ask the user which Git
repository to use even if `default-directory' is under Git control.
Two prefix arguments means to ignore `magit-repo-dirs' when asking for
user input.

\(fn DIR)" t nil)

;;;***

;;;### (autoloads (turn-on-magit-stgit magit-stgit-mode) "magit/magit-stgit"
;;;;;;  "magit/magit-stgit.el" (20330 38125))
;;; Generated autoloads from magit/magit-stgit.el

(autoload 'magit-stgit-mode "magit/magit-stgit" "\
StGit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-stgit "magit/magit-stgit" "\
Unconditionally turn on `magit-stgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (turn-on-magit-svn magit-svn-mode) "magit/magit-svn"
;;;;;;  "magit/magit-svn.el" (20330 38125))
;;; Generated autoloads from magit/magit-svn.el

(autoload 'magit-svn-mode "magit/magit-svn" "\
SVN support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-svn "magit/magit-svn" "\
Unconditionally turn on `magit-svn-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (turn-on-magit-topgit magit-topgit-mode) "magit/magit-topgit"
;;;;;;  "magit/magit-topgit.el" (20330 38125))
;;; Generated autoloads from magit/magit-topgit.el

(autoload 'magit-topgit-mode "magit/magit-topgit" "\
Topgit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-topgit "magit/magit-topgit" "\
Unconditionally turn on `magit-topgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (rebase-mode) "magit/rebase-mode" "magit/rebase-mode.el"
;;;;;;  (20330 38125))
;;; Generated autoloads from magit/rebase-mode.el

(autoload 'rebase-mode "magit/rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("git-rebase-todo" . rebase-mode))

;;;***

;;;### (autoloads (list-packages describe-package package-initialize
;;;;;;  package-refresh-contents package-install-file package-install-from-buffer
;;;;;;  package-install package-enable-at-startup) "package24/package"
;;;;;;  "package24/package.el" (20444 16224))
;;; Generated autoloads from package24/package.el

(defvar package-enable-at-startup t "\
Whether to activate installed packages when Emacs starts.
If non-nil, packages are activated after reading the init file
and before `after-init-hook'.  Activation is not done if
`user-init-file' is nil (e.g. Emacs was started with \"-q\").

Even if the value is nil, you can type \\[package-initialize] to
activate the package system at any time.")

(custom-autoload 'package-enable-at-startup "package24/package" t)

(autoload 'package-install "package24/package" "\
Install the package named NAME.
NAME should be the name of one of the available packages in an
archive in `package-archives'.  Interactively, prompt for NAME.

\(fn NAME)" t nil)

(autoload 'package-install-from-buffer "package24/package" "\
Install a package from the current buffer.
When called interactively, the current buffer is assumed to be a
single .el file that follows the packaging guidelines; see info
node `(elisp)Packaging'.

When called from Lisp, PKG-INFO is a vector describing the
information, of the type returned by `package-buffer-info'; and
TYPE is the package type (either `single' or `tar').

\(fn PKG-INFO TYPE)" t nil)

(autoload 'package-install-file "package24/package" "\
Install a package from a file.
The file can either be a tar file or an Emacs Lisp file.

\(fn FILE)" t nil)

(autoload 'package-refresh-contents "package24/package" "\
Download the ELPA archive description if needed.
This informs Emacs about the latest versions of all packages, and
makes them available for download.

\(fn)" t nil)

(autoload 'package-initialize "package24/package" "\
Load Emacs Lisp packages, and activate them.
The variable `package-load-list' controls which packages to load.
If optional arg NO-ACTIVATE is non-nil, don't activate packages.

\(fn &optional NO-ACTIVATE)" t nil)

(autoload 'describe-package "package24/package" "\
Display the full documentation of PACKAGE (a symbol).

\(fn PACKAGE)" t nil)

(autoload 'list-packages "package24/package" "\
Display a list of packages.
This first fetches the updated list of packages before
displaying, unless a prefix argument NO-FETCH is specified.
The list is displayed in a buffer named `*Packages*'.

\(fn &optional NO-FETCH)" t nil)

(defalias 'package-list-packages 'list-packages)

;;;***

;;;### (autoloads (paredit-mode) "paredit/paredit" "paredit/paredit.el"
;;;;;;  (20444 16227))
;;; Generated autoloads from paredit/paredit.el

(autoload 'paredit-mode "paredit/paredit" "\
Minor mode for pseudo-structurally editing Lisp code.
With a prefix argument, enable Paredit Mode even if there are
  imbalanced parentheses in the buffer.
Paredit behaves badly if parentheses are imbalanced, so exercise
  caution when forcing Paredit Mode to be enabled, and consider
  fixing imbalanced parentheses instead.
\\<paredit-mode-map>

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (twit) "twittering-mode/twittering-mode" "twittering-mode/twittering-mode.el"
;;;;;;  (20392 37167))
;;; Generated autoloads from twittering-mode/twittering-mode.el

(autoload 'twit "twittering-mode/twittering-mode" "\
Start twittering-mode.

\(fn)" t nil)

;;;***

;;;### (autoloads (global-undo-tree-mode undo-tree-mode) "undo-tree/undo-tree"
;;;;;;  "undo-tree/undo-tree.el" (20438 39412))
;;; Generated autoloads from undo-tree/undo-tree.el

(autoload 'undo-tree-mode "undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global-Undo-Tree mode is enabled.
See the command `global-undo-tree-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global-Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("calfw/calfw-cal.el" "calfw/calfw-howm.el"
;;;;;;  "calfw/calfw-ical.el" "calfw/calfw-org.el" "calfw/calfw.el"
;;;;;;  "color-theme-solarized/color-theme-solarized-pkg.el" "color-theme/color-theme-autoloads.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get.el" "g-client/g-autogen.el"
;;;;;;  "g-client/g-load-path.el" "g-client/g.el" "g-client/gnotebook.el"
;;;;;;  "g-client/gwis.el" "g-client/indent-files.el" "g-client/org2blogger.el"
;;;;;;  "magit/magit-pkg.el" "magit/magit-wip.el" "org-fstree/org-fstree.el"
;;;;;;  "twittering-mode/test.el") (20444 37113 297383))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
