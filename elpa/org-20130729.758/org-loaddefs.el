;;; org-loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (org-babel-mark-block org-babel-previous-src-block
;;;;;;  org-babel-next-src-block org-babel-goto-named-result org-babel-goto-named-src-block
;;;;;;  org-babel-goto-src-block-head org-babel-hide-result-toggle-maybe
;;;;;;  org-babel-sha1-hash org-babel-execute-subtree org-babel-execute-buffer
;;;;;;  org-babel-map-executables org-babel-map-call-lines org-babel-map-inline-src-blocks
;;;;;;  org-babel-map-src-blocks org-babel-open-src-block-result
;;;;;;  org-babel-switch-to-session-with-code org-babel-switch-to-session
;;;;;;  org-babel-initiate-session org-babel-load-in-session org-babel-insert-header-arg
;;;;;;  org-babel-check-src-block org-babel-expand-src-block org-babel-execute-src-block
;;;;;;  org-babel-pop-to-session-maybe org-babel-load-in-session-maybe
;;;;;;  org-babel-expand-src-block-maybe org-babel-view-src-block-info
;;;;;;  org-babel-execute-maybe org-babel-execute-safely-maybe) "ob-core"
;;;;;;  "ob-core.el" "aa5df2435d0287f3adc7279900291386")
;;; Generated autoloads from ob-core.el

