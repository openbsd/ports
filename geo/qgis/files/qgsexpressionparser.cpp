/* A Bison parser, made by GNU Bison 2.6.2.  */

/* Bison implementation for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2012 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.6.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 1

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1


/* Substitute the variable and function names.  */
#define yyparse         exp_parse
#define yylex           exp_lex
#define yyerror         exp_error
#define yylval          exp_lval
#define yychar          exp_char
#define yydebug         exp_debug
#define yynerrs         exp_nerrs

/* Copy the first part of user declarations.  */
/* Line 336 of yacc.c  */
#line 16 "src/core/qgsexpressionparser.yy"

#include <qglobal.h>
#include <QList>
#include <cstdlib>
#include "qgsexpression.h"

#ifdef _MSC_VER
#  pragma warning( disable: 4065 )  // switch statement contains 'default' but no 'case' labels
#  pragma warning( disable: 4702 )  // unreachable code
#endif

// don't redeclare malloc/free
#define YYINCLUDED_STDLIB_H 1

struct expression_parser_context;
#include "qgsexpressionparser.hpp"

//! from lexer
typedef void* yyscan_t;
typedef struct yy_buffer_state* YY_BUFFER_STATE;
extern int exp_lex_init(yyscan_t* scanner);
extern int exp_lex_destroy(yyscan_t scanner);
extern int exp_lex(YYSTYPE* yylval_param, yyscan_t yyscanner);
extern YY_BUFFER_STATE exp__scan_string(const char* buffer, yyscan_t scanner);

/** returns parsed tree, otherwise returns NULL and sets parserErrorMsg
    (interface function to be called from QgsExpression)
  */
QgsExpression::Node* parseExpression(const QString& str, QString& parserErrorMsg);

/** error handler for bison */
void exp_error(expression_parser_context* parser_ctx, const char* msg);

struct expression_parser_context
{
  // lexer context
  yyscan_t flex_scanner;

  // varible where the parser error will be stored
  QString errorMsg;
  // root node of the expression
  QgsExpression::Node* rootNode;
};

#define scanner parser_ctx->flex_scanner

// we want verbose error messages
#define YYERROR_VERBOSE 1

#define BINOP(x, y, z)  new QgsExpression::NodeBinaryOperator(x, y, z)


/* Line 336 of yacc.c  */
#line 128 "/tmp/qgsexpressionparser.cpp"

# ifndef YY_NULL
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULL nullptr
#  else
#   define YY_NULL 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 1
#endif

/* In a future release of Bison, this section will be replaced
   by #include "qgsexpressionparser.hpp".  */
#ifndef EXP_TMP_QGSEXPRESSIONPARSER_HPP
# define EXP_TMP_QGSEXPRESSIONPARSER_HPP
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int exp_debug;
#endif

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     OR = 258,
     AND = 259,
     EQ = 260,
     NE = 261,
     LE = 262,
     GE = 263,
     LT = 264,
     GT = 265,
     REGEXP = 266,
     LIKE = 267,
     IS = 268,
     PLUS = 269,
     MINUS = 270,
     MUL = 271,
     DIV = 272,
     INTDIV = 273,
     MOD = 274,
     CONCAT = 275,
     POW = 276,
     NOT = 277,
     IN = 278,
     NUMBER_FLOAT = 279,
     NUMBER_INT = 280,
     NULLVALUE = 281,
     CASE = 282,
     WHEN = 283,
     THEN = 284,
     ELSE = 285,
     END = 286,
     STRING = 287,
     COLUMN_REF = 288,
     FUNCTION = 289,
     SPECIAL_COL = 290,
     COMMA = 291,
     Unknown_CHARACTER = 292,
     UMINUS = 293
   };
