# $OpenBSD: compiler.port.mk,v 1.5 2017/11/17 00:24:01 naddy Exp $
#
#  Copyright (c) 2017 Marc Espie
# 
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions
#  are met:
#  1. Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
#  2. Redistributions in binary form must reproduce the above copyright
#     notice, this list of conditions and the following disclaimer in the
#     documentation and/or other materials provided with the distribution.
#
#  THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND
#  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#  ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE
#  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
#  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
#  OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
#  HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
#  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
#  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
#  SUCH DAMAGE.
# 

.for c in ${COMPILER:L}
.  if "$c" == "base-gcc"
_COMPILER_ARCHS += ${GCC4_ARCHS}
.    if ${PROPERTIES:Mgcc4}
CHOSEN_COMPILER ?= base-gcc
.    endif
.  elif "$c" == "gcc3"
_COMPILER_ARCHS += ${GCC3_ARCHS}
.    if ${PROPERTIES:Mgcc3}
CHOSEN_COMPILER ?= gcc3
.    endif
.  elif "$c" == "base-clang"
_COMPILER_ARCHS += ${CLANG_ARCHS}
.    if ${PROPERTIES:Mclang}
CHOSEN_COMPILER ?= base-clang
.    endif
.  elif "$c" == "ports-gcc"
MODGCC4_ARCHS ?=	${GCC49_ARCHS}
_MODGCC4_ARCH_USES = 	No
_COMPILER_ARCHS += ${MODGCC4_ARCHS}
.    for _i in ${MODGCC4_ARCHS}
.      if !empty(MACHINE_ARCH:M${_i})
_MODGCC4_ARCH_USES = 	Yes
.      endif
.    endfor
.    if ${_MODGCC4_ARCH_USES:L} == "yes" && !defined(CHOSEN_COMPILER)
MODULES +=		gcc4
MODGCC4_LANGS +=	${COMPILER_LANGS}
CHOSEN_COMPILER = 	ports-gcc
.    endif
.  elif "$c" == "ports-clang"
MODCLANG_ARCHS ?=	${LLVM_ARCHS}
_MODCLANG_ARCH_USES = 	No
_COMPILER_ARCHS += ${MODCLANG_ARCHS}
.    for _i in ${MODCLANG_ARCHS}
.      if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_USES = 	Yes
.      endif
.    endfor
.    if ${_MODCLANG_ARCH_USES:L} == "yes" && !defined(CHOSEN_COMPILER)
MODULES +=		lang/clang
MODCLANG_LANGS +=	${COMPILER_LANGS}
CHOSEN_COMPILER = 	ports-clang
.    endif
.  else
ERRORS += "Fatal: unknown keyword $c in COMPILER"
CHOSEN_COMPILER = error
.  endif
.endfor

CHOSEN_COMPILER ?= none found
ONLY_FOR_ARCHS ?= ${_COMPILER_ARCHS}

.if ${CHOSEN_COMPILER:Mports-*} && ${COMPILER_LANGS:Mc++}
COMPILER_LIBCXX = ${LIBECXX}
.endif