(autoload 'org-babel-execute-safely-maybe "ob-core" "\


\(fn)" nil nil)

(autoload 'org-babel-execute-maybe "ob-core" "\


\(fn)" t nil)

(autoload 'org-babel-view-src-block-info "ob-core" "\
Display information on the current source block.
This includes header arguments, language and name, and is largely
a window into the `org-babel-get-src-block-info' function.

\(fn)" t nil)

(autoload 'org-babel-expand-src-block-maybe "ob-core" "\
Conditionally expand a source block.
Detect if this is context for a org-babel src-block and if so
then run `org-babel-expand-src-block'.

\(fn)" t nil)

(autoload 'org-babel-load-in-session-maybe "ob-core" "\
Conditionally load a source block in a session.
Detect if this is context for a org-babel src-block and if so
then run `org-babel-load-in-session'.

\(fn)" t nil)

(autoload 'org-babel-pop-to-session-maybe "ob-core" "\
Conditionally pop to a session.
Detect if this is context for a org-babel src-block and if so
then run `org-babel-switch-to-session'.

\(fn)" t nil)

(autoload 'org-babel-execute-src-block "ob-core" "\
Execute the current source code block.
Insert the results of execution into the buffer.  Source code
execution and the collection and formatting of results can be
controlled through a variety of header arguments.

With prefix argument ARG, force re-execution even if an existing
result cached in the buffer would otherwise have been returned.

Optionally supply a value for INFO in the form returned by
`org-babel-get-src-block-info'.

Optionally supply a value for PARAMS which will be merged with
the header arguments specified at the front of the source code
block.

\(fn &optional ARG INFO PARAMS)" t nil)

(autoload 'org-babel-expand-src-block "ob-core" "\
Expand the current source code block.
Expand according to the source code block's header
arguments and pop open the results in a preview buffer.

\(fn &optional ARG INFO PARAMS)" t nil)

(autoload 'org-babel-check-src-block "ob-core" "\
Check for misspelled header arguments in the current code block.

\(fn)" t nil)

(autoload 'org-babel-insert-header-arg "ob-core" "\
Insert a header argument selecting from lists of common args and values.

\(fn)" t nil)

(autoload 'org-babel-load-in-session "ob-core" "\
Load the body of the current source-code block.
Evaluate the header arguments for the source block before
entering the session.  After loading the body this pops open the
session.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-initiate-session "ob-core" "\
Initiate session for current code block.
If called with a prefix argument then resolve any variable
references in the header arguments and assign these variables in
the session.  Copy the body of the code block to the kill ring.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-switch-to-session "ob-core" "\
Switch to the session of the current code block.
Uses `org-babel-initiate-session' to start the session.  If called
with a prefix argument then this is passed on to
`org-babel-initiate-session'.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-switch-to-session-with-code "ob-core" "\
Switch to code buffer and display session.

\(fn &optional ARG INFO)" t nil)

(autoload 'org-babel-open-src-block-result "ob-core" "\
If `point' is on a src block then open the results of the
source code block, otherwise return nil.  With optional prefix
argument RE-RUN the source-code block is evaluated even if
results already exist.

\(fn &optional RE-RUN)" t nil)

(autoload 'org-babel-map-src-blocks "ob-core" "\
Evaluate BODY forms on each source-block in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.  During evaluation of BODY the following local variables
are set relative to the currently matched code block.

full-block ------- string holding the entirety of the code block
beg-block -------- point at the beginning of the code block
end-block -------- point at the end of the matched code block
lang ------------- string holding the language of the code block
beg-lang --------- point at the beginning of the lang
end-lang --------- point at the end of the lang
switches --------- string holding the switches
beg-switches ----- point at the beginning of the switches
end-switches ----- point at the end of the switches
header-args ------ string holding the header-args
beg-header-args -- point at the beginning of the header-args
end-header-args -- point at the end of the header-args
body ------------- string holding the body of the code block
beg-body --------- point at the beginning of the body
end-body --------- point at the end of the body

\(fn FILE &rest BODY)" nil (quote macro))

(put 'org-babel-map-src-blocks 'lisp-indent-function '1)

(autoload 'org-babel-map-inline-src-blocks "ob-core" "\
Evaluate BODY forms on each inline source-block in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.

\(fn FILE &rest BODY)" nil (quote macro))

(put 'org-babel-map-inline-src-blocks 'lisp-indent-function '1)

(autoload 'org-babel-map-call-lines "ob-core" "\
Evaluate BODY forms on each call line in FILE.
If FILE is nil evaluate BODY forms on source blocks in current
buffer.

\(fn FILE &rest BODY)" nil (quote macro))

(put 'org-babel-map-call-lines 'lisp-indent-function '1)

(autoload 'org-babel-map-executables "ob-core" "\


\(fn FILE &rest BODY)" nil (quote macro))

(put 'org-babel-map-executables 'lisp-indent-function '1)

(autoload 'org-babel-execute-buffer "ob-core" "\
Execute source code blocks in a buffer.
Call `org-babel-execute-src-block' on every source block in
the current buffer.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-execute-subtree "ob-core" "\
Execute source code blocks in a subtree.
Call `org-babel-execute-src-block' on every source block in
the current subtree.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-sha1-hash "ob-core" "\
Generate an sha1 hash based on the value of info.

\(fn &optional INFO)" t nil)

(autoload 'org-babel-hide-result-toggle-maybe "ob-core" "\
Toggle visibility of result at point.

\(fn)" t nil)

(autoload 'org-babel-goto-src-block-head "ob-core" "\
Go to the beginning of the current code block.

\(fn)" t nil)

(autoload 'org-babel-goto-named-src-block "ob-core" "\
Go to a named source-code block.

\(fn NAME)" t nil)

(autoload 'org-babel-goto-named-result "ob-core" "\
Go to a named result.

\(fn NAME)" t nil)

(autoload 'org-babel-next-src-block "ob-core" "\
Jump to the next source block.
With optional prefix argument ARG, jump forward ARG many source blocks.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-previous-src-block "ob-core" "\
Jump to the previous source block.
With optional prefix argument ARG, jump backward ARG many source blocks.

\(fn &optional ARG)" t nil)

(autoload 'org-babel-mark-block "ob-core" "\
Mark current src block.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-babel-describe-bindings) "ob-keys" "ob-keys.el"
;;;;;;  "f41a561a02eb66238c2824e76e3f8cc8")
;;; Generated autoloads from ob-keys.el

(autoload 'org-babel-describe-bindings "ob-keys" "\
Describe all keybindings behind `org-babel-key-prefix'.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-babel-lob-get-info org-babel-lob-execute-maybe)
;;;;;;  "ob-lob" "ob-lob.el" "d94d0930566ed1471ffe0d04603ac1bc")
;;; Generated autoloads from ob-lob.el

(autoload 'org-babel-lob-execute-maybe "ob-lob" "\
Execute a Library of Babel source block, if appropriate.
Detect if this is context for a Library Of Babel source block and
if so then run the appropriate source block from the Library.

\(fn)" t nil)

(autoload 'org-babel-lob-get-info "ob-lob" "\
Return a Library of Babel function call as a string.

\(fn)" nil nil)

;;;***

;;;### (autoloads (org-babel-tangle org-babel-tangle-file) "ob-tangle"
;;;;;;  "ob-tangle.el" "4be192fcb6c6b0ed49ed439b74cbc014")
;;; Generated autoloads from ob-tangle.el

(autoload 'org-babel-tangle-file "ob-tangle" "\
Extract the bodies of source code blocks in FILE.
Source code blocks are extracted with `org-babel-tangle'.
Optional argument TARGET-FILE can be used to specify a default
export file for all source blocks.  Optional argument LANG can be
used to limit the exported source code blocks by language.

\(fn FILE &optional TARGET-FILE LANG)" t nil)

(autoload 'org-babel-tangle "ob-tangle" "\
Write code blocks to source-specific files.
Extract the bodies of all source code blocks from the current
file into their own source-specific files.
With one universal prefix argument, only tangle the block at point.
When two universal prefix arguments, only tangle blocks for the
tangle file of the block at point.
Optional argument TARGET-FILE can be used to specify a default
export file for all source blocks.  Optional argument LANG can be
used to limit the exported source code blocks by language.

\(fn &optional ARG TARGET-FILE LANG)" t nil)

;;;***

;;;### (autoloads (org-archive-subtree-default-with-confirmation
;;;;;;  org-archive-subtree-default org-toggle-archive-tag org-archive-to-archive-sibling
;;;;;;  org-archive-subtree) "org-archive" "org-archive.el" "bc3cb1755c5b20dc90bde801f0202eca")
;;; Generated autoloads from org-archive.el

(autoload 'org-archive-subtree "org-archive" "\
Move the current subtree to the archive.
The archive can be a certain top-level heading in the current file, or in
a different file.  The tree will be moved to that location, the subtree
heading be marked DONE, and the current time will be added.

When called with prefix argument FIND-DONE, find whole trees without any
open TODO items and archive them (after getting confirmation from the user).
If the cursor is not at a headline when this command is called, try all level
1 trees.  If the cursor is on a headline, only try the direct children of
this heading.

\(fn &optional FIND-DONE)" t nil)

(autoload 'org-archive-to-archive-sibling "org-archive" "\
Archive the current heading by moving it under the archive sibling.
The archive sibling is a sibling of the heading with the heading name
`org-archive-sibling-heading' and an `org-archive-tag' tag.  If this
sibling does not exist, it will be created at the end of the subtree.

\(fn)" t nil)

(autoload 'org-toggle-archive-tag "org-archive" "\
Toggle the archive tag for the current headline.
With prefix ARG, check all children of current headline and offer tagging
the children that do not contain any open TODO items.

\(fn &optional FIND-DONE)" t nil)

(autoload 'org-archive-subtree-default "org-archive" "\
Archive the current subtree with the default command.
This command is set with the variable `org-archive-default-command'.

\(fn)" t nil)

(autoload 'org-archive-subtree-default-with-confirmation "org-archive" "\
Archive the current subtree with the default command.
This command is set with the variable `org-archive-default-command'.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-attach) "org-attach" "org-attach.el" "0f042777440a0b6677b74d048cc07bba")
;;; Generated autoloads from org-attach.el

(autoload 'org-attach "org-attach" "\
The dispatcher for attachment commands.
Shows a list of commands and prompts for another key to execute a command.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-bbdb-anniversaries) "org-bbdb" "org-bbdb.el"
;;;;;;  "867e99974c8aab087ba115fc8f89e956")
;;; Generated autoloads from org-bbdb.el

(autoload 'org-bbdb-anniversaries "org-bbdb" "\
Extract anniversaries from BBDB for display in the agenda.

\(fn)" nil nil)

;;;***

;;;### (autoloads (org-dblock-write:clocktable org-clock-report org-clock-get-clocktable
;;;;;;  org-clock-display org-clock-sum org-clock-goto org-clock-cancel
;;;;;;  org-clock-out org-clock-in-last org-clock-in org-resolve-clocks)
;;;;;;  "org-clock" "org-clock.el" "720cce26336078e7d04566d8a7966941")
;;; Generated autoloads from org-clock.el

(autoload 'org-resolve-clocks "org-clock" "\
Resolve all currently open org-mode clocks.
If `only-dangling-p' is non-nil, only ask to resolve dangling
\(i.e., not currently open and valid) clocks.

\(fn &optional ONLY-DANGLING-P PROMPT-FN LAST-VALID)" t nil)

(autoload 'org-clock-in "org-clock" "\
Start the clock on the current item.
If necessary, clock-out of the currently active clock.
With a prefix argument SELECT (\\[universal-argument]), offer a list of recently clocked
tasks to clock into.  When SELECT is \\[universal-argument] \\[universal-argument], clock into the current task
and mark it as the default task, a special task that will always be offered
in the clocking selection, associated with the letter `d'.
When SELECT is \\[universal-argument] \\[universal-argument] \\[universal-argument], clock in by using the last clock-out
time as the start time (see `org-clock-continuously' to
make this the default behavior.)

\(fn &optional SELECT START-TIME)" t nil)

(autoload 'org-clock-in-last "org-clock" "\
Clock in the last closed clocked item.
When already clocking in, send an warning.
With a universal prefix argument, select the task you want to
clock in from the last clocked in tasks.
With two universal prefix arguments, start clocking using the
last clock-out time, if any.
With three universal prefix arguments, interactively prompt
for a todo state to switch to, overriding the existing value
`org-clock-in-switch-to-state'.

\(fn &optional ARG)" t nil)

(autoload 'org-clock-out "org-clock" "\
Stop the currently running clock.
Throw an error if there is no running clock and FAIL-QUIETLY is nil.
With a universal prefix, prompt for a state to switch the clocked out task
to, overriding the existing value of `org-clock-out-switch-to-state'.

\(fn &optional SWITCH-TO-STATE FAIL-QUIETLY AT-TIME)" t nil)

(autoload 'org-clock-cancel "org-clock" "\
Cancel the running clock by removing the start timestamp.

\(fn)" t nil)

(autoload 'org-clock-goto "org-clock" "\
Go to the currently clocked-in entry, or to the most recently clocked one.
With prefix arg SELECT, offer recently clocked tasks for selection.

\(fn &optional SELECT)" t nil)

(autoload 'org-clock-sum "org-clock" "\
Sum the times for each subtree.
Puts the resulting times in minutes as a text property on each headline.
TSTART and TEND can mark a time range to be considered.
HEADLINE-FILTER is a zero-arg function that, if specified, is called for
each headline in the time range with point at the headline.  Headlines for
which HEADLINE-FILTER returns nil are excluded from the clock summation.
PROPNAME lets you set a custom text property instead of :org-clock-minutes.

\(fn &optional TSTART TEND HEADLINE-FILTER PROPNAME)" t nil)

(autoload 'org-clock-display "org-clock" "\
Show subtree times in the entire buffer.
If TOTAL-ONLY is non-nil, only show the total time for the entire file
in the echo area.

Use \\[org-clock-remove-overlays] to remove the subtree times.

\(fn &optional TOTAL-ONLY)" t nil)

(autoload 'org-clock-get-clocktable "org-clock" "\
Get a formatted clocktable with parameters according to PROPS.
The table is created in a temporary buffer, fully formatted and
fontified, and then returned.

\(fn &rest PROPS)" nil nil)

(autoload 'org-clock-report "org-clock" "\
Create a table containing a report about clocked time.
If the cursor is inside an existing clocktable block, then the table
will be updated.  If not, a new clocktable will be inserted.  The scope
of the new clock will be subtree when called from within a subtree, and
file elsewhere.

When called with a prefix argument, move to the first clock table in the
buffer and update it.

\(fn &optional ARG)" t nil)

(autoload 'org-dblock-write:clocktable "org-clock" "\
Write the standard clocktable.

\(fn PARAMS)" nil nil)

;;;***

;;;### (autoloads (org-datetree-find-date-create) "org-datetree"
;;;;;;  "org-datetree.el" "954f9d30ea6ea9b72b310bba030ca9a4")
;;; Generated autoloads from org-datetree.el

(autoload 'org-datetree-find-date-create "org-datetree" "\
Find or create an entry for DATE.
If KEEP-RESTRICTION is non-nil, do not widen the buffer.
When it is nil, the buffer will be widened to make sure an existing date
tree can be found.

\(fn DATE &optional KEEP-RESTRICTION)" nil nil)

;;;***

;;;### (autoloads (org-element-context org-element-at-point org-element-interpret-data)
;;;;;;  "org-element" "org-element.el" "7ac418c9fe17eba7939010a7b1933f32")
;;; Generated autoloads from org-element.el

(autoload 'org-element-interpret-data "org-element" "\
Interpret DATA as Org syntax.

DATA is a parse tree, an element, an object or a secondary string
to interpret.

Optional argument PARENT is used for recursive calls.  It contains
the element or object containing data, or nil.

Return Org syntax as a string.

\(fn DATA &optional PARENT)" nil nil)

(autoload 'org-element-at-point "org-element" "\
Determine closest element around point.

Return value is a list like (TYPE PROPS) where TYPE is the type
of the element and PROPS a plist of properties associated to the
element.

Possible types are defined in `org-element-all-elements'.
Properties depend on element or object type, but always include
`:begin', `:end', `:parent' and `:post-blank' properties.

As a special case, if point is at the very beginning of a list or
sub-list, returned element will be that list instead of the first
item.  In the same way, if point is at the beginning of the first
row of a table, returned element will be the table instead of the
first row.

If optional argument KEEP-TRAIL is non-nil, the function returns
a list of elements leading to element at point.  The list's CAR
is always the element at point.  The following positions contain
element's siblings, then parents, siblings of parents, until the
first element of current section.

\(fn &optional KEEP-TRAIL)" nil nil)

(autoload 'org-element-context "org-element" "\
Return closest element or object around point.

Return value is a list like (TYPE PROPS) where TYPE is the type
of the element or object and PROPS a plist of properties
associated to it.

Possible types are defined in `org-element-all-elements' and
`org-element-all-objects'.  Properties depend on element or
object type, but always include `:begin', `:end', `:parent' and
`:post-blank'.

Optional argument ELEMENT, when non-nil, is the closest element
containing point, as returned by `org-element-at-point'.
Providing it allows for quicker computation.

\(fn &optional ELEMENT)" nil nil)

;;;***

;;;### (autoloads (org-feed-show-raw-feed org-feed-goto-inbox org-feed-update
;;;;;;  org-feed-update-all) "org-feed" "org-feed.el" "f5f190118c0e7321f88972d9a4749f5f")
;;; Generated autoloads from org-feed.el

(autoload 'org-feed-update-all "org-feed" "\
Get inbox items from all feeds in `org-feed-alist'.

\(fn)" t nil)

(autoload 'org-feed-update "org-feed" "\
Get inbox items from FEED.
FEED can be a string with an association in `org-feed-alist', or
it can be a list structured like an entry in `org-feed-alist'.

\(fn FEED &optional RETRIEVE-ONLY)" t nil)

(autoload 'org-feed-goto-inbox "org-feed" "\
Go to the inbox that captures the feed named FEED.

\(fn FEED)" t nil)

(autoload 'org-feed-show-raw-feed "org-feed" "\
Show the raw feed buffer of a feed.

\(fn FEED)" t nil)

;;;***

;;;### (autoloads (org-footnote-normalize org-footnote-action) "org-footnote"
;;;;;;  "org-footnote.el" "498ce4bcc019503ef9657f915606b130")
;;; Generated autoloads from org-footnote.el

(autoload 'org-footnote-action "org-footnote" "\
Do the right thing for footnotes.

When at a footnote reference, jump to the definition.

When at a definition, jump to the references if they exist, offer
to create them otherwise.

When neither at definition or reference, create a new footnote,
interactively.

With prefix arg SPECIAL, offer additional commands in a menu.

\(fn &optional SPECIAL)" t nil)

(autoload 'org-footnote-normalize "org-footnote" "\
Collect the footnotes in various formats and normalize them.

This finds the different sorts of footnotes allowed in Org, and
normalizes them to the usual [N] format.

When SORT-ONLY is set, only sort the footnote definitions into the
referenced sequence.

\(fn &optional SORT-ONLY)" nil nil)

;;;***

;;;### (autoloads (org-id-store-link org-id-find-id-file org-id-update-id-locations
;;;;;;  org-id-find org-id-goto org-id-get org-id-get-create) "org-id"
;;;;;;  "org-id.el" "058cecf9786ef0ba525ed56f747a79e0")
;;; Generated autoloads from org-id.el

(autoload 'org-id-get-create "org-id" "\
Create an ID for the current entry and return it.
If the entry already has an ID, just return it.
With optional argument FORCE, force the creation of a new ID.

\(fn &optional FORCE)" t nil)

(autoload 'org-id-get "org-id" "\
Get the ID property of the entry at point-or-marker POM.
If POM is nil, refer to the entry at point.
If the entry does not have an ID, the function returns nil.
However, when CREATE is non nil, create an ID if none is present already.
PREFIX will be passed through to `org-id-new'.
In any case, the ID of the entry is returned.

\(fn &optional POM CREATE PREFIX)" nil nil)

(autoload 'org-id-goto "org-id" "\
Switch to the buffer containing the entry with id ID.
Move the cursor to that entry in that buffer.

\(fn ID)" t nil)

(autoload 'org-id-find "org-id" "\
Return the location of the entry with the id ID.
The return value is a cons cell (file-name . position), or nil
if there is no entry with that ID.
With optional argument MARKERP, return the position as a new marker.

\(fn ID &optional MARKERP)" nil nil)

(autoload 'org-id-update-id-locations "org-id" "\
Scan relevant files for IDs.
Store the relation between files and corresponding IDs.
This will scan all agenda files, all associated archives, and all
files currently mentioned in `org-id-locations'.
When FILES is given, scan these files instead.
When CHECK is given, prepare detailed information about duplicate IDs.

\(fn &optional FILES SILENT)" t nil)

(autoload 'org-id-find-id-file "org-id" "\
Query the id database for the file in which this ID is located.

\(fn ID)" nil nil)

(autoload 'org-id-store-link "org-id" "\
Store a link to the current entry, using its ID.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-indent-mode) "org-indent" "org-indent.el"
;;;;;;  "5257f4635c377537f302a83dc69419dd")
;;; Generated autoloads from org-indent.el

(autoload 'org-indent-mode "org-indent" "\
When active, indent text according to outline structure.

Internally this works by adding `line-prefix' and `wrap-prefix'
properties, after each buffer modification, on the modified zone.

The process is synchronous.  Though, initial indentation of
buffer, which can take a few seconds on large buffers, is done
during idle time.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (org-irc-store-link) "org-irc" "org-irc.el" "f5d45d21f475b63408f333384ce1cc61")
;;; Generated autoloads from org-irc.el

(autoload 'org-irc-store-link "org-irc" "\
Dispatch to the appropriate function to store a link to an IRC session.

\(fn)" nil nil)

;;;***

;;;### (autoloads (org-mobile-pull org-mobile-push) "org-mobile"
;;;;;;  "org-mobile.el" "385f6e8212babd40eb1d232951b3aa53")
;;; Generated autoloads from org-mobile.el

(autoload 'org-mobile-push "org-mobile" "\
Push the current state of Org affairs to the target directory.
This will create the index file, copy all agenda files there, and also
create all custom agenda views, for upload to the mobile phone.

\(fn)" t nil)

(autoload 'org-mobile-pull "org-mobile" "\
Pull the contents of `org-mobile-capture-file' and integrate them.
Apply all flagged actions, flag entries to be flagged and then call an
agenda view showing the flagged items.

\(fn)" t nil)

;;;***

;;;### (autoloads (org-plot/gnuplot) "org-plot" "org-plot.el" "99a279b8b25fe56779d7c49fc617f1bf")
;;; Generated autoloads from org-plot.el

(autoload 'org-plot/gnuplot "org-plot" "\
Plot table using gnuplot.  Gnuplot options can be specified with PARAMS.
If not given options will be taken from the +PLOT
line directly before or after the table.

\(fn &optional PARAMS)" t nil)

;;;***

;;;### (autoloads (orgtbl-to-orgtbl orgtbl-to-texinfo orgtbl-to-html
;;;;;;  orgtbl-to-latex orgtbl-to-csv orgtbl-to-tsv orgtbl-to-generic
;;;;;;  org-table-to-lisp orgtbl-mode org-table-toggle-formula-debugger
;;;;;;  org-table-toggle-coordinate-overlays org-table-edit-formulas
;;;;;;  org-table-iterate-buffer-tables org-table-recalculate-buffer-tables
;;;;;;  org-table-iterate org-table-recalculate org-table-set-constants
;;;;;;  org-table-eval-formula org-table-maybe-recalculate-line org-table-rotate-recalc-marks
;;;;;;  org-table-maybe-eval-formula org-table-get-stored-formulas
;;;;;;  org-table-sum org-table-edit-field org-table-wrap-region
;;;;;;  org-table-convert org-table-paste-rectangle org-table-copy-region
;;;;;;  org-table-cut-region org-table-sort-lines org-table-kill-row
;;;;;;  org-table-hline-and-move org-table-insert-hline org-table-insert-row
;;;;;;  org-table-move-row org-table-move-row-up org-table-move-row-down
;;;;;;  org-table-move-column org-table-move-column-left org-table-move-column-right
;;;;;;  org-table-delete-column org-table-insert-column org-table-goto-column
;;;;;;  org-table-current-dline org-table-field-info org-table-copy-down
;;;;;;  org-table-next-row org-table-previous-field org-table-next-field
;;;;;;  org-table-justify-field-maybe org-table-align org-table-export
;;;;;;  org-table-import org-table-convert-region org-table-create
;;;;;;  org-table-create-or-convert-from-region org-table-create-with-table\.el)
;;;;;;  "org-table" "org-table.el" "55c17fdab17977e3d6dba863eaed4368")
;;; Generated autoloads from org-table.el

(autoload 'org-table-create-with-table\.el "org-table" "\
Use the table.el package to insert a new table.
If there is already a table at point, convert between Org-mode tables
and table.el tables.

\(fn)" t nil)

(autoload 'org-table-create-or-convert-from-region "org-table" "\
Convert region to table, or create an empty table.
If there is an active region, convert it to a table, using the function
`org-table-convert-region'.  See the documentation of that function
to learn how the prefix argument is interpreted to determine the field
separator.
If there is no such region, create an empty table with `org-table-create'.

\(fn ARG)" t nil)

(autoload 'org-table-create "org-table" "\
Query for a size and insert a table skeleton.
SIZE is a string Columns x Rows like for example \"3x2\".

\(fn &optional SIZE)" t nil)

(autoload 'org-table-convert-region "org-table" "\
Convert region to a table.
The region goes from BEG0 to END0, but these borders will be moved
slightly, to make sure a beginning of line in the first line is included.

SEPARATOR specifies the field separator in the lines.  It can have the
following values:

'(4)     Use the comma as a field separator
'(16)    Use a TAB as field separator
integer  When a number, use that many spaces as field separator
nil      When nil, the command tries to be smart and figure out the
         separator in the following way:
         - when each line contains a TAB, assume TAB-separated material
         - when each line contains a comma, assume CSV material
         - else, assume one or more SPACE characters as separator.

\(fn BEG0 END0 &optional SEPARATOR)" t nil)

(autoload 'org-table-import "org-table" "\
Import FILE as a table.
The file is assumed to be tab-separated.  Such files can be produced by most
spreadsheet and database applications.  If no tabs (at least one per line)
are found, lines will be split on whitespace into fields.

\(fn FILE ARG)" t nil)

(autoload 'org-table-export "org-table" "\
Export table to a file, with configurable format.
Such a file can be imported into usual spreadsheet programs.

FILE can be the output file name.  If not given, it will be taken
from a TABLE_EXPORT_FILE property in the current entry or higher
up in the hierarchy, or the user will be prompted for a file
name.  FORMAT can be an export format, of the same kind as it
used when `orgtbl-mode' sends a table in a different format.

The command suggests a format depending on TABLE_EXPORT_FORMAT,
whether it is set locally or up in the hierarchy, then on the
extension of the given file name, and finally on the variable
`org-table-export-default-format'.

\(fn &optional FILE FORMAT)" t nil)

(autoload 'org-table-align "org-table" "\
Align the table at point by aligning all vertical bars.

\(fn)" t nil)

(autoload 'org-table-justify-field-maybe "org-table" "\
Justify the current field, text to left, number to right.
Optional argument NEW may specify text to replace the current field content.

\(fn &optional NEW)" nil nil)

(autoload 'org-table-next-field "org-table" "\
Go to the next field in the current table, creating new lines as needed.
Before doing so, re-align the table if necessary.

\(fn)" t nil)

(autoload 'org-table-previous-field "org-table" "\
Go to the previous field in the table.
Before doing so, re-align the table if necessary.

\(fn)" t nil)

(autoload 'org-table-next-row "org-table" "\
Go to the next row (same column) in the current table.
Before doing so, re-align the table if necessary.

\(fn)" t nil)

(autoload 'org-table-copy-down "org-table" "\
Copy a field down in the current column.
If the field at the cursor is empty, copy into it the content of
the nearest non-empty field above.  With argument N, use the Nth
non-empty field.  If the current field is not empty, it is copied
down to the next row, and the cursor is moved with it.
Therefore, repeating this command causes the column to be filled
row-by-row.
If the variable `org-table-copy-increment' is non-nil and the
field is an integer or a timestamp, it will be incremented while
copying.  In the case of a timestamp, increment by one day.

\(fn N)" t nil)

(autoload 'org-table-field-info "org-table" "\
Show info about the current field, and highlight any reference at point.

\(fn ARG)" t nil)

(autoload 'org-table-current-dline "org-table" "\
Find out what table data line we are in.
Only data lines count for this.

\(fn)" t nil)

(autoload 'org-table-goto-column "org-table" "\
Move the cursor to the Nth column in the current table line.
With optional argument ON-DELIM, stop with point before the left delimiter
of the field.
If there are less than N fields, just go to after the last delimiter.
However, when FORCE is non-nil, create new columns if necessary.

\(fn N &optional ON-DELIM FORCE)" t nil)

(autoload 'org-table-insert-column "org-table" "\
Insert a new column into the table.

\(fn)" t nil)

(autoload 'org-table-delete-column "org-table" "\
Delete a column from the table.

\(fn)" t nil)

(autoload 'org-table-move-column-right "org-table" "\
Move column to the right.

\(fn)" t nil)

(autoload 'org-table-move-column-left "org-table" "\
Move column to the left.

\(fn)" t nil)

(autoload 'org-table-move-column "org-table" "\
Move the current column to the right.  With arg LEFT, move to the left.

\(fn &optional LEFT)" t nil)

(autoload 'org-table-move-row-down "org-table" "\
Move table row down.

\(fn)" t nil)

(autoload 'org-table-move-row-up "org-table" "\
Move table row up.

\(fn)" t nil)

(autoload 'org-table-move-row "org-table" "\
Move the current table line down.  With arg UP, move it up.

\(fn &optional UP)" t nil)

(autoload 'org-table-insert-row "org-table" "\
Insert a new row above the current line into the table.
With prefix ARG, insert below the current line.

\(fn &optional ARG)" t nil)

(autoload 'org-table-insert-hline "org-table" "\
Insert a horizontal-line below the current line into the table.
With prefix ABOVE, insert above the current line.

\(fn &optional ABOVE)" t nil)

(autoload 'org-table-hline-and-move "org-table" "\
Insert a hline and move to the row below that line.

\(fn &optional SAME-COLUMN)" t nil)

(autoload 'org-table-kill-row "org-table" "\
Delete the current row or horizontal line from the table.

\(fn)" t nil)

(autoload 'org-table-sort-lines "org-table" "\
Sort table lines according to the column at point.

The position of point indicates the column to be used for
sorting, and the range of lines is the range between the nearest
horizontal separator lines, or the entire table of no such lines
exist.  If point is before the first column, you will be prompted
for the sorting column.  If there is an active region, the mark
specifies the first line and the sorting column, while point
should be in the last line to be included into the sorting.

The command then prompts for the sorting type which can be
alphabetically, numerically, or by time (as given in a time stamp
in the field).  Sorting in reverse order is also possible.

With prefix argument WITH-CASE, alphabetic sorting will be case-sensitive.

If SORTING-TYPE is specified when this function is called from a Lisp
program, no prompting will take place.  SORTING-TYPE must be a character,
any of (?a ?A ?n ?N ?t ?T) where the capital letter indicate that sorting
should be done in reverse order.

\(fn WITH-CASE &optional SORTING-TYPE)" t nil)

(autoload 'org-table-cut-region "org-table" "\
Copy region in table to the clipboard and blank all relevant fields.
If there is no active region, use just the field at point.

\(fn BEG END)" t nil)

(autoload 'org-table-copy-region "org-table" "\
Copy rectangular region in table to clipboard.
A special clipboard is used which can only be accessed
with `org-table-paste-rectangle'.

\(fn BEG END &optional CUT)" t nil)

(autoload 'org-table-paste-rectangle "org-table" "\
Paste a rectangular region into a table.
The upper right corner ends up in the current field.  All involved fields
will be overwritten.  If the rectangle does not fit into the present table,
the table is enlarged as needed.  The process ignores horizontal separator
lines.

\(fn)" t nil)

(autoload 'org-table-convert "org-table" "\
Convert from `org-mode' table to table.el and back.
Obviously, this only works within limits.  When an Org-mode table is
converted to table.el, all horizontal separator lines get lost, because
table.el uses these as cell boundaries and has no notion of horizontal lines.
A table.el table can be converted to an Org-mode table only if it does not
do row or column spanning.  Multiline cells will become multiple cells.
Beware, Org-mode does not test if the table can be successfully converted - it
blindly applies a recipe that works for simple tables.

\(fn)" t nil)

(autoload 'org-table-wrap-region "org-table" "\
Wrap several fields in a column like a paragraph.
This is useful if you'd like to spread the contents of a field over several
lines, in order to keep the table compact.

If there is an active region, and both point and mark are in the same column,
the text in the column is wrapped to minimum width for the given number of
lines.  Generally, this makes the table more compact.  A prefix ARG may be
used to change the number of desired lines.  For example, `C-2 \\[org-table-wrap]'
formats the selected text to two lines.  If the region was longer than two
lines, the remaining lines remain empty.  A negative prefix argument reduces
the current number of lines by that amount.  The wrapped text is pasted back
into the table.  If you formatted it to more lines than it was before, fields
further down in the table get overwritten - so you might need to make space in
the table first.

If there is no region, the current field is split at the cursor position and
the text fragment to the right of the cursor is prepended to the field one
line down.

If there is no region, but you specify a prefix ARG, the current field gets
blank, and the content is appended to the field above.

\(fn ARG)" t nil)

(autoload 'org-table-edit-field "org-table" "\
Edit table field in a different window.
This is mainly useful for fields that contain hidden parts.
When called with a \\[universal-argument] prefix, just make the full field visible so that
it can be edited in place.

\(fn ARG)" t nil)

(autoload 'org-table-sum "org-table" "\
Sum numbers in region of current table column.
The result will be displayed in the echo area, and will be available
as kill to be inserted with \\[yank].

If there is an active region, it is interpreted as a rectangle and all
numbers in that rectangle will be summed.  If there is no active
region and point is located in a table column, sum all numbers in that
column.

If at least one number looks like a time HH:MM or HH:MM:SS, all other
numbers are assumed to be times as well (in decimal hours) and the
numbers are added as such.

If NLAST is a number, only the NLAST fields will actually be summed.

\(fn &optional BEG END NLAST)" t nil)

(autoload 'org-table-get-stored-formulas "org-table" "\
Return an alist with the stored formulas directly after current table.

\(fn &optional NOERROR)" t nil)

(autoload 'org-table-maybe-eval-formula "org-table" "\
Check if the current field starts with \"=\" or \":=\".
If yes, store the formula and apply it.

\(fn)" nil nil)

(autoload 'org-table-rotate-recalc-marks "org-table" "\
Rotate the recalculation mark in the first column.
If in any row, the first field is not consistent with a mark,
insert a new column for the markers.
When there is an active region, change all the lines in the region,
after prompting for the marking character.
After each change, a message will be displayed indicating the meaning
of the new mark.

\(fn &optional NEWCHAR)" t nil)

(autoload 'org-table-maybe-recalculate-line "org-table" "\
Recompute the current line if marked for it, and if we haven't just done it.

\(fn)" t nil)

(autoload 'org-table-eval-formula "org-table" "\
Replace the table field value at the cursor by the result of a calculation.

This function makes use of Dave Gillespie's Calc package, in my view the
most exciting program ever written for GNU Emacs.  So you need to have Calc
installed in order to use this function.

In a table, this command replaces the value in the current field with the
result of a formula.  It also installs the formula as the \"current\" column
formula, by storing it in a special line below the table.  When called
with a `C-u' prefix, the current field must be a named field, and the
formula is installed as valid in only this specific field.

When called with two `C-u' prefixes, insert the active equation
for the field back into the current field, so that it can be
edited there.  This is useful in order to use \\[org-table-show-reference]
to check the referenced fields.

When called, the command first prompts for a formula, which is read in
the minibuffer.  Previously entered formulas are available through the
history list, and the last used formula is offered as a default.
These stored formulas are adapted correctly when moving, inserting, or
deleting columns with the corresponding commands.

The formula can be any algebraic expression understood by the Calc package.
For details, see the Org-mode manual.

This function can also be called from Lisp programs and offers
additional arguments: EQUATION can be the formula to apply.  If this
argument is given, the user will not be prompted.  SUPPRESS-ALIGN is
used to speed-up recursive calls by by-passing unnecessary aligns.
SUPPRESS-CONST suppresses the interpretation of constants in the
formula, assuming that this has been done already outside the function.
SUPPRESS-STORE means the formula should not be stored, either because
it is already stored, or because it is a modified equation that should
not overwrite the stored one.

\(fn &optional ARG EQUATION SUPPRESS-ALIGN SUPPRESS-CONST SUPPRESS-STORE SUPPRESS-ANALYSIS)" t nil)

(autoload 'org-table-set-constants "org-table" "\
Set `org-table-formula-constants-local' in the current buffer.

\(fn)" nil nil)

(autoload 'org-table-recalculate "org-table" "\
Recalculate the current table line by applying all stored formulas.
With prefix arg ALL, do this for all lines in the table.
With the prefix argument ALL is `(16)' (a double \\[universal-prefix] \\[universal-prefix] prefix), or if
it is the symbol `iterate', recompute the table until it no longer changes.
If NOALIGN is not nil, do not re-align the table after the computations
are done.  This is typically used internally to save time, if it is
known that the table will be realigned a little later anyway.

\(fn &optional ALL NOALIGN)" t nil)

(autoload 'org-table-iterate "org-table" "\
Recalculate the table until it does not change anymore.
The maximum number of iterations is 10, but you can choose a different value
with the prefix ARG.

\(fn &optional ARG)" t nil)

(autoload 'org-table-recalculate-buffer-tables "org-table" "\
Recalculate all tables in the current buffer.

\(fn)" t nil)

(autoload 'org-table-iterate-buffer-tables "org-table" "\
Iterate all tables in the buffer, to converge inter-table dependencies.

\(fn)" t nil)

(autoload 'org-table-edit-formulas "org-table" "\
Edit the formulas of the current table in a separate buffer.

\(fn)" t nil)

(autoload 'org-table-toggle-coordinate-overlays "org-table" "\
Toggle the display of Row/Column numbers in tables.

\(fn)" t nil)

(autoload 'org-table-toggle-formula-debugger "org-table" "\
Toggle the formula debugger in tables.

\(fn)" t nil)

(autoload 'orgtbl-mode "org-table" "\
The `org-mode' table editor as a minor mode for use in other modes.

\(fn &optional ARG)" t nil)

(autoload 'org-table-to-lisp "org-table" "\
Convert the table at point to a Lisp structure.
The structure will be a list.  Each item is either the symbol `hline'
for a horizontal separator line, or a list of field values as strings.
The table is taken from the parameter TXT, or from the buffer at point.

\(fn &optional TXT)" nil nil)

(autoload 'orgtbl-to-generic "org-table" "\
Convert the orgtbl-mode TABLE to some other format.
This generic routine can be used for many standard cases.
TABLE is a list, each entry either the symbol `hline' for a horizontal
separator line, or a list of fields for that line.
PARAMS is a property list of parameters that can influence the conversion.
A third optional argument BACKEND can be used to convert the content of
the cells using a specific export back-end.

For the generic converter, some parameters are obligatory: you need to
specify either :lfmt, or all of (:lstart :lend :sep).

Valid parameters are:

:splice     When set to t, return only table body lines, don't wrap
            them into :tstart and :tend.  Default is nil.  When :splice
            is non-nil, this also means that the exporter should not look
            for and interpret header and footer sections.

:hline      String to be inserted on horizontal separation lines.
            May be nil to ignore hlines.

:sep        Separator between two fields
:remove-nil-lines Do not include lines that evaluate to nil.

Each in the following group may be either a string or a function
of no arguments returning a string:

:tstart     String to start the table.  Ignored when :splice is t.
:tend       String to end the table.  Ignored when :splice is t.
:lstart     String to start a new table line.
:llstart    String to start the last table line, defaults to :lstart.
:lend       String to end a table line
:llend      String to end the last table line, defaults to :lend.

Each in the following group may be a string, a function of one
argument (the field or line) returning a string, or a plist
mapping columns to either of the above:

:lfmt       Format for entire line, with enough %s to capture all fields.
            If this is present, :lstart, :lend, and :sep are ignored.
:llfmt      Format for the entire last line, defaults to :lfmt.
:fmt        A format to be used to wrap the field, should contain
            %s for the original field value.  For example, to wrap
            everything in dollars, you could use :fmt \"$%s$\".
            This may also be a property list with column numbers and
            formats.  For example :fmt (2 \"$%s$\" 4 \"%s%%\")
:hlstart :hllstart :hlend :hllend :hlsep :hlfmt :hllfmt :hfmt
            Same as above, specific for the header lines in the table.
            All lines before the first hline are treated as header.
            If any of these is not present, the data line value is used.

This may be either a string or a function of two arguments:

:efmt       Use this format to print numbers with exponentials.
            The format should have %s twice for inserting mantissa
            and exponent, for example \"%s\\\\times10^{%s}\".  This
            may also be a property list with column numbers and
            formats.  :fmt will still be applied after :efmt.

In addition to this, the parameters :skip and :skipcols are always handled
directly by `orgtbl-send-table'.  See manual.

\(fn TABLE PARAMS &optional BACKEND)" nil nil)

(autoload 'orgtbl-to-tsv "org-table" "\
Convert the orgtbl-mode table to TAB separated material.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-csv "org-table" "\
Convert the orgtbl-mode table to CSV material.
This does take care of the proper quoting of fields with comma or quotes.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-latex "org-table" "\
Convert the orgtbl-mode TABLE to LaTeX.
TABLE is a list, each entry either the symbol `hline' for a horizontal
separator line, or a list of fields for that line.
PARAMS is a property list of parameters that can influence the conversion.
Supports all parameters from `orgtbl-to-generic'.  Most important for
LaTeX are:

:splice    When set to t, return only table body lines, don't wrap
           them into a tabular environment.  Default is nil.

:fmt       A format to be used to wrap the field, should contain %s for the
           original field value.  For example, to wrap everything in dollars,
           use :fmt \"$%s$\".  This may also be a property list with column
           numbers and formats.  For example :fmt (2 \"$%s$\" 4 \"%s%%\")
           The format may also be a function that formats its one argument.

:efmt      Format for transforming numbers with exponentials.  The format
           should have %s twice for inserting mantissa and exponent, for
           example \"%s\\\\times10^{%s}\".  LaTeX default is \"%s\\\\,(%s)\".
           This may also be a property list with column numbers and formats.
           The format may also be a function that formats its two arguments.

:llend     If you find too much space below the last line of a table,
           pass a value of \"\" for :llend to suppress the final \\\\.

The general parameters :skip and :skipcols have already been applied when
this function is called.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-html "org-table" "\
Convert the orgtbl-mode TABLE to HTML.
TABLE is a list, each entry either the symbol `hline' for a horizontal
separator line, or a list of fields for that line.
PARAMS is a property list of parameters that can influence the conversion.
Currently this function recognizes the following parameters:

:splice    When set to t, return only table body lines, don't wrap
           them into a <table> environment.  Default is nil.

The general parameters :skip and :skipcols have already been applied when
this function is called.  The function does *not* use `orgtbl-to-generic',
so you cannot specify parameters for it.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-texinfo "org-table" "\
Convert the orgtbl-mode TABLE to TeXInfo.
TABLE is a list, each entry either the symbol `hline' for a horizontal
separator line, or a list of fields for that line.
PARAMS is a property list of parameters that can influence the conversion.
Supports all parameters from `orgtbl-to-generic'.  Most important for
TeXInfo are:

:splice nil/t      When set to t, return only table body lines, don't wrap
                   them into a multitable environment.  Default is nil.

:fmt fmt           A format to be used to wrap the field, should contain
                   %s for the original field value.  For example, to wrap
                   everything in @kbd{}, you could use :fmt \"@kbd{%s}\".
                   This may also be a property list with column numbers and
                   formats.  For example :fmt (2 \"@kbd{%s}\" 4 \"@code{%s}\").
                   Each format also may be a function that formats its one
                   argument.

:cf \"f1 f2..\"    The column fractions for the table.  By default these
                   are computed automatically from the width of the columns
                   under org-mode.

The general parameters :skip and :skipcols have already been applied when
this function is called.

\(fn TABLE PARAMS)" nil nil)

(autoload 'orgtbl-to-orgtbl "org-table" "\
Convert the orgtbl-mode TABLE into another orgtbl-mode table.
Useful when slicing one table into many.  The :hline, :sep,
:lstart, and :lend provide orgtbl framing.  The default nil :tstart
and :tend suppress strings without splicing; they can be set to
provide ORGTBL directives for the generated table.

\(fn TABLE PARAMS)" nil nil)

;;;***

;;;### (autoloads (org-timer-set-timer org-timer-item org-timer-change-times-in-region
;;;;;;  org-timer org-timer-start) "org-timer" "org-timer.el" "24d58bf234f548224d83186703c58ff0")
;;; Generated autoloads from org-timer.el

(autoload 'org-timer-start "org-timer" "\
Set the starting time for the relative timer to now.
When called with prefix argument OFFSET, prompt the user for an offset time,
with the default taken from a timer stamp at point, if any.
If OFFSET is a string or an integer, it is directly taken to be the offset
without user interaction.
When called with a double prefix arg, all timer strings in the active
region will be shifted by a specific amount.  You will be prompted for
the amount, with the default to make the first timer string in
the region 0:00:00.

\(fn &optional OFFSET)" t nil)

(autoload 'org-timer "org-timer" "\
Insert a H:MM:SS string from the timer into the buffer.
The first time this command is used, the timer is started.  When used with
a \\[universal-argument] prefix, force restarting the timer.
When used with a double prefix argument \\[universal-argument], change all the timer string
in the region by a fixed amount.  This can be used to recalibrate a timer
that was not started at the correct moment.

If NO-INSERT-P is non-nil, return the string instead of inserting
it in the buffer.

\(fn &optional RESTART NO-INSERT-P)" t nil)

(autoload 'org-timer-change-times-in-region "org-timer" "\
Change all h:mm:ss time in region by a DELTA.

\(fn BEG END DELTA)" t nil)

(autoload 'org-timer-item "org-timer" "\
Insert a description-type item with the current timer value.

\(fn &optional ARG)" t nil)

(autoload 'org-timer-set-timer "org-timer" "\
Prompt for a duration and set a timer.

If `org-timer-default-timer' is not zero, suggest this value as
the default duration for the timer.  If a timer is already set,
prompt the user if she wants to replace it.

Called with a numeric prefix argument, use this numeric value as
the duration of the timer.

Called with a `C-u' prefix arguments, use `org-timer-default-timer'
without prompting the user for a duration.

With two `C-u' prefix arguments, use `org-timer-default-timer'
without prompting the user for a duration and automatically
replace any running timer.

\(fn &optional OPT)" t nil)

;;;***

;;;### (autoloads (org-export-dispatch org-export-insert-default-template
;;;;;;  org-export-replace-region-by org-export-string-as org-export-to-file
;;;;;;  org-export-to-buffer org-export-as) "ox" "ox.el" "9517c6e48a30906ab5b30c31c43d35c7")
;;; Generated autoloads from ox.el

(autoload 'org-export-as "ox" "\
Transcode current Org buffer into BACKEND code.

BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.

If narrowing is active in the current buffer, only transcode its
narrowed part.

If a region is active, transcode that region.

When optional argument SUBTREEP is non-nil, transcode the
sub-tree at point, extracting information from the headline
properties first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only return body
code, without surrounding template.

Optional argument EXT-PLIST, when provided, is a property list
with external parameters overriding Org default settings, but
still inferior to file-local settings.

Return code as a string.

\(fn BACKEND &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" nil nil)

(autoload 'org-export-to-buffer "ox" "\
Call `org-export-as' with output to a specified buffer.

BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.

BUFFER is the output buffer.  If it already exists, it will be
erased first, otherwise, it will be created.

Optional arguments SUBTREEP, VISIBLE-ONLY, BODY-ONLY and
EXT-PLIST are similar to those used in `org-export-as', which
see.

Depending on `org-export-copy-to-kill-ring', add buffer contents
to kill ring.  Return buffer.

\(fn BACKEND BUFFER &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" nil nil)

(autoload 'org-export-to-file "ox" "\
Call `org-export-as' with output to a specified file.

BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.  FILE is the name of the output file, as
a string.

Optional arguments SUBTREEP, VISIBLE-ONLY, BODY-ONLY and
EXT-PLIST are similar to those used in `org-export-as', which
see.

Depending on `org-export-copy-to-kill-ring', add file contents
to kill ring.  Return output file's name.

\(fn BACKEND FILE &optional SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" nil nil)

(autoload 'org-export-string-as "ox" "\
Transcode STRING into BACKEND code.

BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.

When optional argument BODY-ONLY is non-nil, only return body
code, without preamble nor postamble.

Optional argument EXT-PLIST, when provided, is a property list
with external parameters overriding Org default settings, but
still inferior to file-local settings.

Return code as a string.

\(fn STRING BACKEND &optional BODY-ONLY EXT-PLIST)" nil nil)

(autoload 'org-export-replace-region-by "ox" "\
Replace the active region by its export to BACKEND.
BACKEND is either an export back-end, as returned by, e.g.,
`org-export-create-backend', or a symbol referring to
a registered back-end.

\(fn BACKEND)" nil nil)

(autoload 'org-export-insert-default-template "ox" "\
Insert all export keywords with default values at beginning of line.

BACKEND is a symbol referring to the name of a registered export
back-end, for which specific export options should be added to
the template, or `default' for default template.  When it is nil,
the user will be prompted for a category.

If SUBTREEP is non-nil, export configuration will be set up
locally for the subtree through node properties.

\(fn &optional BACKEND SUBTREEP)" t nil)

(autoload 'org-export-dispatch "ox" "\
Export dispatcher for Org mode.

It provides an access to common export related tasks in a buffer.
Its interface comes in two flavours: standard and expert.

While both share the same set of bindings, only the former
displays the valid keys associations in a dedicated buffer.
Scrolling (resp. line-wise motion) in this buffer is done with
SPC and DEL (resp. C-n and C-p) keys.

Set variable `org-export-dispatch-use-expert-ui' to switch to one
flavour or the other.

When ARG is \\[universal-argument], repeat the last export action, with the same set
of options used back then, on the current buffer.

When ARG is \\[universal-argument] \\[universal-argument], display the asynchronous export stack.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (org-ascii-publish-to-utf8 org-ascii-publish-to-latin1
;;;;;;  org-ascii-publish-to-ascii org-ascii-export-to-ascii org-ascii-export-as-ascii)
;;;;;;  "ox-ascii" "ox-ascii.el" "5f7a6cd3b95f22ce8e88639a2b243fce")
;;; Generated autoloads from ox-ascii.el

(autoload 'org-ascii-export-as-ascii "ox-ascii" "\
Export current buffer to a text buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, strip title and
table of contents from output.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org ASCII Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-ascii-export-to-ascii "ox-ascii" "\
Export current buffer to a text file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, strip title and
table of contents from output.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-ascii-publish-to-ascii "ox-ascii" "\
Publish an Org file to ASCII.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-ascii-publish-to-latin1 "ox-ascii" "\
Publish an Org file to Latin-1.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-ascii-publish-to-utf8 "ox-ascii" "\
Publish an org file to UTF-8.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads (org-beamer-publish-to-pdf org-beamer-publish-to-latex
;;;;;;  org-beamer-insert-options-template org-beamer-select-environment
;;;;;;  org-beamer-export-to-pdf org-beamer-export-to-latex org-beamer-export-as-latex
;;;;;;  org-beamer-mode) "ox-beamer" "ox-beamer.el" "29b9f4d7f5b420b3af2f5cdb68b7328b")
;;; Generated autoloads from ox-beamer.el

(autoload 'org-beamer-mode "ox-beamer" "\
Support for editing Beamer oriented Org mode files.

\(fn &optional ARG)" t nil)

(autoload 'org-beamer-export-as-latex "ox-beamer" "\
Export current buffer as a Beamer buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org BEAMER Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-beamer-export-to-latex "ox-beamer" "\
Export current buffer as a Beamer presentation (tex).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-beamer-export-to-pdf "ox-beamer" "\
Export current buffer as a Beamer presentation (PDF).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return PDF file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-beamer-select-environment "ox-beamer" "\
Select the environment to be used by beamer for this entry.
While this uses (for convenience) a tag selection interface, the
result of this command will be that the BEAMER_env *property* of
the entry is set.

In addition to this, the command will also set a tag as a visual
aid, but the tag does not have any semantic meaning.

\(fn)" t nil)

(autoload 'org-beamer-insert-options-template "ox-beamer" "\
Insert a settings template, to make sure users do this right.

\(fn &optional KIND)" t nil)

(autoload 'org-beamer-publish-to-latex "ox-beamer" "\
Publish an Org file to a Beamer presentation (LaTeX).

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-beamer-publish-to-pdf "ox-beamer" "\
Publish an Org file to a Beamer presentation (PDF, via LaTeX).

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads (org-html-publish-to-html org-html-export-to-html
;;;;;;  org-html-convert-region-to-html org-html-export-as-html org-html-htmlize-generate-css)
;;;;;;  "ox-html" "ox-html.el" "c34d0f4be0cd8ba812161b8d5995501c")
;;; Generated autoloads from ox-html.el

(put 'org-html-head-include-default-style 'safe-local-variable 'booleanp)

(put 'org-html-head 'safe-local-variable 'stringp)

(put 'org-html-head-extra 'safe-local-variable 'stringp)

(autoload 'org-html-htmlize-generate-css "ox-html" "\
Create the CSS for all font definitions in the current Emacs session.
Use this to create face definitions in your CSS style file that can then
be used by code snippets transformed by htmlize.
This command just produces a buffer that contains class definitions for all
faces used in the current Emacs session.  You can copy and paste the ones you
need into your CSS file.

If you then set `org-html-htmlize-output-type' to `css', calls
to the function `org-html-htmlize-region-for-paste' will
produce code that uses these same face definitions.

\(fn)" t nil)

(autoload 'org-html-export-as-html "ox-html" "\
Export current buffer to an HTML buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org HTML Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-html-convert-region-to-html "ox-html" "\
Assume the current region has org-mode syntax, and convert it to HTML.
This can be used in any buffer.  For example, you can write an
itemized list in org-mode syntax in an HTML buffer and use this
command to convert it.

\(fn)" t nil)

(autoload 'org-html-export-to-html "ox-html" "\
Export current buffer to a HTML file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-html-publish-to-html "ox-html" "\
Publish an org file to HTML.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads (org-icalendar-combine-agenda-files org-icalendar-export-agenda-files
;;;;;;  org-icalendar-export-to-ics) "ox-icalendar" "ox-icalendar.el"
;;;;;;  "c6f84f8db517191e8801d63586766cf9")
;;; Generated autoloads from ox-icalendar.el

(autoload 'org-icalendar-export-to-ics "ox-icalendar" "\
Export current buffer to an iCalendar file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"BEGIN:VCALENDAR\" and \"END:VCALENDAR\".

Return ICS file name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY)" t nil)

(autoload 'org-icalendar-export-agenda-files "ox-icalendar" "\
Export all agenda files to iCalendar files.
When optional argument ASYNC is non-nil, export happens in an
external process.

\(fn &optional ASYNC)" t nil)

(autoload 'org-icalendar-combine-agenda-files "ox-icalendar" "\
Combine all agenda files into a single iCalendar file.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

The file is stored under the name chosen in
`org-icalendar-combined-agenda-file'.

\(fn &optional ASYNC)" t nil)

;;;***

;;;### (autoloads (org-latex-publish-to-pdf org-latex-publish-to-latex
;;;;;;  org-latex-export-to-pdf org-latex-export-to-latex org-latex-convert-region-to-latex
;;;;;;  org-latex-export-as-latex) "ox-latex" "ox-latex.el" "14d14ff8701ab86818454e306c14abb3")
;;; Generated autoloads from ox-latex.el

(autoload 'org-latex-export-as-latex "ox-latex" "\
Export current buffer as a LaTeX buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org LATEX Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-latex-convert-region-to-latex "ox-latex" "\
Assume the current region has org-mode syntax, and convert it to LaTeX.
This can be used in any buffer.  For example, you can write an
itemized list in org-mode syntax in an LaTeX buffer and use this
command to convert it.

\(fn)" t nil)

(autoload 'org-latex-export-to-latex "ox-latex" "\
Export current buffer to a LaTeX file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-latex-export-to-pdf "ox-latex" "\
Export current buffer to LaTeX then process through to PDF.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{document}\" and \"\\end{document}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return PDF file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-latex-publish-to-latex "ox-latex" "\
Publish an Org file to LaTeX.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-latex-publish-to-pdf "ox-latex" "\
Publish an Org file to PDF (via LaTeX).

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads (org-md-export-to-markdown org-md-convert-region-to-md
;;;;;;  org-md-export-as-markdown) "ox-md" "ox-md.el" "262746b5e61bae2dd8fa7b41a62f0b43")
;;; Generated autoloads from ox-md.el

(autoload 'org-md-export-as-markdown "ox-md" "\
Export current buffer to a Markdown buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org MD Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-md-convert-region-to-md "ox-md" "\
Assume the current region has org-mode syntax, and convert it to Markdown.
This can be used in any buffer.  For example, you can write an
itemized list in org-mode syntax in a Markdown buffer and use
this command to convert it.

\(fn)" t nil)

(autoload 'org-md-export-to-markdown "ox-md" "\
Export current buffer to a Markdown file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

;;;***

;;;### (autoloads (org-odt-convert org-odt-export-to-odt org-odt-export-as-odf-and-open
;;;;;;  org-odt-export-as-odf) "ox-odt" "ox-odt.el" "2b03dd300a16c6110228f4fe4d3103c2")
;;; Generated autoloads from ox-odt.el

(put 'org-odt-preferred-output-format 'safe-local-variable 'stringp)

(autoload 'org-odt-export-as-odf "ox-odt" "\
Export LATEX-FRAG as OpenDocument formula file ODF-FILE.
Use `org-create-math-formula' to convert LATEX-FRAG first to
MathML.  When invoked as an interactive command, use
`org-latex-regexps' to infer LATEX-FRAG from currently active
region.  If no LaTeX fragments are found, prompt for it.  Push
MathML source to kill ring depending on the value of
`org-export-copy-to-kill-ring'.

\(fn LATEX-FRAG &optional ODF-FILE)" t nil)

(autoload 'org-odt-export-as-odf-and-open "ox-odt" "\
Export LaTeX fragment as OpenDocument formula and immediately open it.
Use `org-odt-export-as-odf' to read LaTeX fragment and OpenDocument
formula file.

\(fn)" t nil)

(autoload 'org-odt-export-to-odt "ox-odt" "\
Export current buffer to a ODT file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY EXT-PLIST)" t nil)

(autoload 'org-odt-convert "ox-odt" "\
Convert IN-FILE to format OUT-FMT using a command line converter.
IN-FILE is the file to be converted.  If unspecified, it defaults
to variable `buffer-file-name'.  OUT-FMT is the desired output
format.  Use `org-odt-convert-process' as the converter.
If PREFIX-ARG is non-nil then the newly converted file is opened
using `org-open-file'.

\(fn &optional IN-FILE OUT-FMT PREFIX-ARG)" t nil)

;;;***

;;;### (autoloads (org-org-publish-to-org org-org-export-to-org org-org-export-as-org)
;;;;;;  "ox-org" "ox-org.el" "f98bca16d7ddf4ac4fae1846af828ddf")
;;; Generated autoloads from ox-org.el

(autoload 'org-org-export-as-org "ox-org" "\
Export current buffer to an Org buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org ORG Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY EXT-PLIST)" t nil)

(autoload 'org-org-export-to-org "ox-org" "\
Export current buffer to an org file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY EXT-PLIST)" t nil)

(autoload 'org-org-publish-to-org "ox-org" "\
Publish an org file to org.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads (org-publish-current-project org-publish-current-file
;;;;;;  org-publish-all org-publish) "ox-publish" "ox-publish.el"
;;;;;;  "d325ba3d14653089f60939fd3886e5ff")
;;; Generated autoloads from ox-publish.el

(defalias 'org-publish-project 'org-publish)

(autoload 'org-publish "ox-publish" "\
Publish PROJECT.

PROJECT is either a project name, as a string, or a project
alist (see `org-publish-project-alist' variable).

When optional argument FORCE is non-nil, force publishing all
files in PROJECT.  With a non-nil optional argument ASYNC,
publishing will be done asynchronously, in another process.

\(fn PROJECT &optional FORCE ASYNC)" t nil)

(autoload 'org-publish-all "ox-publish" "\
Publish all projects.
With prefix argument FORCE, remove all files in the timestamp
directory and force publishing all projects.  With a non-nil
optional argument ASYNC, publishing will be done asynchronously,
in another process.

\(fn &optional FORCE ASYNC)" t nil)

(autoload 'org-publish-current-file "ox-publish" "\
Publish the current file.
With prefix argument FORCE, force publish the file.  When
optional argument ASYNC is non-nil, publishing will be done
asynchronously, in another process.

\(fn &optional FORCE ASYNC)" t nil)

(autoload 'org-publish-current-project "ox-publish" "\
Publish the project associated with the current file.
With a prefix argument, force publishing of all files in
the project.

\(fn &optional FORCE ASYNC)" t nil)

;;;***

;;;### (autoloads (org-texinfo-convert-region-to-texinfo org-texinfo-publish-to-texinfo)
;;;;;;  "ox-texinfo" "ox-texinfo.el" "d298aa76ff1530edfeb2c898e24f4ccb")
;;; Generated autoloads from ox-texinfo.el

(autoload 'org-texinfo-publish-to-texinfo "ox-texinfo" "\
Publish an org file to Texinfo.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-texinfo-convert-region-to-texinfo "ox-texinfo" "\
Assume the current region has org-mode syntax, and convert it to Texinfo.
This can be used in any buffer.  For example, you can write an
itemized list in org-mode syntax in an Texinfo buffer and use
this command to convert it.

\(fn)" t nil)

;;;***

(provide 'org-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-loaddefs.el ends here
