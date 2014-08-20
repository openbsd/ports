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

#ifndef RASTER_HOME_PORTS_POBJ_QGIS_2_4_0_BUILD_AMD64_SRC_ANALYSIS_QGSRASTERCALCPARSER_HPP
# define RASTER_HOME_PORTS_POBJ_QGIS_2_4_0_BUILD_AMD64_SRC_ANALYSIS_QGSRASTERCALCPARSER_HPP
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int rasterdebug;
#endif

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     RASTER_BAND_REF = 258,
     NUMBER = 259,
     FUNCTION = 260,
     AND = 261,
     OR = 262,
     NE = 263,
     GE = 264,
     LE = 265,
     UMINUS = 266
   };
#endif


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{
/* Line 2049 of yacc.c  */
#line 52 "/home/ports/pobj/qgis-2.4.0/qgis-2.4.0/src/analysis/raster/qgsrastercalcparser.yy"
 QgsRasterCalcNode* node; double number; QgsRasterCalcNode::Operator op;

/* Line 2049 of yacc.c  */
#line 71 "/home/ports/pobj/qgis-2.4.0/build-amd64/src/analysis/qgsrastercalcparser.hpp"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE rasterlval;

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int rasterparse (void *YYPARSE_PARAM);
#else
int rasterparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int rasterparse (void);
#else
int rasterparse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !RASTER_HOME_PORTS_POBJ_QGIS_2_4_0_BUILD_AMD64_SRC_ANALYSIS_QGSRASTERCALCPARSER_HPP  */