#endif


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{
/* Line 350 of yacc.c  */
#line 77 "src/core/qgsexpressionparser.yy"

  QgsExpression::Node* node;
  QgsExpression::NodeList* nodelist;
  double numberFloat;
  int    numberInt;
  QString* text;
  QgsExpression::BinaryOperator b_op;
  QgsExpression::UnaryOperator u_op;
  QgsExpression::WhenThen* whenthen;
  QgsExpression::WhenThenList* whenthenlist;


/* Line 350 of yacc.c  */
#line 222 "/tmp/qgsexpressionparser.cpp"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif


#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int exp_parse (void *YYPARSE_PARAM);
#else
int exp_parse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int exp_parse (expression_parser_context* parser_ctx);
#else
int exp_parse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !EXP_TMP_QGSEXPRESSIONPARSER_HPP  */

/* Copy the second part of user declarations.  */

/* Line 353 of yacc.c  */
#line 249 "/tmp/qgsexpressionparser.cpp"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int yyi)
#else
static int
YYID (yyi)
    int yyi;
#endif
{
  return yyi;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)				\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack_alloc, Stack, yysize);			\
	Stack = &yyptr->Stack_alloc;					\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (YYID (0))
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  23
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   220

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  41
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  6
/* YYNRULES -- Number of rules.  */
#define YYNRULES  41
/* YYNRULES -- Number of states.  */
#define YYNSTATES  85

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   293

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
      39,    40,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint8 yyprhs[] =
{
       0,     0,     3,     5,     9,    13,    17,    21,    25,    29,
      33,    37,    41,    45,    49,    53,    57,    61,    65,    69,
      73,    77,    81,    84,    88,    93,    99,   106,   109,   112,
     116,   122,   124,   126,   128,   130,   132,   134,   138,   140,
     143,   145
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      42,     0,    -1,    43,    -1,    43,     4,    43,    -1,    43,
       3,    43,    -1,    43,     5,    43,    -1,    43,     6,    43,
      -1,    43,     7,    43,    -1,    43,     8,    43,    -1,    43,
       9,    43,    -1,    43,    10,    43,    -1,    43,    11,    43,
      -1,    43,    12,    43,    -1,    43,    13,    43,    -1,    43,
      14,    43,    -1,    43,    15,    43,    -1,    43,    16,    43,
      -1,    43,    18,    43,    -1,    43,    17,    43,    -1,    43,
      19,    43,    -1,    43,    21,    43,    -1,    43,    20,    43,
      -1,    22,    43,    -1,    39,    43,    40,    -1,    34,    39,
      44,    40,    -1,    43,    23,    39,    44,    40,    -1,    43,
      22,    23,    39,    44,    40,    -1,    14,    43,    -1,    15,
      43,    -1,    27,    45,    31,    -1,    27,    45,    30,    43,
      31,    -1,    33,    -1,    35,    -1,    24,    -1,    25,    -1,
      32,    -1,    26,    -1,    44,    36,    43,    -1,    43,    -1,
      45,    46,    -1,    46,    -1,    28,    43,    29,    43,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,   153,   153,   157,   158,   159,   160,   161,   162,   163,
     164,   165,   166,   167,   168,   169,   170,   171,   172,   173,
     174,   175,   176,   177,   179,   199,   200,   202,   203,   205,
     206,   209,   212,   236,   237,   238,   239,   243,   244,   248,
     249,   253
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 1
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "OR", "AND", "EQ", "NE", "LE", "GE",
  "LT", "GT", "REGEXP", "LIKE", "IS", "PLUS", "MINUS", "MUL", "DIV",
  "INTDIV", "MOD", "CONCAT", "POW", "NOT", "IN", "NUMBER_FLOAT",
  "NUMBER_INT", "NULLVALUE", "CASE", "WHEN", "THEN", "ELSE", "END",
  "STRING", "COLUMN_REF", "FUNCTION", "SPECIAL_COL", "COMMA",
  "Unknown_CHARACTER", "UMINUS", "'('", "')'", "$accept", "root",
  "expression", "exp_list", "when_then_clauses", "when_then_clause", YY_NULL
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,    40,
      41
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    41,    42,    43,    43,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    43,    44,    44,    45,
      45,    46
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     2,     3,     4,     5,     6,     2,     2,     3,
       5,     1,     1,     1,     1,     1,     1,     3,     1,     2,
       1,     4
};

