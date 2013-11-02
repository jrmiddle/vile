README for vile, version 9.8
============================

> jrmiddle note: I'm neither the author nor the maintainer of Vile.  This repo (github.com/jrmiddle/vile) 
> is a fork, with minimal contributions from me to make Vile work on my boxes.  Please see below
> for Tom Dickey's canonical links, and credits for all authors and maintainers.  Many thanks to 
> Tom, Paul Fox, Kevin Buettner, et al for their work.

vile is a text editor which is extremely compatible with vi in terms
of "finger feel".  in addition, it has extended capabilities in many areas,
notably multi-file editing and viewing, key rebinding, real X window
system support, an optional embedded perl interpreter, and robust
support for non-Unix hosts.

the authors of vile are Paul Fox, Tom Dickey, and Kevin Buettner.

many patches have been contributed by a lot of users.  we thank them.

more recent additions to this README appear near the bottom.  that is, most
of the newest stuff is at the end, not up here where you are.

visit
	ftp://invisible-island.net/vile
	ftp://ftp.phred.org/pub/vile
to be sure it's still the latest.

impatient?  just type "./configure; make", and get a cup of coffee, decaf
if necessary.

want to know more about configure options?  type "./configure --help"
and then read doc/config.doc for further details.

want X11 support?  you'd better look at doc/config.doc, although
"./configure --with-screen=x11"; make" may well do what you want.

want syntax coloring?  add "--with-builtin-filters" to your configure
options and then read the topics "Color basics" and "Syntax coloring" in
the file vile.hlp.

want PC support?  look for precompiled binaries at the various ftp sites.

want to build vile on a PC host?  refer to the file README.PC .

want VMS support?  some precompiled binaries are available at
ftp://ftp.phred.org/pub/vile.  otherwise, you'll need to build vile
yourself.  In either case, refer to the file README.VMS .

if you like vile, and wish to be informed of new releases, let me know -- i
maintain a mailing list for that purpose (scroll down a bit for details).
don't worry -- the volume won't fill your inbox.

paul fox, pgf@foxharp.boston.ma.us (original author)
kevin buettner, kevin@buettner.to
tom dickey, dickey@invisible-island.net (current maintainer)

------------------------------------------------------
Up-to-date copies of vile, including executables for DOS, Win32 and
OS/2 are found at
	ftp://invisible-island.net/vile/

which is mirrored at
	ftp://ftp.phred.org/pub/vile/

Development patches are found at
	ftp://invisible-island.net/vile/patches/
	ftp://ftp.phred.org/pub/vile/patches/

In addition, we have distributed copies at other sites, including
metalabs.unc.edu, hobbes.nmsu.edu (OS/2) and the VMS Freeware
CDROM's.

------------------------------------------------------

There is a project mailing list.  You can subscribe to it here:
    https://savannah.nongnu.org/projects/vile/

