%pointer
%s sTEXT NOTE

%{
/*
 * $Header: /usr/build/vile/vile/filters/RCS/texifilt.l,v 1.11 2009/04/25 16:28:48 tom Exp $
 *
 * Filter to add vile "attribution" sequences to selected bits of texinfo input.
 */

#include <filters.h>

DefineFilter("texi");

static char *Action_attr;
static char *Comment_attr;
static char *Number_attr;
static char *String_attr;

%}

SPACE		[ \t]

PUNCT		[!"'*.:=?@^`{}~-]

NAME		[[:alpha:]]+

INTEGER		[-+]?([[:digit:]]+)
REAL		[-+]?([[:digit:]]*\.[[:digit:]]+)([eE][+-]?[[:digit:]]+)?
NUMBER		({INTEGER}|{REAL})

%%

<sTEXT>"@{C}"		|
<sTEXT>"@"{SPACE}	|
<sTEXT>[{}]		|
<sTEXT>"@"{PUNCT}	{ WriteToken(String_attr); }

<sTEXT>"@"{NAME}	{ const char *attr = keyword_attr(yytext + 1);
			  const char *mark = Action_attr;
			  if (attr == Comment_attr) {
			      BEGIN(NOTE);
			      mark = attr;
			  } else if (attr != 0) {
			      mark = attr;
			  }
			  flt_puts("@", 1, mark);
			  WriteToken2(keyword_attr(yytext + 1), 1);
			}

<NOTE>[^\r\n]*		{ WriteToken(Comment_attr); }
<NOTE>\n		{ ECHO; BEGIN(sTEXT); }

<sTEXT>{NUMBER}		{ WriteToken(Number_attr); }
<sTEXT>.		{ ECHO; }

%%

static void
init_filter(int before GCC_UNUSED)
{
    (void) before;
}

static void
do_filter(FILE *inputs)
{
    InitLEX(inputs);

    Action_attr  = class_attr(NAME_ACTION);
    Comment_attr = class_attr(NAME_COMMENT);
    Number_attr  = class_attr(NAME_NUMBER);
    String_attr  = class_attr(NAME_LITERAL);

    BEGIN(sTEXT);
    RunLEX();
}

#if NO_LEAKS
static void
free_filter(void)
{
    USE_LEXFREE;
}
#endif