/* YYDEFACT[STATE-NAME] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,     0,     0,    33,    34,    36,     0,    35,    31,
       0,    32,     0,     0,     2,    27,    28,    22,     0,     0,
      40,     0,     0,     1,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    29,    39,    38,
       0,    23,     4,     3,     5,     6,     7,     8,     9,    10,
      11,    12,    13,    14,    15,    16,    18,    17,    19,    21,
      20,     0,     0,     0,     0,     0,    24,     0,     0,    41,
      30,    37,     0,    25,    26
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,    13,    49,    50,    19,    20
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -59
static const yytype_int16 yypact[] =
{
     121,   121,   121,   121,   -59,   -59,   -59,   -13,   -59,   -59,
     -16,   -59,   121,    43,   158,   -59,   -59,   197,   121,    78,
     -59,   121,    44,   -59,   121,   121,   121,   121,   121,   121,
     121,   121,   121,   121,   121,   121,   121,   121,   121,   121,
     121,   121,   121,    21,     6,   111,   121,   -59,   -59,   158,
     -23,   -59,   178,   197,   -10,   -10,   -10,   -10,   -10,   -10,
     -10,   -10,   -10,    60,    60,     1,     1,     1,     1,   -59,
       1,    30,   121,   121,    82,   121,   -59,   121,   -20,   158,
     -59,   158,    32,   -59,   -59
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -59,   -59,     0,   -58,   -59,    51
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -1
static const yytype_uint8 yytable[] =
{
      14,    15,    16,    17,    35,    36,    37,    38,    39,    40,
      41,    42,    22,    75,    78,    18,    75,    76,    45,    82,
      83,    41,    42,    21,    52,    53,    54,    55,    56,    57,
      58,    59,    60,    61,    62,    63,    64,    65,    66,    67,
      68,    69,    70,    23,    71,    72,    74,    24,    25,    26,
      27,    28,    29,    30,    31,    32,    33,    34,    35,    36,
      37,    38,    39,    40,    41,    42,    43,    44,    75,    77,
      48,     0,    84,    79,     0,    81,    37,    38,    39,    40,
      41,    42,     0,     0,    51,    24,    25,    26,    27,    28,
      29,    30,    31,    32,    33,    34,    35,    36,    37,    38,
      39,    40,    41,    42,    43,    44,    18,     0,    46,    47,
       0,     0,     0,    80,    24,    25,    26,    27,    28,    29,
      30,    31,    32,    33,    34,    35,    36,    37,    38,    39,
      40,    41,    42,    43,    44,     1,     2,     0,     0,     0,
      73,     0,     0,     3,     0,     4,     5,     6,     7,     0,
       0,     0,     0,     8,     9,    10,    11,     0,     0,     0,
      12,    24,    25,    26,    27,    28,    29,    30,    31,    32,
      33,    34,    35,    36,    37,    38,    39,    40,    41,    42,
      43,    44,    25,    26,    27,    28,    29,    30,    31,    32,
      33,    34,    35,    36,    37,    38,    39,    40,    41,    42,
      43,    44,    26,    27,    28,    29,    30,    31,    32,    33,
      34,    35,    36,    37,    38,    39,    40,    41,    42,    43,
      44
};

#define yypact_value_is_default(yystate) \
  ((yystate) == (-59))

#define yytable_value_is_error(yytable_value) \
  YYID (0)

static const yytype_int8 yycheck[] =
{
       0,     1,     2,     3,    14,    15,    16,    17,    18,    19,
      20,    21,    12,    36,    72,    28,    36,    40,    18,    77,
      40,    20,    21,    39,    24,    25,    26,    27,    28,    29,
      30,    31,    32,    33,    34,    35,    36,    37,    38,    39,
      40,    41,    42,     0,    23,    39,    46,     3,     4,     5,
       6,     7,     8,     9,    10,    11,    12,    13,    14,    15,
      16,    17,    18,    19,    20,    21,    22,    23,    36,    39,
      19,    -1,    40,    73,    -1,    75,    16,    17,    18,    19,
      20,    21,    -1,    -1,    40,     3,     4,     5,     6,     7,
       8,     9,    10,    11,    12,    13,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    28,    -1,    30,    31,
      -1,    -1,    -1,    31,     3,     4,     5,     6,     7,     8,
       9,    10,    11,    12,    13,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    14,    15,    -1,    -1,    -1,
      29,    -1,    -1,    22,    -1,    24,    25,    26,    27,    -1,
      -1,    -1,    -1,    32,    33,    34,    35,    -1,    -1,    -1,
      39,     3,     4,     5,     6,     7,     8,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,     4,     5,     6,     7,     8,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,     5,     6,     7,     8,     9,    10,    11,    12,
      13,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,    14,    15,    22,    24,    25,    26,    27,    32,    33,
      34,    35,    39,    42,    43,    43,    43,    43,    28,    45,
      46,    39,    43,     0,     3,     4,     5,     6,     7,     8,
       9,    10,    11,    12,    13,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    43,    30,    31,    46,    43,
      44,    40,    43,    43,    43,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    43,    43,    43,    43,
      43,    23,    39,    29,    43,    36,    40,    39,    44,    43,
      31,    43,    44,    40,    40
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  However,
   YYFAIL appears to be in use.  Nevertheless, it is formally deprecated
   in Bison 2.4.2's NEWS entry, where a plan to phase it out is
   discussed.  */

