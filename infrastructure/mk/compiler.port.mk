# $OpenBSD: compiler.port.mk,v 1.2 2017/06/03 15:02:26 espie Exp $
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
.  if "$c" == "base"
.  elif "$c" == "gcc" || "$c" == "gcc4" || "$c" == "gcc-only"
.    if !defined(CHOSEN_COMPILER)
MODGCC4_ARCHS ?=	*
_MODGCC4_ARCH_USES = 	No
.      if ${MODGCC4_ARCHS} != ""
.        for _i in ${MODGCC4_ARCHS}
.          if !empty(MACHINE_ARCH:M${_i})
_MODGCC4_ARCH_USES = 	Yes
.          endif
.        endfor
.      endif
.      if ${_MODGCC4_ARCH_USES:L} == "yes"
MODULES +=		gcc4
MODGCC4_LANGS +=	${COMPILER_LANGS}
CHOSEN_COMPILER = 	gcc
.      endif
.    endif
.  elif "$c" == "clang"
.    if !defined(CHOSEN_COMPILER)
MODCLANG_ARCHS ?=	*
_MODCLANG_ARCH_USES = 	No
.      if ${MODCLANG_ARCHS} != ""
.        for _i in ${MODCLANG_ARCHS}
.          if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_USES = 	Yes
.          endif
.        endfor
.      endif
.      if ${_MODCLANG_ARCH_USES:L} == "yes"
MODULES +=		lang/clang
MODCLANG_LANGS +=	${COMPILER_LANGS}
CHOSEN_COMPILER = 	clang
.      endif
.    endif
.  else
ERRORS += "Fatal: unknown keyword $c in COMPILER"
CHOSEN_COMPILER = error
.  endif
.endfor
# okay we went through, we didn't find anything
CHOSEN_COMPILER ?= old
