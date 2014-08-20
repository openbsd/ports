/* A Bison parser, made by GNU Bison 2.6.2.  */

/* Bison interface for Yacc-like parsers in C
   
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

#ifndef EXP_HOME_PORTS_POBJ_QGIS_2_4_0_BUILD_AMD64_SRC_CORE_QGSEXPRESSIONPARSER_HPP
# define EXP_HOME_PORTS_POBJ_QGIS_2_4_0_BUILD_AMD64_SRC_CORE_QGSEXPRESSIONPARSER_HPP
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
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
     MOD = 273,
     CONCAT = 274,
     POW = 275,
     NOT = 276,
     IN = 277,
     NUMBER_FLOAT = 278,
     NUMBER_INT = 279,
     NULLVALUE = 280,
     CASE = 281,
     WHEN = 282,
     THEN = 283,
     ELSE = 284,
     END = 285,
     STRING = 286,
     COLUMN_REF = 287,
     FUNCTION = 288,
     SPECIAL_COL = 289,
     COMMA = 290,
     Unknown_CHARACTER = 291,
     UMINUS = 292
   };
#endif


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{
/* Line 2049 of yacc.c  */
#line 57 "/home/ports/pobj/qgis-2.4.0/qgis-2.4.0/src/core/qgsexpressionparser.yy"

  QgsExpression::Node* node;
  QgsExpression::NodeList* nodelist;
  double numberFloat;
  int    numberInt;
  QString* text;
  QgsExpression::BinaryOperator b_op;
  QgsExpression::UnaryOperator u_op;
  QgsExpression::WhenThen* whenthen;
  QgsExpression::WhenThenList* whenthenlist;


/* Line 2049 of yacc.c  */
#line 107 "/home/ports/pobj/qgis-2.4.0/build-amd64/src/core/qgsexpressionparser.hpp"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE exp_lval;

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int exp_parse (void *YYPARSE_PARAM);
#else
int exp_parse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int exp_parse (void);
#else
int exp_parse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !EXP_HOME_PORTS_POBJ_QGIS_2_4_0_BUILD_AMD64_SRC_CORE_QGSEXPRESSIONPARSER_HPP  */