#define YYFAIL		goto yyerrlab
#if defined YYFAIL
  /* This is here to suppress warnings from the GCC cpp's
     -Wunused-macros.  Normally we don't worry about that warning, but
     some users do, and we want to make it easy for users to remove
     YYFAIL uses, which will produce warnings from Bison 2.5.  */
#endif

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (parser_ctx, YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256

/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)                                \
    do                                                                  \
      if (YYID (N))                                                     \
        {                                                               \
          (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;        \
          (Current).first_column = YYRHSLOC (Rhs, 1).first_column;      \
          (Current).last_line    = YYRHSLOC (Rhs, N).last_line;         \
          (Current).last_column  = YYRHSLOC (Rhs, N).last_column;       \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).first_line   = (Current).last_line   =              \
            YYRHSLOC (Rhs, 0).last_line;                                \
          (Current).first_column = (Current).last_column =              \
            YYRHSLOC (Rhs, 0).last_column;                              \
        }                                                               \
    while (YYID (0))
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K])



/* This macro is provided for backward compatibility. */

#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (&yylval, YYLEX_PARAM)
#else
# define YYLEX yylex (&yylval, scanner)
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value, parser_ctx); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, expression_parser_context* parser_ctx)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep, parser_ctx)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
    expression_parser_context* parser_ctx;
#endif
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
  YYUSE (parser_ctx);
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, expression_parser_context* parser_ctx)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep, parser_ctx)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
    expression_parser_context* parser_ctx;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep, parser_ctx);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
#else
static void
yy_stack_print (yybottom, yytop)
    yytype_int16 *yybottom;
    yytype_int16 *yytop;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule, expression_parser_context* parser_ctx)