To submit bug reports, either subscribe to the list (since
non-subscribers aren't allowed to post) or use the bug system at
that same URL.

------------------------------------------------------

extracts from the original README, from February, 1992:

VILE -- VI Like Emacs: a vi workalike put together from Micro-Emacs by Paul Fox
-------------------------------------------------------------------------------

	This editor grew out of a frustration that although lots of
	eager programmers have tackled rewrites of Emacs, with new and
	better features (not to mention free source), I've not seen
	anything similar done with the Second True Editor.  (The
	First, of course, being /bin/ed)

	...

	vile retains the multiple buffer/multiple window features of
	MicroEMACS, but the "finger-feel", if you will, is very much
	that of vi.  It is definitely not a clone, in that some
	substantial stuff is missing, and the screen doesn't look
	quite the same.  But what matters most is that one's "muscle
	memory" does the right thing to the text in front of you, and
	that is what vile tries to do for vi users.  THIS IS NOT A
	"CLONE"!  But it feels good.  (Put another way, the things
	that you tend to type over and over probably work -- things
	done less frequently, like configuring a .exrc file, are quite
	different.)

	...

	The collective developers of Micro-Emacs should be
	complimented that the changes were as easy as they were.
	...

	Paul G. Fox	June, 1991, and February, 1992

p.s. By the way, I'm _not_ the same Paul Fox who wrote Crisp, the Brief
	work-alike.


-----------------------

September, 1992

I don't have much to add to the original README -- vile has gotten a lot
better since I first released it, thanks to a lot of users and a lot of
bug reports.  It compiles and runs without modification on most major UNIXes,
and under DOS.  It offers vi finger feel, and most (not all) of its features.
I hope it fills someone's need out there.  -pgf 9/92

(Special thanks to Dave Lemke and Pete Rucszinski, for X and DOS support,
and (in no particular order) to Eric Krohn, Willem Kasdorp, J.C.Webber,
Warren Vik, Julia Harper, Chris Sherman, Thomas Woo, Yanek Martinson, Miura
Masahiro, Tom Dickey for lots of bug reports and suggestions and patience.)

------------------------------

April, 1993

Well, here's an update on vile.  The first release was a long time
ago (a couple of years?).  Tom Dickey has been contributing a _whole_ lot
of good changes.  vile now runs on VMS, and is much more stable on DOS
thanks to Tom.  For me, vile is becoming an "old" program -- I first worked
on it in 1989 sometime.  So it's been fun to have someone contributing
fixes so energetically.  Thanks Tom.

One thing that's changed since I first started vile is that "lots of eager
programmers" have now tackled rewrites of vi.  There are several good work-
alikes out there: elvis (the "king" :-), xvi, vim, stevie, and recent
versions of vip-mode in GNU emacs.  [add "nvi" to that list.  and whatever
happened to xvi?  -pgf 12/94]  From what little I've used any of
these, they all seem like real good programs.  vile feels different from
most of them, mainly due to its roots in MicroEmacs.  You may or may not
like it.  If you don't, try one of the others.  There's certainly no reason
to not have a vi-like editor on just about any machine you choose.  (yeah,
I know -- I'm assuming you _want_ a vi-like editor...  :-)  Enjoy.

Oh yes -- building it.  On UNIX, type "make", and choose one of the predefined
targets.  Like "make linux". [ not anymore -- use "configure; make"  -pgf 12/94]

DOS makefiles are named after the compiler they support:  makefile.tbc for
Turbo-C, makefile.wat.  There is support in "makefile" for Microsoft-C, but
it's next to useless -- if anyone puts together a good "nmake" makefile,
could you pass it along?  [that support isn't there anymore.  -pgf 12/94]

The Watcom C/386 v9.0 compiler should also work -- the makefile to use is
makefile.wat.

The latest version of vile is usually available for ftp at "ftp.cayman.com",
in the pub/vile directory.  [not anymore -- it's at "id.wing.net" in the
"pub/pgf/vile" directory.  -pgf 12/94] Sometimes there's a compiled DOS
binary there too.  I don't maintain a mailing list, or anything like that
to inform folks of new releases -- you just sort of have to check once in a
while, or send me mail...  [ I've set up a mailing list -- contact me to be
added -pgf 7/93]

paul

------------------------------

July, 1993

More new features:  infinite undo, modification time checking, and, at
long last, primitive support for the :map command.  [:map is now fully
functional -pgf, 12/94] I've also received patches that let vile compile
for DOS with the DJ GCC compiler.  Have I mentioned filename completion?
Tom Dickey provided that and variable/modename/command completion too.

If you would like to be informed, via email, of new vile releases (bearing
in mind that the newest release may be _more_ likely to be buggy, rather
than _less_), please send me mail, and I will add you to my list.  The email
will probably contain a capsule summary of the most recent changes to the
code.

Thanks to Tuan Dang for the Watcom and DJ GCC work.  I don't know much
about djgpp, the DOS port of djgcc, but take a look at makefile.djg.


pgf


-------------------------------

March, 1994

The X support in xvile has been given a huge boost with contributions from
Kevin Buettner -- scrollbars, Motif widget support make it feel like a real
application...  We now have rectangular regions.  DOS support is getting
better all the time.  The major version number got bumped to 4 somewhere
along the line, because Tom and I were getting tired of 3.  There are quite
a few new "modes", some to support vi functionality, some altogether new.
We should have keyboard selections and highlighted regions soon...

pgf, pgf@foxharp.boston.ma.us


-------------------------------
December, 1994

hmmmm -- lets see.  new stuff.  see the CHANGES and help files for details.

	- vile is now completely autoconf'ed -- you should be able to type
	either "./configure; make" or "./configure --with-screen=x11" to build
	it on any (unix-like) platform.

	- :map and :map! are now much more complete, but still by no means
	done.  expect to have to edit your favorite macros to make
	them work.

	- :abbr now works.

	- along with proper :map support comes proper function key support.
	function keys defined for your terminal in the termcap/info database
	are now premapped and can be bound to as #-1 etc.  so those of
	you with ESC [ 10 ~ style function keys should be happy now.

	- mouse clicks which move the cursor now count as proper motion
	commands in both xvile and vile-in-an-xterm.  this means, for
	instance, that '' or `` will get you back to where you were before
	you clicked the mouse, and you can apply operators to mouse
	movements.  for example -- click the mouse somewhere, hit 'd' to
	start a delete operation, and click the mouse somewhere else.  the
	text between the two mouse-click locations will be deleted.

	- on-line help (just a single line) for every function, available
	with describe-{bindings,function,key} commands.

	- new modes to better control beeping and the "working..." message.

	- autowrite mode now supported, on a global or buffer-by-buffer basis.

	- popup windows now adjust their size to their contents -- less screen
	space is wasted for small window, and more is used for big windows.

	- file and command completion is now more emacs/bash/tcsh-like, in
	that possible choices are shown when you hit a second TAB key.  this
	can be tuned via a new mode, "popup-choices"

	- "quoted" motions, which highlight the text they will act on.  type
	a 'q', and start moving around, then type another 'q'.

	- various fixes to the macro language, for core dumps and usability.

	- file.bak and file~ backup files now supported.

	- infinite (?) screen sizes should now be supported under X.

	- it's now possible to break lines by putting ^M in the replacement
	pattern.

	- selections, the modelines, and the cursor, under xvile, can all
	have different colors.

	- color support for termcap, at least on the linux console.

	- put'ing from registers (i.e. 'p' and 'P' commands) should be much
	faster.

	- multiple (error) messages arising from running a macro or a startup
	file will now accumulate in a new popup window.

	- a simple, probably incomplete file-locking protocol is available,
	but is not compiled in by default.  the organization which
	contributed the code (Baan Development) uses it to aid their
	multi-user development.  turn on OPT_LCKFILES in estruct.h and
	"set usefilelock" in your .vilerc to play with it.

	- Windows NT support -- console mode only.  anyone want to port this
	to the Windows95 console?  it's probably not hard, though i haven't
	looked into it very hard.

	- lots of bug fixes

-------------------------------
Febrary, 1995
	xvile now supports color attributes, which means we can do some
	primitive syntax coloring of C programs, using the external filter,
	"c-filt".  this is still pretty new stuff.  expect it to get better
	with age.


-------------------------------
November, 1995
	lots of new users in the last year, due to better advertising
	and inclusion in some of the big linux and freebsd archives.
	support for NT and OS/2 has gotten much better, and lots of
	little bugs have been fixed, and features added.  Win32 support
	is very good these days, thanks mostly to the efforts of Rick
	Sladkey.

-------------------------------
June, 1996
	gee, i don't remember _what_ we've done recently.  enjoy.

-------------------------------

September, 1996
	tom dickey has volunteered to take over releases, and maintaining
	"official" sources.  i'll still contribute, but more as part of the
	"audience".  tom has done a _huge_ amount of work over the years
	on vile -- i _really_ appreciate it...  -pgf

-------------------------------

May, 1998
    vile 8.0 is released.  Major new features include:  an embedded
    perl interpreter (available on Unix and Win32 hosts), an editable
    mini-buffer, majormodes, enhancement of user-defined procedures to
    the point that they may now be bound to user-defined keystrokes,
    tag completion, and addition of a win32 gui (called winvile).

-------------------------------

Oct, 1998
    vile 8.1 and 8.2 are released.  These are primarily bugfix releases.
    Refer to the CHANGES files for details.  Tom Dickey continues to
    improve winvile, which now supports scroll bars and two new
    command-line options that control the editor's geometry and font.

Apr, 1999
    vile 8.3 is released.  This release includes much enhanced syntax
    filter capabilities.  The filters are now much faster, mainly because
    vile uses a new command attribute-from-filter to apply their output
    directly as attributes to the buffer rather than modifying (and
    allowing undo).

    The organization of the keyword files for the syntax filters is now
    associated with majormodes.  Syntax filters are defined for most of the
    predefined majormodes which include:

        adamode                   jsmode                    perlmode
        awkmode                   keymode                   sccsmode
        batmode                   latexmode                 shmode
        cmode                     lexmode                   sqlmode
        cshmode                   m4mode                    tcmode
        cwebmode                  mailmode                  tclmode
        dclmode                   makemode                  timode
        diffmode                  mmsmode                   txtmode
        htmlmode                  nrmode                    vilemode
        imakemode                 pasmode                   yaccmode
        javamode

    Other changes of note (this is not an exhaustive list):

    + removed/rewrote code which would prevent us from making vile available
      under more liberal licensing.

    + winvile and xvile have icons.

    + new macro directives added, including:

      ~local  ~hidden  ~with  ~endwith  ~elsewith

    + many VMS bug fixes and enhancements.  8.3 is a keeper if you use VMS.

Nov, 1999
    vile 8.4/9.0 is released, distributed with GPL licensing.

    In addition to improvements to syntax highlighting, e.g., user-definable
    color schemes, vile's macro language has been extended

    	+ procedures can be parameterized.

	+ several new functions simplify handling of external filenames, and
	  parsing strings.

    Further improvements have been made to winvile: drag/drop, file open
    dialog, better integration with the Windows Explorer and DevStudio.

Jan, 2000
    vile 9.1 is released.  Highlights since 9.0:

    + continued improvement of syntax coloring (much work here)

    + add an Exporter-like mechanism to Perl5 interface. Instead
      of exposing a module's functions to the caller, it exposes them to
      vile as registered commands.  By renaming the extensions as `.pm',
      and making some minor changes to use Vile::Exporter, an extension
      becomes visible by simply adding:
          use extension;
      to vileinit.pl.  There is also provision for only including some
      commands provided by the extension, and for overriding the keybinding
      defined by the developer (documented in the attached module).
      Of course you can still say:
           require extension;
      and do the registering yourself if you so choose.

    + vile's perl interface includes a new Vile::Window module, which may
      be used to manipulate vile windows.  Examples of the use of this
      module may be found in winops.pm.

    + rename most .pl files to .pm (makefile.in).

    + add/improve several perl scripts, including

      - capture.pl - implements a perl version of capture-command.  This
        version incrementally updates the window however.

      - shell.pl - revised to use IO:Pty instead of Comm.pl (which
        seems to be no longer maintained).

      - Manual.pm - display embedded POD documentation.

    + implement watchfd support for the termcap/terminfo versions of vile.

    + added autocolor feature, which updates color syntax highlighting when
      the keyboard is inactive for a specified period.

    + Vileserv now also works for vile.

    + changed vmsbuild.com to accept a compiler specification on the VMS
      command line, which is much more convenient than editing the build
      script by hand.  compiler defaults to VAXC on Vax hosts and DECC on
      Alpha hosts.

    + Several Win32-specific improvements:

      - add the Win32 common dialog "save as" feature to both console
        vile and winvile.

      - modify directory.pm and dirlist.pm to make them work on win32, i.e.,
        by not executing portions that will not work (such as mime types).

      - implement autoscrolling feature for winvile, which makes the buffer
        scroll in the direction where the mouse leaves the window,
        automatically extending selection highlighting.

    + modify backspacelimit mode to allow backspacing through a newline
      when nobackspacelimit is specified.

    + add single-quoted strings, which eliminate the need for escaping
      backslash (useful in startup/command files)

    + Added binding / support for ^X-_ aka
      "historical-buffer-to-current-window".

    + modify logic in ins_any_time() to interpret control characters which
      are bound to GOAL or MOTION commands rather than inserting them
      without quoting.  This allows ^E and ^Y as commands within an insert.

Oct, 2000
    vile 9.2 is released.  Highlights since 9.1 (modulo bug fixes):

    + improve performance of syntax highlighting with configure option
      for compiling-in any of the syntax filters.  Use the configure
      --with-builtin-filters option.  Both internal (built-in) and
      external filters are supported.

    + add key binding functions for the different editing modes (insert,
      command, minibuffer and default), making it simpler to bind a
      space or tab to a given function without having it confused for a
      function while in insert mode.

    + Vileserv now uses the registry, so 'perl "use Vileserv"' in your
      .vilerc automagically adds the commands startserv, stopserv, and
      vileserv-help.

    + added gdb.pm, which runs gdb in a vile window and tracks changes
      in editor.  (Must be used with shell.pm.)

    Several Win32-specific improvements:

    + allow pasting of one line of text into mini-buffer.

    + winopen, winopen-nocd, winsave, and winsave-nocd accept an
      optional directory argument, which specifies the initial directory
      opened by the Open/Save Win32 common dialogs.

    Other Modes:

    + add insert-exec mode to control logic in ins_any_time() which
      interprets control characters which are bound to GOAL or MOTION
      commands rather than inserting them without quoting (see 9.0a and
      9.0b changes).  This restores the default behavior, since some
      users had control characters bound to a function which was then
      executed.

    + add unique-buffers mode, which does dev/inode checking to be sure
      files aren't edited more than once.

    Syntax Filters:

    + add syntax filters for sed, imake

    + implement abbreviations for syntax keywords, using '*' as the
      default delimiter.

    + filters now attribute multi-line regions when appropriate, e.g.,
      multi-line comments in C.

    Macros and Scripting Support:

    + add &dquery function which prompts for input with a given default
      value.

    + implement function &error, which returns true if its argument was
      an ERROR token.  Modify built-in functions to return ERROR if an
      argument was ERROR.

    + add variable $filename-expr, to specify the actual pattern used
      for %F in [Error Expressions].  On DOS and Win32, this is
      initialized to a more complex pattern, to accommodate drive
      letters.

    + make the ~local directive work for modes.

    + add ~trace directive, which sets or reports the value of the
      $debug variable.  Use this to trace into internal buffer [Trace].

    + add macros/shifts.rc, which implements left/right shifting of
      words in the current line to align with the cursor.

    Other Changes:

    + modify color support in xvile to allow the pre-8.3s color scheme
      as a special case:  setting bcolor to fcolor makes xvile use the
      bcolorN resources on syntax-highlighted text rather than the color
      selected by bcolor (which is actually taken from the fcolorN
      resource in this case).

    + added pushd, popd, dirs commands with accompanying [DirStack].

June, 2002
    vile 9.3 is released.  Highlights since 9.2 (aside from bug fixes):

    + add dirs-clear and dirs-add commands

    + added select-all and selection-clear commands.

    + change default for $XSHELLFLAGS from "-c" to "-e", which matches the
      documentation for $xshell-flags.

    + add write-all-buffers command; writes all buffers whether modified or not

    + add setenv (set-environment-variable) command.

    + added a swap-title mode and $title-format variable.

    + if the user specifies ":w!", and the file is not writable, vile will
      (try to) temporarily chmod the file for writable access.

    + added $findpath and $find-cmd state variables and, on win32 and unix
      hosts, modified capturecmd (aka ^X-!) to support find operations that
      span directory tree(s).

    + reimplement ":args" command to accept a filename expression.

    + add commands "ww!" and "wall!", to respectively write all changed
      buffers and write all buffers, using the "w!" behavior of ignoring
      readonly file permissions.

    + implement three functions for working with timestamps: &ftime, &stime,
      and &date, respectively for file modification time, system time, and
      formatted date/time.

    + extend insert-exec to allow ^A and ^X prefixes to be interpreted
      in insert mode

    + implemented support for reading/writing Macintosh files, i.e.,
      recordseparator=cr.  New commands set-rs-cr, set-rs-lf, set-rs-crlf
      extend the set-unix-mode and set-dos-mode commands to include Mac's.

    + add &stoken function, which searches for a token in a string, e.g.,
      "perl" in $cfgopts by
        &stoken  "perl"  ","  $cfgopts

    + add &translate function, e.g.,
        &trans   ","     " "  "a,b"
      to change commas to spaces

    + add commands leading-detab-til and leading-entab-til, binding those
      to ^X-' ' and ^X-^I.  Most of the logic was available internally.

    + implemented '< and '> marks, which denote the limits of the
      selection.

    Perl Interface:

    + add a new command to shell.pm called "xterm", which starts a shell in one
      of vile's buffers just as "start-shell" already does, but also starts an
      xterm through which one may (also) interact with the shell.  The shell
      output (and echoed input) is displayed in both the xterm and a vile
      buffer.

    + implement perl/Breadcrumbs.pm

    + add perl/Help.pm

    + add perl/CaptHook.pm, which provides useful wrappers for Vile's
      "hook" variables.

    Win32-Specific:

    + added basic win32 printing for winvile

    + modify ntconio.c so that default fcolor is 7

    + change paste in winvile to insert at DOT rather than after.  Also,
      when pasting in insert mode, set DOT to the end of the inserted
      text.

    + improve paste-by-right-mouse-click operation in winvile by NOT
      setting the insertion point at the position where the mouse happens
      to be when executing the right-click, but rather pasting at the
      current DOT (i.e.  right-mouse-click never sets DOT).

    + when popup-menu is inactive, if text is selected, right-click copies
      to w32clipboard; otherwise right-click pastes from w32clipboard.

    + added icursor (insertion cursor) mode.

    Syntax Filters:

    + add Verlog and ECLiPSe (Prolog dialect) filters

    + add syntax filter for BASIC, and majormodes basicmode and
      Visual Basic (vbmode).

    Other Changes:

    + add 'mouse' mode for OS/2 (CSet), to disable mouse when not wanted.

    + add $prompt variable, to allow changing the command-line prompt.

Aug, 2003
    vile 9.4 is released.  Highlights since 9.3 (aside from bug fixes):

    General changes:

    + regular expressions and searches allow null characters.

    + minibuffer editing commands are more complete, implementing all of the
      inline cursor search- and motion-commands.

    + implement new editing commands in the minibuffer:  r, ~, x, X.

    + use insert-mode bindings when mini-edit mode is active.  Use insert-key
      to toggle, rather than set mini-edit mode.

    + modify buffer- and filename-completion on Unix to escape backslashes
      which are stored in the [Completions] buffer.  Doing this allows one
      to complete a buffer or filename containing a backslash.

    + improve history-editing by quoting tokens which contain embedded blanks
      or other special characters, using that to retrieve tokens from the
      history buffer unambiguously.

    + save/restore window modes such as linewrap when rereading a file,
      or when executing a shell command.

    + use realpath() if it is available, and "$VILE_PWD" environment variable
      rather than "." as parameter to getcwd() if it is valid, to speed up
      operation on quasi-filesystems such as ClearCase.

    + add configure option --with-screen=XawPlus for XawPlus library.

    + add configure option --with-screen=ncursesw to allow building the
      curses driver using the wide-character version of ncurses.

    + add check in tcap.c for terminfo kmous capability like xterm, in case
      we are running in screen, which also supports xterm mouse protocol.

    + modify support for "^X-e" to make it use the whole line if the current
      buffer is a directory.

    Locale Improvements:

    + change default for --with-locale option to yes.  Note that this
      option is only tested if locale support is found, and it is becoming
      less common to encounter systems with broken locale support.

    + add "locale" to the "$cfgopts" variable if vile is compiled with
      locale support.

    + modify vile-manfilt to decode UTF-8 emitted by groff 1.18

    + in UTF-8 locale, adjust termcap driver to use UTF-8 to display codes
      in the 160-255 range, setting vile's locale to non-UTF-8 locale.
      (yes, this is a short-term fix).

    + add configure check for wctype functions, to work around defect in
      glibc's ctype functions: in UTF-8 locale, the latter return useless
      information on character classes.  This works on Solaris.

    + move upper/lower case-conversion into tables so that locale support can
      augment the built-in translation.

    New Commands:

    + "which-keywords" macro shows the location of files containing keywords
      for the given majormode.

    + "edit-buffer" simplifies "which-keywords" and similar macros.

    + "encode-attributes-til" and "write-encoded-til" convert the syntax
      highlighting in a region back to control/A sequences, or write the
      corresponding data to a file.  There is a corresponding alias
      "decode-attributes-til" for "attribute-cntl_a-sequences-til".

    + "substitute-all-til" implements the "^X-s" binding.

    New Modes:

    + add "overlap-matches" mode, to control whether highlighting for the
      visual-matches mode should skip to the next character, or past the
      current match when checking.

    + add "percent-crlf" mode, which controls the threshold at which the
      whole file will be considered DOS-format (CRLF record separators)
      if the given percentage already ends with CR/LF.

    + "yankmotion" mode controls whether the cursor should be moved as in vi
      after yanking text.

    + add "xterm-title" mode.

    + add logmode majormode, to distinguish some makefiles from logfiles.

    + add "texmode" majormode, as a variation of latexmode.

    New Variables and Functions:

    + add several short-named relational operators "&geq", "&gt", "&leq",
      "&lt", "&neq", "&sgeq", "&sgt", "&sleq", "&slt", "&sneq" to reduce
      the need for "&not".

    + add "$pathname-separator" variable.

    Syntax Filters:

    + add Ruby syntax filter.

    + add syntax filter for rpm ".spec" files.

    + add syntax filter for PostScript ".ps" files.

    + add syntax filter for enscript ".st" files.

    + add xml-filter based on html-filter.

    + add pot-filt.l, to highlight ".po" files.  Using sh-filt.l was
      not satisfactory since the quoting rules were not close enough.

    + add syntax filters and corresponding modes for assembler (GNU and M$),
      info and texinfo.

    + add -j option to c-filt.c, to implement some java-specific features
      such as "$" as part of an identifier, and \u escapes.

    + add un-filters (atr2ansi, atr2html, atr2text) which convert encoded
      control/A text to different forms.

    + modify spell.rc, spellflt.l and select.c to allow spell filter to
      work as a built-in filter.

    + modify built-in spell filter to work with encrypted files.

    + add a -t option to filters, to pass tabstop value.  Use this in
      makefilt.l to provide better highlighting of problems with leading
      whitespace.

    + modify manpage.rc to check if the current buffer is perl, and if so,
      to render contents using pod2man or pod2text.

    + set "vilemode" for [History] buffer.

    + reorder lex-based filters to allow building with flex 2.5.31, which
      introduces several incompatibilities with respect to flex 2.5.4
      and lex.

    + add configure check/warning for flex 2.5.31, which has broken support
      for the "-P" option used for built-in filters.

    Win32 changes:

    + implemented tilde-expansion on win32.  Actually it was present, but
      globbing did not work, and the environment variables did not match
      the Windows 2000 configuration.

    VMS changes:

    + filename matching is case-independent, allowing majormodes to be
      recognized.

July 2005,
    vile 9.5 is released.  Highlights since 9.4 (aside from bug fixes):

    General changes:

    + syntax filters can now be dynamically loaded.  This allows the
      main executable to be smaller, and is faster than external
      filters.  Loadable filters are configured using the
      "--with-loadable-filters" option to configure script.  This works
      for several platforms using gcc.

    + add configure script option for largefile support, change buffer
      size datatypes an unsigned type to allow for reading files larger
      than a signed value would allow.

    + modify historical-buffer to allow tab/back-tab to cycle through
      the first 9 buffers, solves the problem of seeing more than the
      first few possibilities on the message line.  Toggling with the
      repeated '_' selects the first buffer shown.

    + modify name-completion to allow completion of filenames containing
      a '$'.

    + relax a check in ":w" by checking if the given name differs from
      the current filename.  If so, do not require ":w!" to write a
      readonly file to a different location.  This allows one to reuse
      the filename history for ":w".

    + modify special treatment of "#" which prevents it from being
      shifted with ">>" by disabling that when cindent is unset.

    + add a few ex-commands:  nu, j!, wq!

    + modify statevars.c to make read/write of $title consistent, i.e.,
      will warn that it cannot be set in the termcap configuration.

    + modify [Messages] buffer so that it is only invisible, not a
      scratch buffer.  The latter makes it be automatically removed
      after viewing and closing the window.

    + add pattern for "ant" (Java make-program) to a few of the patterns
      in finderr.c

    + modify PromptAndSet() to allow a cancelled prompt for variable's
      value to store an ERROR token, which can be tested in scripts with
      &error.

    + split-out modes.rc from filters.rc to make configuration more
      flexible, e.g., for configure --disable-filters.

    + modify minubuffer editing to allow one to use ^Ga to toggle
      miniedit mode and append to the buffer shown from a previous
      command rather than having it erased.

    + modify name-completion for majormode names used as macro
      parameters to use the long name (with "mode" ending) rather than
      the short name, for consistency.

    + modify perl.xs to allow for $VILE_LIBDIR_PATH to be a list of
      paths.  Only add the corresponding xxx/perl names to @INC if they
      correspond to a real directory.

    + change minimum/maximum repeat counts for regular expressions from
      a byte to an integer.

    + modify interpretation of "~local", "~with", "~elsewith" and
      "~endwith" so they are within the normal "~if"/"~endif" hierarchy.

    + modify minibuffer editing to shift the display left/right as
      needed after doing the initial tab of a name-completion, in case
      that left the cursor position past the end of the line.

    + add experimental plugin support and example.

    Locale Improvements:

    + workaround for broken locale table on Solaris8 and Windows2000,
      etc., which shows tab as both as printable and a control
      character.  The ISO C standard states that control characters are
      not printable.

    + extend workaround for UTF-8 locale in termcap driver to translate
      UTF-8 input to Latin-1.

    + improve/extend checks for locales which correspond to 8-bit
      character encoding, resetting to POSIX locale (ASCII) if the
      nl_langinfo() function returns a value that does not look like
      ASCII or ISO-8859-x.  This change applies to the termcap/terminfo
      and X11 drivers.

    + show locale and encoding values in the header of the [Printable
      Chars] buffer.

    + add $encoding and $locale variables to show what vile's internal
      8-bit encoding and locale are set to.

    + turn on locale feature on win32

    New Commands:

    + add macro "which-menu" to which.rc, which shows the locations that
      xvile checks for a menu-file.

    + add macro "show-each-buffer" (file showeach.rc), which splits up
      the screen into equal chunks to display as many of the non-scratch
      buffers as possible.

    + add macro "which-filter" to show which locations would be checked
      for an external filter.  If the filter happens to be built-in,
      this is also noted, in the message line.

    + improve "eval" command, provide for mixture of functions and other
      tokens which are passed to the script interpreter.

    + modify SpellFilter macro to use the results from [Filter Messages]
      with the error-finder to step through the misspellings.

    + add macro "show-filtermsgs" to show syntax filter messages,
      setting the list to the error-buffer to provide simple stepping
      through the errors which are found.

    + add commands "popup-buffer" and "popdown-buffer", which open/close
      windows for the given buffer rather than changing the current
      window to show a different buffer.  The "popup-buffer" command is
      a wrapper for the existing logic used for help and similar
      commands.  The "popdown-buffer" command differs from
      "delete-window" by closing all windows for the given buffer.

    + add command "for-buffers", which performs the same command for the
      specified buffers.

    New Modes:

    + add "reader-policy" mode, which allows one to control whether vile
      will fall-back to line-by-line reading if it encounters an error.

    + add mode "for-buffers", which specifies whether kill-buffer (and
      for-buffers) command use globbing or regular expressions.

    + add "filtermsgs" mode, for built-in filters to report syntax
      errors into [Filter Messages] buffer so that one may use the error
      finder to locate these.

    + add mode "ignoresuffix", which tells vile to strip the given
      pattern from a filename before matching majormode suffixes against
      it.

    + add mode "showchar", which turns on a field in the modeline that
      tells what the character value is at the current editing position.

    New Variables and Functions:

    + add new operators to make it simpler for macros to check for
      features:  "&isa", "&classof" and "&mclass".

    + add "&match" and "&cmatch" functions for checking if a given
      regular expression matches a string.

    + add "$error-tabstop" variable, to allow changing the tabstop value
      used when interpreting "%C" results in the error finder.  Most
      programs assume 8, and that does not work well when editing
      buffers with other tabstops such as 4.

    + add "$goal-column" variable for debugging.

    Syntax Filters:

    + modify ".table" command in filters parsing to read the user's
      color definitions, e.g., from .vile.keywords, as is done in a
      ".source" command.

    + add a ".brief" to filters parsing, which uses "?" to match zero or
      all of the following characters, in constrast to ".abbrev" which
      uses "*" to match zero or more of the following characters.

    + several new majormodes, with corresponding syntax filters:

        + ".jsp" files are really (close to) a variety of HTML files.
          Add simple support for JSP in htmlfilt.l
        + add iss-, nsis- and ini-modes
        + add lispmode, to use vile-lisp-filt.
        + add nmakemode, for special cases such as M$'s ".dsp" files.
        + add syntax filter for AutoIt version 3 and majormode au3mode.
        + add syntax filters for iss- and ini-modes.
        + add vbsmode using ".vbs" suffix based on basmode.

    + extend suffixes for several majormodes:

        + add ".asp" to jspmode suffixes
        + add ".cls" filetype for vbmode, add symbols for Visual Basic
          class modules to vb.key
        + add ".dcl" filetype for dclmode.
        + add ".el" to suffixes for lispmode.
        + add ".hpp" to suffixes for cppmode.
        + add ".jad" suffix for javamode for Java Disassembler.
        + add ".mm" to nroff mode.
        + add ".ph" and ".pph" to esqlmode suffixes.
        + add ".shar" to shmode suffixes.
        + add ".termcap" and ".terminfo" suffixes for tcmode and timode
        + add ".tic" as a suffix for timode.
        + make "TODO" a txtmode file.
        + modify pattern for logmode to allow filenames such as gmake.out

    + add a mode-pathname setting for cppmode, so files under (for
      example) /usr/include/g++ will be treated as C++.  Newer C++
      headers have no suffixes.

    + add an "-s" option to c-filt.c, for JavaScript (to support
      jsmode).  Use this to control whether to allow regular expressions
      in certain cases.

    + modify ShowFormatted macro to support "-mm" macros.

    + modify spellflt.l to allow it to be used in winvile, using npopen,
      as a built-in filter.

    + rewrote pascal syntax filter in lex, adding highlighting for
      numbers, and TurboC, Delphi comments.

    + modify cppmode's suffixes to look for .C, .H and .CC only on
      systems where filenames are case-sensitive.

    + split up the majormode "suffixes" into suffixes, mode-filename and
      mode-pathname to make it clearer how to associated regular
      expressions with the filename for majormodes.

    + change highlighting for misspelled words to Error class.

    + add environment variable VILE_SPELL_FILT to vile-spell-filt, to
      allow overriding the compiled-in program and options used for
      performing the lookup.

    + many improvements to parsing and highlighting in existing filters
      (see CHANGES).

    X11 changes:

    + add --disable-imake option to configure script, from xterm.

    + modify xvile's wheelScrollAmount resource to scroll by pages if
      the resource value is negative.

    + revise lookup for xvile's menu file to look for dotnames in the
      current and home-directories, while non-dotnames may be found
      there and in $HOME/.vile and on $startup-path.  Combine this with
      changing the default for $menu-file back to ".vilemenu" as
      documented rather than "vilemenu.rc".  The latter name is used in
      the non-dotname locations if $menu-file is a dot-name.

    Win32 changes:

    + several changes to allow winvile to remember recent files and
      folders

      + winvile remembers up to 20 of the files it has recently
        opened/created (feature disabled by default).

      + winvile remembers up to 20 of the folders it has recently
        visited via an implicit or explicit cd (feature disabled by
        default).

      + Remembered files/folders are accessible and "replayable" from
        winvile's system menu.

      + Two new modes:  recent-folders and recent-files specify maximum
        number of folders/files that may appear in winvile's system
        menu.  Range is 0-20; a value of 0 disables feature.

      + Two new commands:  purge-recent-folders and purge-recent-files
        clear the list of folders/files that appear in winvile's system
        menu.

      + modes and commands work in console mode (minimizes conflicts
        when sharing a single vile.rc), but the files/folders that
        console vile accesses are _not_ remembered.

    + improve the winvile resize/status window:

      + make resize window wide enough to show geometries that exceed 99
        columns

      + make resize window continually center itself over the editor's
        frame (NT and XP only).

    + modify dequoting of winvile's command-line in ntwinio.c to allow
      for quoting to be within parameters, e.g.,

            winvile +"100" makefile

    + reenable SHIFT+INSERT in the win32 mini-buffer (for both vile.exe
      and winvile.exe).  Unfortunately, the cygwin shell eats
      SHIFT+INSERT for console vile (mini-buffer input only).  now, it's
      once again possible to:

            $ vile somefile
            /<shift+insert>     <- search for string sitting on clipboard

    + modify environment variable lookup for win32 to look in the
      registry for the VILE* environment variables:

            VILEINIT
            VILE_HELP_FILE
            VILE_LIBDIR_PATH
            VILE_STARTUP_PATH
            VILE_ERROR_ABORT

      This change is made to make it more easily installable; Windows
      changes to environment variables apparently do not take effect
      until the machine is rebooted.  Registry changes take effect
      immediately.

    + add package script for winvile using Inno Setup.

    + improve cursor display in winvile:

        + when selecting text, show I-beam cursor.

        + when selecting a movable mode line, show a double-headed,
          north-south cursor.

        + when moving the mouse over a movable mode line, show a
          double-headed, north-south cursor.

    + don't allow mouse capture if the left mouse button is pressed in
      the area encompassing the editor's last two lines (message line
      and nonmovable mode line).  Don't allow mouse capture if the left
      mouse button is pressed on movable mode line.  Corrects
      long-standing winvile bugs.

    + add graphical change-directory to [win]vile via new command
      "wincd".  The graphical change-directory is also accessible via
      winvile's system menu and right mouse popup menu.

    + ensure that files created via winvile's "Save As" and vile's ":f"
      commands are remembered in winvile's "Recent Files" list.

    + make filename completion with cygwin ignore case.

    VMS changes:

    + add VMS mode record-attrs, modify logic in vms_creat() to use this
      information to make the default VFC files written from DCL
      editable.  Those use PRN (print file format) record attributes.

    + modify which.rc to use &pcat rather than $pathname-separator,
      since the latter is ambiguous on VMS.

    + modify infer_majormode() to work with VMS pathnames.

    + correct logic for VMS pathnames so that a directory buffer will,
      as on Unix, give the same buffer name as the directory leaf.

    + improve fakevms test-driver and related OPT_VMS_PATH code for VMS
      pathnames, making name-completion work for VMS pathnames on Unix.

    + modify catnap() function to use IEEE floating point on IA64, since
      that platform does not support F-floats.

    + modify vmsbuild.com and descrip.mms to work with IA64.

December 2007,
    vile 9.6 is released.  Highlights since 9.5 (aside from bug fixes):

    General changes:

    + implement basic support for Unicode (see Locale Improvements).

    + implement vi-style modeline, limited to setting buffer- and window-
      modes, or majormodes.

    + implement patterns as line-specifiers in ex-mode.

    + revised command-line option parsing to use scripting more effectively:

      + multiple startup files are allowed.

      + most command-line options are translated to their equivalent script
	and executed, rather than saving state for the most recent of each
	option.  This makes the -s, -S, -g, -G options obsolete (but still
	accepted).

      + add "-c" option (the POSIX form of "+").

    + disallow source'ing from the current directory if the source'd file
      might be writable by other users.

    + make mouse work for curses driver just like the termcap/terminfo
      driver.

    + improve majormodes for complex fences by initializing the (non-string)
      buffer mode values for submode groups according to the values in
      the submode.  This makes ignorecase work as expected in the complex
      fence matching for vbmode.

    + improve name-completion by saving/restoring the original window and
      buffer when [Completions] closes, rather than the closest window.

    + add named marks for decimal digits .

    + modify ":describe-bindings" to show whether the command accepts a
      range, and whether it is undoable.

    + correct comparisons used for handling bounds in regular expressions,
      e.g., the "2" in "\(this\|[l-m]\)\{2\}".

    + change behavior of regular expression OR'd alternatives - only the
      first match was used rather than the longest one.

    + modify "filename" shown in :show-filtermsgs to use the buffer name
      if no filename is available.

    Locale Improvements:

    + several changes to provide usable Unicode support:

      + add mode percent-utf8 to set a threshold for file-encoding mode
	"auto" detection of UTF-16/UTF-32 files.

      + file-encoding mode can be set to "auto", to detect UTF-16 files,
	which are loaded as UTF-8.

      + UTF-8 files are detected based on the file-encoding mode as well.

      + Unicode values are displayed (where no locale controls) as "\uXXXX"
	in 4 hexadecimal digits.

      + add unicode-as-hex mode to override locale, forcing Unicode values
	to display as "\uXXXX".

      + for buffers with UTF-8 encoding, show illegal bytes as "\?XX".

      + Unicode values can be inserted into buffers using ^VuXXXX form.

      + modify manfilt.c to provide UTF-8 output in a UTF-8 locale.

      Limitations:

      + terminal drivers support Unicode display in varying degrees:

	+ winvile - multicolumn characters, depends on font selection

	+ termcap/terminfo - relies on terminal emulator, knows about
	  multicolumn characters

	+ xvile - displays only single-column characters

	+ curses - depends on the curses library, e.g., ncursesw

	+ win32 console - not yet implemented

      + combining characters are not combined.

      + registers hold byte data, will show the UTF-8 encoding for data
	rather than a \uXXXX (unless the file-encoding for [Registers]
	is changed).

      + some "characters" such as the report for yanked text is still
	really a byte-count.

      + inserting a \uXXXX into the minibuffer will display the UTF-8
	encoding.

      + regular expressions are not wide-character aware.

      + UTF-16 and UTF-32 files are detected based on BOM and/or the
	contents of the first line of the file.

      + external syntax filters do not handle BOM or UTF-16, UTF-32.

    + add character classes [:ident:], [:octal:] and [:path:], and change
      the association of \w and \W to [:ident:], making [:alnum:] no longer
      include "_".

    + modify regexp.c so tab is not matched by \p or [[:print:]] for
      consistency with POSIX regular expressions.

    New Commands:

    + add rename-other-buffer command, use that to modify spell.rc so it
      can work with scratch buffers which otherwise would be lost, e.g.,
      "[Help]".

    + add "describe-&functions" and "describe-$variables" commands.

    + add ":goto-percent" command.

    + add (nvi/vim) ex-commands: a!, c!, i!

    + add ":c" as alias for ":change-til" (nvi/vim).

    New Modes:

    + UTF-8 is supported via new modes "byteorder-mark" and
      "file-encoding"

    + add mode xterm-fkeys, to allow termcap driver to generate
      shift/control/alt modifiers for function keys.

    + add "rectangle-insert-mode".

    + add "showvariables" mode, for testing expressions used in [Variables].

    + add "echo-to-clipboard" mode for Win32 hosts:
      all text selected with the mouse is automatically
      copied to the Windows clipboard.

    + add "bufname-expr", "identifier-expr" and "pathname-expr" buffer modes to
      provide regular expression parsing of $bufname, $identifier and $pathname
      in the show-variables command as well as for the related expansion of
      tokens from the cursor position.  If the expressions are empty, the code
      falls through to use the corresponding older character-class parsing.
      Default values are provided for each *-expr mode.

    + add cursor-tokens mode to control whether vile uses regular
      expressions, character classes or a combination to obtain tokens
      from the screen.

    New Variables and Functions:

    + add new symbols "$return" and "$_" which can be used to implement simple
      functions .

    + add "%n" and "%N" substitutions for $title-format

    + change "%n" in modeline substitutions to use file name (pathleaf)
      rather than relative path (shorten_path).  Use "%r" for the latter.

    + add "&gtmotion" function for scripts.

    + add $buf-fname-expr to show the combined bufname-expr, pathname-expr
      used to interpret ^X-e.

    + improve handling of enumerated values by forcing all to lowercase,
      e.g., to eliminate the need for the special case in 9.1x to handle
      "TRUE" and "true".

    + update title when doing a "cd", in case it uses %r substitution.

    Syntax Filters:

    + modify syntax filters to use flex's character classes.

    + add configure check for lex's which support character classes, and
      add filters/noclass.sh to work around those which do not.

    + several new majormodes, with corresponding syntax filters:

	+ add confmode for "ordinary" config-files.
	+ add csmode (for C# ".cs" files).
	+ add csvmode for ".csv" files.
	+ add delphi mode
	+ add docbookmode
	+ add lua mode
	+ add mcrlmode for mCRL/mCRL2 modeling language.
	+ add midlmode, for Microsoft IDL.
	+ add rtfmode for RTF files.
	+ add wbtmode for WinBatch.
	+ add xpmmode
	+ add majormodes for bnf, css, php

    + extend suffixes for several majormodes:

	+ add ".ebuild" suffix for shmode.

	+ modify preamble for xml- and html-modes to ensure that the first
	  tag determines the type.

	+ add output from rcshist to diffmode.

	+ add ".vbp" files to inimode.

	+ add ".reg" files to inimode.

	+ add ".ddl" suffix to sqlmode.

	+ add ".dsr" suffix to vbmode.

	+ add several package-related suffixes to sqlmode.

    Other improvements to majormodes:

    + modify majormode inferencing to check preamble for [Standard Input]
      and [Output] buffers.

    + modify preamble patterns for shell modes such as awk, etc., to allow
      for programs without an absolute pathname, e.g., "#! awk".

    + improved cppmode's identifier-expr.

    + updated python keywords

    + improve bas-filt.l by not highlighting incidental matches in the
      attribute section of a Visual Basic form-file.

    + add section definitions to vbmode.

    + add complex fences to vbmode.

    + improve vl-filt.l based on Verilog LRM draft

    + fill in complete list of event names for xres.key from Xt/TMParse.c

    + fix sh-filt.l for parameter substitutions containing an escaped
      quote, e.g.,
	    VERSION=${VERSION#*VERSION \"}
	    VERSION=${VERSION%\"*}

    + change htmlfilt.l to highlight character- and URI-references as
      numbers to make them distinct from strings with ordinary text.

    + add "+", ",", "&", "@" and ";" to URL patterns in filters.

    + fixes for termcap syntax highlighter, i.e., tcmode:
      + allow description field to be empty
      + color the "|" between aliases.
      + improve string- and escape-parsing

    + fixes for terminfo syntax highlighter, i.e., timode:
      + allow description field to be empty
      + color the "|" between aliases.
      + allow aliases to contain blanks.

    + add check in m4-filt.c for unbalanced quote, show the affected area
      as an error.

    + several improvements and fixes to lex-filt.l (a rewrite which
      makes it very complete, however it now requires flex).

    + minor fixes to make most of the lex filters build with "old" lex,

    + make autocolor work for curses-driver, e.g., --with-screen=ncurses

    + improve vilefilt.l, highlighting mode names and displaying error
      for unknown mode, function and state variables.

    + modify spellflt.l to chop words according to Camel-case, so
      tokens such as "ChopWords" are treated by the spell checker as
      multiple words.

    + modify spell- and txt-filters to allow users to add words to their
      respective ".keywords" files to override the builtin highlighting.

    + make ShowFormatted macro more configurable by allowing environment
      variables $VILE_NROFF_FILT and $VILE_TABLE_FILT to override the
      choice of programs therein.

    X11 changes:

    + add -class option to xvile.

    + make cursor-adjustment after paste in xvile dependent on whether the
      pasted text ended with a newline.

    Win32 changes:

    + change winvile's registry subkey for recent-folders and recent-files
      to match environment variable settings from 9.4r, e.g., change
	    "Software\winvile\MRUFiles"
      to
	    "Software\VI Like Emacs\MRUFiles"

    + modify winvile's command-line parsing, adding "-i" option to perform
      the case used for "Send To": use the part of the command line after
      options as the filename and change working directory to match.

    + improve paste-performance in winvile by passing whole-line chunks
      to the insert-function.

    + improve repainting in winvile while processing external command.
      also modify keyboard handling to provide type-ahead while processing
      external command.

    + correct order of evaluation from 9.4w when setting record-separator,
      which was setting "crlf" ending temporarily when computing the buffer
      size, even when "lf" was intended.  That would cause an immediate
      write from winvile (without change) for a buffer to write too many
      characters.

    + add a character-class check to find_b_file() to prevent names such
      as "<vile.1>" from being canonicalized into "vile.1" on win32 via
      FindFirstFile().  This fixes a problem where ^X-n would sometimes
      display the wrong buffer.

    + add shifted-cursor-key bindings for winvile, like xterm.

    + add KEY_xxx definitions to OS/2 and Win32 drivers, defining up to
      KEY_F35 for the former and KEY_F24 for the latter .

    + add &pquote in manpage.rc, to allow it to format html output when
      vile-manfilt, etc., reside in directories containing spaces in their
      name.

    + correct check of return of ffread() in spellflt.l's workaround for
      platforms such as win32 which have no usable popen().  That made
      spelling checks require two ^X-i presses.

    + modify ntwinio.c to invoke build_recent_file_and_folder_menus() in
      the WM_INITMENUPOPUP event rather than WM_SYSCOMMAND.  This makes
      winvile initialize the recent-folders and recent-files if one uses a
      right-click on the title of the window.

    + modify spell filter so that it can get VILE_SPELL_FILT from the
      registry on win32.

    + improved winvile's "flash".

    + fixes for 64-bit warnings of Visual Studio .NET 2003

    + modify wvwrap.exe to work with pathnames containing "$", "&" and "'".

    + improve winvile.iss (Inno Setup):
      + use values in patchlev.h to set the package version information.
      + add context menu and Send To shortcuts
      + install the keyword files

    VMS changes:

    + minor build-fixes for VMS:

      + modify vmsbuild.com to simplify workaround for broken MMS 3.8

      + provide dummy variables for xvile to reflect modularization changes
	with respect to vmsvt.c

    + move VMS-specific code from termio.c to vmsvt.c

    Other portability:

    + use va_copy() in dofmt() to work with Linux on powerpc

    + modify configure script to omit lex-filt.l from build if lex is not
      really flex, since the tables are too large for the older program.

    + improve os2vio.c, adding a check to distinguish between fullscreen
      and VIO to allow using bright background colors in the latter .

    + modified regexp.c, add headers vl_regex.h, vl_alloc.h and vl_ctype.h
      to allow it to be easily built outside vile .

    + add KEY_BackTab to the output of show-key-names

    + fix kcod2prc() so that a shifted-tab is converted to "Shift+^I"
      rather than emitting a literal tab in the result.

    Performance:

    + modify the symbol-table lookup in filters.c to use tsearch() when
      available.  For an 8Mb rtf file this improved performance by about
      a factor of two (on Linux - Visual C++ has no tsearch).

    + use new module blist (binary search of lists) to reduce linear
      searches in the places where btree is not already used.

    + add configure check for getc_unlocked(), putc_unlocked() and
      tsearch() to use in performance improvements for syntax filters.

June 2008,
    vile 9.7 is released.  While the goal for this release is to fix
    regressions and new bugs since 9.5; there are some new/modified features. 
    Highlights since 9.6 (aside from build- and bug-fixes):

    General changes:

	+ modify prompt for new mode value to consistently show the mode's full
	  name.

	+ modify wrapmargin mode to use negative values as a count from the
	  left of the screen.

	+ modify behavior of ":ww!" to act like ":w!", allowing it to write
	  all files.

	+ trim trailing blanks from text handled in modelines in case there
	  was a ^M.

	+ modify treatment of ":setl dos" to behave the same as ":set-dos".
	  That makes it possible to put a "vile:dos" in a modeline and make
	  vile convert the line-endings.

	+ flush the standard output before writing version message using the
	  standard error, in case there was some output pending.

	+ modify curses-driver to avoid a curses-refresh (repainting the
	  whole screen) between a shell command and the "Press return to
	  continue" message.

	+ improved scripting, making it simpler to save a boolean mode-value in
	  a variable and restore it by assignment.

    Locale Improvements:

	+ improve locale initialization, checking if there is no installed
	  narrow locale corresponding to the given (wide) locale.  In that
	  case, default to either ISO-8859-1 or ASCII, depending on whether
	  there was actually a wide locale whose encoding is UTF-8 or
	  ISO-8859-1, or neither.

	+ force the [Printable Chars] buffer to use file-encoding=8bit,
	  makes it display consistently legal codes in the second column.

	+ make ISO-8859-1 data display consistently in UTF-8 buffer as "\?xx".

	+ provide workaround for systems without nl_langinfo(CODESET)).

	+ make transpose-characters work for wide-characters.

	+ make "~" (flip-character) and related case-conversion work for
	  Unicode in 0..255 range.

    New Commands:

	none

    New Modes:

	+ modify mktbls to allow special-case alias for modes which have no
	  convenient abbreviation.

	+ add "fk" alias for file-encoding mode.

	+ add a "locale" value for file-encoding, use that as the default.

    New Variables and Functions:

	+ add $buf-encoding symbol, to show the actual encoding used by the
	  current buffer vs the file-encoding which is one of vile's internal
	  names such as "8bit" or "locale".

    Syntax Filters:

	+ modify parsing of keyword files to accept an empty parameter for
	  "abbrev" and "brief", to disable the "*" and "?" feature.

	+ remove obsolete lex-filters for perl and ruby (only the C versions
	  have been supported).

	+ improved lisp filter:

	  + change class color of parentheses to "Action" to make them easier
	    to distinguish from "String".

	  + color binary, octal and hexadecimal constants, as well as parse
	    the "#\" patterns.

	+ improved perl syntax filter:

	  + make perlpod sections more readable by highlighting the control
	    lines.

	  + add double-quote to quote-delimitors.

	  + show interpreted symbols in double-quoted regular expressions.

	  + if "/e" modifier is set for regular expression, show interpreted
	    symbols for that.

	  + show regular expression modifiers in keyword-attribute, not string

	  + color &foo as a variable.

	  + color both class and member in variables such as $foo::bar

	  + add ".t" to perlmode, using $mode-pathname

	+ improved ruby syntax filter:

	  + match keywords containing '!' '?' and '=' depending on the context.

	  + remove unmatchable characters from the list of those matched
	    following $. 

	  + change the instance variable matching to @@?{KEYWORD} instead of
	    @+{KEYWORD}. 

          + highlight constants (keywords beginning with a capital) with    
            the Type attribute. 

	  + highlight binary integers (such as 0b10101).

	  + disable "*" and "?" abbreviation feature in ruby.key, allowing
	    match of "defined?", etc.

        Other improvements to filters:

	  + make vile's symbol-tables accessible to vilemode in winvile.

	  + minor improvement to vbmode's fence-if to ignore lines with
	    continuations.

	  + improve here-document parsing in sh-filt.l to work with "words"
	    which contain blanks.

    Other improvements to majormodes:

	+ strip redundant "mode" from majormode names, avoiding the potential
	  for creating foomodemode when the script says
		  define-majormode foomode

	+ remove ".scm" from c-suffixes pattern.

	+ add schememode.

    X11 changes:

	+ update input-method code, from xterm.

	+ add xvile resource setting "openIm" to control whether it tries to
	  open input-method.

	+ improved handling of runtime X errors, xvile will attempt to save
	  buffers.

    Win32 changes:

	+ simplify wvlwrap.exe by disabling globbing temporarily.  This allows
	  opening files whose names contain square brackets. 

	+ suppress part of wildcard expansion in call to expand_wild_args(),
	  e.g., for command-line of winvile, since that interferes with
	  reading files whose names contain square brackets.

    VMS changes:

	none

    Other portability:

	+ improve configure checks for iconv.

    Performance:

	none

August 2010,
    vile 9.8 is released.  The goal of this release is to fill in the remainder
    of the UTF-8 support.

    Highlights since 9.7 (aside from build- and bug-fixes):

    General changes:

	+ many improvements to UTF-8, for regular expressions and input.

	+ implement user-definable operators

	+ vile.hlp and all ".doc" plain-text files are generated from html.

	  http://invisible-island.net/vile/vile-toc.html

	+ highlight matches in which-keywords, etc., and put a hyperlink on the
	  highlighted text to view the corresponding file.

	+ add a brief mode format "%M" for modeline-format

	+ improve checks for insecure file permissions.

	+ improve which-source and which-exec commands, showing which files
	  fail the checks for insecure permissions.

	+ new configure script options:

	  + --with-symlink, which augments --program-suffix to make it
	    simple(r) to install versioned binaries.

	  + options for transforming program name upon install:
	    -- program-prefix, --program-suffix, --program-transform-name

    Locale Improvements:

	+ add environment variable VILE_LOCALE_MAPPING to help with special
	  cases of associating wide/narrow locales, e.g., where the narrow
	  locale is only available under a non-empty suffix.

	+ regular expressions support character classes for UTF-8.

	+ regular expressions support \< and \> markers for UTF-8.

	+ format-til, lower-til, upper-til and flip-til work with UTF-8

	+ xvile uses \uXXXX format when the font does not contain a glyph for a
	  given character.

	+ accept ^VUddddd input for Unicode in decimal (base ten).

    New Commands:

	+ new command-line option "-F" tells vile to only run the syntax
	  filters for the given files, writing the attributed text to the
	  standard output.  Used this option to highlight the code-examples in
	  vile's html and documentation.

	+ added several "list-XXX" aliases to match "show-XXX" commands, for
	  consistency.

	+ "append-number", "insert-number", "overwrite-number" commands work
	  with characters entered as numbers.

	+ "define-menu-entry" modifies xvile menu entries.

	+ "set-extra-colors" allows setting extra colors for special buffers
	  such as [Settings].

	+ "show-filtercolors" macro shows the class names and their colors for
	  the current majormode.

	+ "show-extra-colors" shows classes and colors modified by
	  "set-extra-colors".

	+ "show-local-modes" is an easier-to-remember variation for the
	  count+"show-modes" combination.

	+ "show-undo-stack" shows the contents of the undo-stack.

	+ "show-wide-printable" provides a way to see details for other "pages"
	  than the ASCII/Latin-1 0-255 code.

	+ "store-operator" stores a macro which is treated as an operator.

    New Modes:

	+ "spaces-after-sentence" is now a buffer mode, to allow it to be part
	  of a majormode.

	+ "check-access" makes the check for insecure file-permissions
	  configurable by the user.

	+ "percent-autocolor" can be used to override the autocolor mode for
	  very large files.

	+ "reuse-position" allows users to specify that vile should restore the
	  current line/column position when (re)displaying a scratch buffer
	  built with liststuff.

    New Variables and Functions:

	+ &bchanged, &fchanged and state variables $bchanged (same as
	  $modified) and $fchanged make it simpler for scripts to check if
	  buffer/file timestamps differ.

	+ $cfgopts now shows drivers (ansi, borland, ntcons, ntwin, os2vio,
	  vmsvt) and other useful settings (iconv, multibyte).

	+ $cmd-encoding variable allows control of minibuffer's encoding

	+ $cmd-motion variable is used in user-defined operators.

	+ $font is always available, but readonly for non-GUI configurations.

	+ $kill-size and $kill-limit variables to improve scripting with the
	  $kill variable.

	+ $latin1-expr variable specifies whether a derived narrow locale
	  really has Latin1 (ISO-8859-1) encoding.

	+ $modeline-limit limits the offset into each line that vile scans for
	  modelines.

	+ $term-cols, $term-lines and $term-resizes give the terminal
	  dimensions, and tell if it is in a resizable window.

	+ $title-encoding controls whether vile 8-bit or UTF-8 encoding is used
	  when setting xterm title.

    Syntax Filters:

	+ new "-c" option to vile-key-filt tells it to display tokens in their
	  final color rather than based on syntax.

	+ new "-Q" option for all syntax filters makes the filter write a
	  ".keyword" table to stderr to show the effect of the "-k" option.

	+ extend syntax keyword parsing to allow flags to be set for each
	  keyword, e.g., to mark keywords that are used to delimit comments.

	+ vile-awk-filt improvements

	  + highlight inline comments.

	  + highlight regular expression used as parameter, e.g., in sub().

	  + change $0, etc., to Ident2 class for consistency with other
filters.

	  + highlight some cases of unbalanced right-parenthesis or
	    curly-braces.

	  + correct DSTRING expression, to handle "\\\\" value.

	  + accept literal spaces in patterns.

	+ vile-basic-filt improvements

	  + allow continuation marker in comments

	  + support .NET-style preprocessor directives.

	+ vile-ecl-filt (ECLiPSe/Prolog)

	  + fix typo in STARTQUERY pattern

	  + parse based-numbers.

	  + highlight strings and numbers.

	+ vile-html-filt improvements

	  + "<%" "%>" are recognized anywhere - not just outside tags.

	  + ensure that "server" is the tag, not one of the named values, e.g.,
	    "<server>" vs "<foo server=bar>".

	  + use language value in script tag, e.g., to handle C# scripts.

	  + modify check for language value to accept anything beginning
	    "javascript", e.g., "javascript1.1".

	  + check for "src" property in script tag before deciding whether to
	    use JavaScript keywords.

	  + create separate table "htmlprop" for HTML properties.

	  + highlight CSS embedded in HTML.

	+ vile-lisp-filt (also for scheme filter)

	  + highlight quasiquote/backtick (`), quote ('), unquote (,) and
	    unquote-splice (,@), including unquoted sub-expressions.

	  + highlight the parentheses of quoted expressions in a different
	    color.

	+ vile-php-filt improvements

	  + identifiers may begin with "_".

	  + color heredocs and nowdocs

	  + color comments beginning with "#".

	  + add preamble pattern for phpmode.

	+ nroff filter allows for macro-names to be used for fonts.

	+ spell filter now uses $TMPDIR rather than putting its temporary files
	  in the current directory.

	+ vile-rpm-filter improvements:

	  + recognize keywords ending with digits, such as "Source0".

	  + distinguish one-liner tags from multi-line sections.

	  + ignore case of keywords.

	  + add keywords for %XXX variants of %{XXX} names.

	  + highlight %XXX words in single-quotes.

	+ vile-ruby-filt now handles stacked here-documents.

	+ vile-scheme-filt

	  + handle combinations of quotation literals.

	  + highlight the unquote/unquote-splicing keywords.

	  + handle the optional scheme parentheses extension ('[' and ']').

	+ vile-sh-filt

	  + handle "${number}", "$(commands)", "$((expression))",
	    "${name#value}", etc.

	  + handle escape character in here-document.

	+ vile-sql-filt improvements:

	  + allow host variables in LEAD state.

	  + improve parsing of "@" character.

	  + allow newlines inside quoted strings.

	+ vile-vile-filt improvements:

	  + display numeric codes following a control/V as in a map-command as
	    numbers or errors if fewer digits were found than expected

	+ vile-yacc-filt improvements:

	  + highlight all of the terminal symbols with "Terminal" class.

	  + modify keyword ".merge" directive to make it distinct from
	    ".source".  The former reads without modifying the table name, the
	    latter builds a new table.  Use this feature in the yacc syntax
	    filter to keep the terminal names and C keywords separate.

	+ vile-xml-filt improvements:

	  + use the prefixes defined by xmlns properties to select different
	    symbol tables.

	  + modify the way keywords are loaded, to support multiple symbol
	    tables defined via the keyword files using the ".include" feature.

    Other improvements to majormodes:

	+ lots of new file suffixes added to existing modes, of course.

	+ new majormodes:

	  + "ant" and "mvn" (maven)

	  + asp

	  + dtd

	  + haskell

	  + mailcap

	  + objc (objective-c)

	  + vb6

	  + xq (XQuery)

	  + xsl

	+ add option for C# verbatim string literals to c-filter.c

	+ add to diffmode's preamble pattern to allow it to detect diff's in a
	  piped input.

	+ vbmode and vb6mode provide try-bloc,, "with" and "select" complex
	  fences.

	+ yacc.key updated to bison 2.4.1 and byacc 20100610.

	+ modify xresmode to include shell-output from appres, e.g., ^X!appres
		XTerm

	+ modify preamble settings for majormodes of the form "#!path" to make
	  them more distinct.

    X11 changes:

	+ add lxvile wrapper for xvile, which chooses a font based on locale
	  setting

	+ add uxvile script, based on uxterm.

	+ vilemenu.rc lists fonts used in uxterm for the set of ordinary fonts
	  if the $term-encoding is utf-8.

	+ vilemenu.rc is scriptable; use this to work with the --disable-shell
	  configuration by omitting menu entries which use shell features.

	+ vilemenu.rc provides a default-font entry, to restore the font to
	  whatever was given in a -fn option, or resource setting.

	+ XVile.ad now matches Debian package.

	+ handle XA_COMPOUND_TEXT and XA_UTF8_STRING selection types.

	+ use Xutf8LookupString for input of UTF-8 key-events, if available.

	+ RPM spec file configures xvile to provide menu support.

	+ RPM spec file now installs uxvile.

    Win32 changes:

	+ winvile supports Unicode select/paste.

	+ modify winvile installer to optionally refrain from putting the newly
	  installed directories first in $VILE_STARTUP_PATH, etc., if they
	  already exist in the given path.  That allows one to have vile.rc in
	  the first path, e.g.,

		c:\vile;c:\program files\vi like emacs

	+ winvile "-i" option now saves the original command string, so
	  filenames with embedded blanks now longer need quotes.

	+ change Inno Setup script to install html files rather than doc files
	  for documentation; added a shortcut to the table of contents.

	+ UNC-paths are recognized with Cygwin.

	+ modify configure script, etc., to build "minvile" and "convile"
	  flavors using MinGW.

	+ implement quick-launch rule in winvile.iss script.

	+ DJGPP version provides syntax highlighting.

	+ borland.c (used for DJGPP) now tabuluates the shift/control/alt
	  flavors of cursor- and function-keys, defining function keys up to
	  48.

    Terminal drivers:

	+ ansi driver supports color syntax highlighting.

	+ curses driver supports color-schemes.

	+ improve configuration/initialization of curses-driver to ensure that
	  no attempt is made to display UTF-8 using 8-bit curses.

	+ modeline formatting supports UTF-8 filenames.

	+ xterm-fkeys improvement:

	  + checks for existence of shifted cursor- and editing-keys when the
	    unshifted keys do not use CSI format.

	  + recognizes either form of CSI

	+ use xterm patch #251 feature for saving/restoring title in termcap
	  and curses drivers.

    Other portability:

	+ add configure check for utf8 library, needed for some platforms to
	  use iconv library.

	+ add configure check for SIGWINCH, to fix resizing on OS X

	+ optionally use rpath feature to simplify linking against libraries in
	  nonstandard locations.

	+ use pkg-config for X libraries, if available.

	+ encryption feature works with 64-bit platforms.

    Performance:

	+ improve performance for show-variables and describe-bindings.

	+ improve performance for displaying syntax highlighting of very long
	  lines by using a fast check on the left/right limits of single-line
	  regions that could be displayed, and ignoring attributed regions past
	  those bounds.

	+ improve performance of on-the-fly UTF-8 regular expressions by
	  inlining and making checks to see if a byte is ASCII before doing
	  conversions.

-------------------------------
$Header: /usr/build/vile/vile/RCS/README,v 1.103 2010/08/08 21:56:28 tom Exp $
-------------------------------
