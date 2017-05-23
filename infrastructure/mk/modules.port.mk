# $OpenBSD: modules.port.mk,v 1.10 2017/05/23 15:12:28 espie Exp $
#
#  Copyright (c) 2001 Marc Espie
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
# Recursive module support
#

.undef _MODULES_KEEP_GOING
.for _m in ${MODULES:L}
.  if "${_m:M*/*}" != ""
.    for _d in ${PORTSDIR_PATH:S/:/ /g}
.      if empty(_MODULES_DONE:M${_m}) && exists(${_d}/${_m}/${_m:T}.port.mk)
.        include "${_d}/${_m}/${_m:T}.port.mk"
_MODULES_DONE += ${_m}
_MODULES_KEEP_GOING = Yep
.      endif
.    endfor
.  endif
.  if empty(_MODULES_DONE:M${_m})
.    if exists(${PORTSDIR}/infrastructure/mk/${_m}.port.mk)
.      include "${PORTSDIR}/infrastructure/mk/${_m}.port.mk"
_MODULES_DONE += ${_m}
_MODULES_KEEP_GOING = Yep
.    else
ERRORS += "Fatal: Missing support for module ${_m}."
.    endif
.  endif
.endfor

# support for preferred compiler
.if defined(WANT_CXX) && !defined(CHOSEN_CXX)
.  for c in ${WANT_CXX:L}
.    if "$c" == "base"
.      if ${PROPERTIES:Mclang}
CHOSEN_CXX ?= base
.      endif
.    elif "$c" == "gcc"
.      if !defined(CHOSEN_CXX)
MODGCC4_ARCHS ?=	*
_MODGCC4_ARCH_USES = 	No

.        if ${MODGCC4_ARCHS} != ""
.          for _i in ${MODGCC4_ARCHS}
.            if !empty(MACHINE_ARCH:M${_i})
_MODGCC4_ARCH_USES = 	Yes
.            endif
.          endfor
.        endif

.        if ${_MODGCC4_ARCH_USES:L} == "yes"
MODULES +=		gcc4
MODGCC4_LANGS ?=	c c++
CHOSEN_CXX = 		gcc
_MODULES_KEEP_GOING = 	Yep
.        endif
.      endif
.    elif "$c" == "clang"
.      if !defined(CHOSEN_CXX)
MODCLANG_ARCHS ?=	*
_MODCLANG_ARCH_USES = 	No

.        if ${MODCLANG_ARCHS} != ""
.          for _i in ${MODCLANG_ARCHS}
.            if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_USES = 	Yes
.            endif
.          endfor
.        endif

.        if ${_MODCLANG_ARCH_USES:L} == "yes"
MODULES +=		lang/clang
MODCLANG_LANGS ?=	c c++
CHOSEN_CXX = 		clang
_MODULES_KEEP_GOING = 	Yep
.        endif
.      endif
.    else
ERRORS += "Fatal: unknown keyword $c in WANT_CXX"
CHOSEN_CXX = error
.    endif
.  endfor
ONLY_FOR_ARCHS ?= $(CXX11_ARCHS)
.endif


# Tail recursion
.if defined(_MODULES_KEEP_GOING)
.  include "${PORTSDIR}/infrastructure/mk/modules.port.mk"
.endif