#else
static void
yy_reduce_print (yyvsp, yyrule, parser_ctx)
    YYSTYPE *yyvsp;
    int yyrule;
    expression_parser_context* parser_ctx;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       , parser_ctx);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule, parser_ctx); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULL, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  YYSIZE_T yysize1;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULL;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - Assume YYFAIL is not used.  It's too flawed to consider.  See
       <http://lists.gnu.org/archive/html/bison-patches/2009-12/msg00024.html>
       for details.  YYERROR is fine as it does not invoke this
       function.
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                yysize1 = yysize + yytnamerr (YY_NULL, yytname[yyx]);
                if (! (yysize <= yysize1
                       && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                  return 2;
                yysize = yysize1;
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  yysize1 = yysize + yystrlen (yyformat);
  if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
    return 2;
  yysize = yysize1;

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep, expression_parser_context* parser_ctx)
#else
static void
yydestruct (yymsg, yytype, yyvaluep, parser_ctx)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
    expression_parser_context* parser_ctx;
#endif
{
  YYUSE (yyvaluep);
  YYUSE (parser_ctx);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {
      case 32: /* STRING */
/* Line 1381 of yacc.c  */
#line 149 "src/core/qgsexpressionparser.yy"
	{ delete ((*yyvaluep).text); };
/* Line 1381 of yacc.c  */
#line 1284 "/tmp/qgsexpressionparser.cpp"
	break;
      case 33: /* COLUMN_REF */
/* Line 1381 of yacc.c  */
#line 149 "src/core/qgsexpressionparser.yy"
	{ delete ((*yyvaluep).text); };
/* Line 1381 of yacc.c  */
#line 1291 "/tmp/qgsexpressionparser.cpp"
	break;
      case 34: /* FUNCTION */
/* Line 1381 of yacc.c  */
#line 149 "src/core/qgsexpressionparser.yy"
	{ delete ((*yyvaluep).text); };
/* Line 1381 of yacc.c  */
#line 1298 "/tmp/qgsexpressionparser.cpp"
	break;
      case 35: /* SPECIAL_COL */
/* Line 1381 of yacc.c  */
#line 149 "src/core/qgsexpressionparser.yy"
	{ delete ((*yyvaluep).text); };
/* Line 1381 of yacc.c  */
#line 1305 "/tmp/qgsexpressionparser.cpp"
	break;
      case 43: /* expression */
/* Line 1381 of yacc.c  */
#line 147 "src/core/qgsexpressionparser.yy"
	{ delete ((*yyvaluep).node); };
/* Line 1381 of yacc.c  */
#line 1312 "/tmp/qgsexpressionparser.cpp"
	break;
      case 44: /* exp_list */
/* Line 1381 of yacc.c  */
#line 148 "src/core/qgsexpressionparser.yy"
	{ delete ((*yyvaluep).nodelist); };
/* Line 1381 of yacc.c  */
#line 1319 "/tmp/qgsexpressionparser.cpp"
	break;

      default:
	break;
    }
}




/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (expression_parser_context* parser_ctx)
#else
int
yyparse (parser_ctx)
    expression_parser_context* parser_ctx;
#endif
#endif
{
/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;

    /* Number of syntax errors so far.  */
    int yynerrs;

    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       `yyss': related to states.
       `yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yytoken = 0;
  yyss = yyssa;
  yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */
  yyssp = yyss;
  yyvsp = yyvs;
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;

	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),
		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss_alloc, yyss);
	YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
/* Line 1787 of yacc.c  */
#line 153 "src/core/qgsexpressionparser.yy"
    { parser_ctx->rootNode = (yyvsp[(1) - (1)].node); }
    break;

  case 3:
/* Line 1787 of yacc.c  */
#line 157 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 4:
/* Line 1787 of yacc.c  */
#line 158 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 5:
/* Line 1787 of yacc.c  */
#line 159 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 6:
/* Line 1787 of yacc.c  */
#line 160 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 7:
/* Line 1787 of yacc.c  */
#line 161 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 8:
/* Line 1787 of yacc.c  */
#line 162 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 9:
/* Line 1787 of yacc.c  */
#line 163 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 10:
/* Line 1787 of yacc.c  */
#line 164 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 11:
/* Line 1787 of yacc.c  */
#line 165 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 12:
/* Line 1787 of yacc.c  */
#line 166 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 13:
/* Line 1787 of yacc.c  */
#line 167 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 14:
/* Line 1787 of yacc.c  */
#line 168 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 15:
/* Line 1787 of yacc.c  */
#line 169 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 16:
/* Line 1787 of yacc.c  */
#line 170 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 17:
/* Line 1787 of yacc.c  */
#line 171 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 18:
/* Line 1787 of yacc.c  */
#line 172 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 19:
/* Line 1787 of yacc.c  */
#line 173 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 20:
/* Line 1787 of yacc.c  */
#line 174 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 21:
/* Line 1787 of yacc.c  */
#line 175 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = BINOP((yyvsp[(2) - (3)].b_op), (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); }
    break;

  case 22:
/* Line 1787 of yacc.c  */
#line 176 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeUnaryOperator((yyvsp[(1) - (2)].u_op), (yyvsp[(2) - (2)].node)); }
    break;

  case 23:
/* Line 1787 of yacc.c  */
#line 177 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = (yyvsp[(2) - (3)].node); }
    break;

  case 24:
/* Line 1787 of yacc.c  */
#line 180 "src/core/qgsexpressionparser.yy"
    {
          int fnIndex = QgsExpression::functionIndex(*(yyvsp[(1) - (4)].text));
          if (fnIndex == -1)
          {
            // this should not actually happen because already in lexer we check whether an identifier is a known function
            // (if the name is not known the token is parsed as a column)
            exp_error(parser_ctx, "Function is not known");
            YYERROR;
          }
          if ( QgsExpression::Functions()[fnIndex]->params() != -1
               && QgsExpression::Functions()[fnIndex]->params() != (yyvsp[(3) - (4)].nodelist)->count() )
          {
            exp_error(parser_ctx, "Function is called with wrong number of arguments");
            YYERROR;
          }
          (yyval.node) = new QgsExpression::NodeFunction(fnIndex, (yyvsp[(3) - (4)].nodelist));
          delete (yyvsp[(1) - (4)].text);
        }
    break;

  case 25:
/* Line 1787 of yacc.c  */
#line 199 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeInOperator((yyvsp[(1) - (5)].node), (yyvsp[(4) - (5)].nodelist), false);  }
    break;

  case 26:
/* Line 1787 of yacc.c  */
#line 200 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeInOperator((yyvsp[(1) - (6)].node), (yyvsp[(5) - (6)].nodelist), true); }
    break;

  case 27:
/* Line 1787 of yacc.c  */
#line 202 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = (yyvsp[(2) - (2)].node); }
    break;

  case 28:
/* Line 1787 of yacc.c  */
#line 203 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeUnaryOperator( QgsExpression::uoMinus, (yyvsp[(2) - (2)].node)); }
    break;

  case 29:
/* Line 1787 of yacc.c  */
#line 205 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeCondition((yyvsp[(2) - (3)].whenthenlist)); }
    break;

  case 30:
/* Line 1787 of yacc.c  */
#line 206 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeCondition((yyvsp[(2) - (5)].whenthenlist),(yyvsp[(4) - (5)].node)); }
    break;

  case 31:
/* Line 1787 of yacc.c  */
#line 209 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeColumnRef( *(yyvsp[(1) - (1)].text) ); delete (yyvsp[(1) - (1)].text); }
    break;

  case 32:
/* Line 1787 of yacc.c  */
#line 213 "src/core/qgsexpressionparser.yy"
    {
          int fnIndex = QgsExpression::functionIndex(*(yyvsp[(1) - (1)].text));
          if (fnIndex == -1)
          {
            if ( !QgsExpression::hasSpecialColumn( *(yyvsp[(1) - (1)].text) ) )
	    {
              exp_error(parser_ctx, "Special column is not known");
	      YYERROR;
	    }
	    // $var is equivalent to _specialcol_( "$var" )
	    QgsExpression::NodeList* args = new QgsExpression::NodeList();
	    QgsExpression::NodeLiteral* literal = new QgsExpression::NodeLiteral( *(yyvsp[(1) - (1)].text) );
	    args->append( literal );
	    (yyval.node) = new QgsExpression::NodeFunction( QgsExpression::functionIndex( "_specialcol_" ), args );
          }
	  else
	  {
	    (yyval.node) = new QgsExpression::NodeFunction( fnIndex, NULL );
	    delete (yyvsp[(1) - (1)].text);
	  }
        }
    break;

  case 33:
/* Line 1787 of yacc.c  */
#line 236 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeLiteral( QVariant((yyvsp[(1) - (1)].numberFloat)) ); }
    break;

  case 34:
/* Line 1787 of yacc.c  */
#line 237 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeLiteral( QVariant((yyvsp[(1) - (1)].numberInt)) ); }
    break;

  case 35:
/* Line 1787 of yacc.c  */
#line 238 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeLiteral( QVariant(*(yyvsp[(1) - (1)].text)) ); delete (yyvsp[(1) - (1)].text); }
    break;

  case 36:
/* Line 1787 of yacc.c  */
#line 239 "src/core/qgsexpressionparser.yy"
    { (yyval.node) = new QgsExpression::NodeLiteral( QVariant() ); }
    break;

  case 37:
/* Line 1787 of yacc.c  */
#line 243 "src/core/qgsexpressionparser.yy"
    { (yyval.nodelist) = (yyvsp[(1) - (3)].nodelist); (yyvsp[(1) - (3)].nodelist)->append((yyvsp[(3) - (3)].node)); }
    break;

  case 38:
/* Line 1787 of yacc.c  */
#line 244 "src/core/qgsexpressionparser.yy"
    { (yyval.nodelist) = new QgsExpression::NodeList(); (yyval.nodelist)->append((yyvsp[(1) - (1)].node)); }
    break;

  case 39:
/* Line 1787 of yacc.c  */
#line 248 "src/core/qgsexpressionparser.yy"
    { (yyval.whenthenlist) = (yyvsp[(1) - (2)].whenthenlist); (yyvsp[(1) - (2)].whenthenlist)->append((yyvsp[(2) - (2)].whenthen)); }
    break;

  case 40:
/* Line 1787 of yacc.c  */
#line 249 "src/core/qgsexpressionparser.yy"
    { (yyval.whenthenlist) = new QgsExpression::WhenThenList(); (yyval.whenthenlist)->append((yyvsp[(1) - (1)].whenthen)); }
    break;

  case 41:
/* Line 1787 of yacc.c  */
#line 253 "src/core/qgsexpressionparser.yy"
    { (yyval.whenthen) = new QgsExpression::WhenThen((yyvsp[(2) - (4)].node),(yyvsp[(4) - (4)].node)); }
    break;


/* Line 1787 of yacc.c  */
#line 1882 "/tmp/qgsexpressionparser.cpp"
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (parser_ctx, YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (parser_ctx, yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval, parser_ctx);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp, parser_ctx);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (parser_ctx, YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval, parser_ctx);
    }
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp, parser_ctx);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}


/* Line 2048 of yacc.c  */
#line 256 "src/core/qgsexpressionparser.yy"



// returns parsed tree, otherwise returns NULL and sets parserErrorMsg
QgsExpression::Node* parseExpression(const QString& str, QString& parserErrorMsg)
{
  expression_parser_context ctx;
  ctx.rootNode = 0;

  exp_lex_init(&ctx.flex_scanner);
  exp__scan_string(str.toUtf8().constData(), ctx.flex_scanner);
  int res = exp_parse(&ctx);
  exp_lex_destroy(ctx.flex_scanner);

  // list should be empty when parsing was OK
  if (res == 0) // success?
  {
    return ctx.rootNode;
  }
  else // error?
  {
    parserErrorMsg = ctx.errorMsg;
    return NULL;
  }
}


void exp_error(expression_parser_context* parser_ctx, const char* msg)
{
  parser_ctx->errorMsg = msg;
}

