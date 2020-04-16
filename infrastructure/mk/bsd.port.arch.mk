# $OpenBSD: bsd.port.arch.mk,v 1.14 2020/04/16 19:33:29 espie Exp $
#
# ex:ts=4 sw=4 filetype=make:
#
#	derived from bsd.port.mk in 2011
#	This file is in the public domain.
#	It is actually a part of bsd.port.mk that can be included early
#	for complicated MULTI_PACKAGES and ARCH-dependent cases.

# _guard against multiple inclusion for bsd.port.mk
_BSD_PORT_ARCH_MK_INCLUDED = Done

.if !defined(_ARCH_DEFINES_INCLUDED)
_ARCH_DEFINES_INCLUDED = Done
.  include "${PORTSDIR}/infrastructure/mk/arch-defines.mk"
.endif

.if !${PROPERTIES:Mdebuginfo}
DEBUG_PACKAGES =
DEBUG_FILES =
.endif

# early include of Makefile.inc
.if !defined(_MAKEFILE_INC_DONE)
.  if exists(${.CURDIR}/../Makefile.inc)
_MAKEFILE_INC_DONE = Yes
.    include "${.CURDIR}/../Makefile.inc"
.  endif
.endif

# needs multi-packages (and default subpackage) for the rest
.if !defined(MULTI_PACKAGES) || empty(MULTI_PACKAGES)
# XXX let's cheat so we always have MULTI_PACKAGES
MULTI_PACKAGES = -
SUBPACKAGE ?= -
.else
SUBPACKAGE ?= -main
.endif

# allow pseudo-flavors to make subpackages vanish.
.if defined(FLAVOR)
# XXX remove all extra pseudo flavors that remove stuff
BUILD_ONCE ?= No
.  if ${BUILD_ONCE:L} == "yes" && defined(PSEUDO_FLAVORS) && !${FLAVOR:Mbootstrap}
.    for f in ${FLAVOR:Mno_*}
.      if ${PSEUDO_FLAVORS:M$f}
FLAVOR := ${FLAVOR:N$f}
.      endif
.    endfor
.  endif
.endif

# build the actual list of subpackages we want
BUILD_PACKAGES =

.for _s in ${MULTI_PACKAGES}

# ONLY_FOR_ARCHS/NOT_FOR_ARCHS are special:
# being undefined is different from being empty
.  if defined(ONLY_FOR_ARCHS)
ONLY_FOR_ARCHS${_s} ?= ${ONLY_FOR_ARCHS}
.  endif
.  if defined(NOT_FOR_ARCHS)
NOT_FOR_ARCHS${_s} ?= ${NOT_FOR_ARCHS}
.  endif

IGNORE${_s} ?=
IGNORE${_s} += ${IGNORE}
.  for _T in ${_s:S/^-/no_/}
.    if defined(FLAVOR) && ${FLAVOR:M${_T}}
IGNORE${_s} += "Ignored as FLAVOR contains ${FLAVOR:M${_T}}"
.    endif
.  endfor

# compute _ARCH_OK for ignore
.  if defined(ONLY_FOR_ARCHS${_s})
.    for A B in ${MACHINE_ARCH} ${ARCH}
.      if empty(ONLY_FOR_ARCHS${_s}:M$A) && empty(ONLY_FOR_ARCHS${_s}:M$B)
.        if ${MACHINE_ARCH} == "${ARCH}"
IGNORE${_s} += "is only for ${ONLY_FOR_ARCHS${_s}}, not ${MACHINE_ARCH}"
.        else
IGNORE${_s} += "is only for ${ONLY_FOR_ARCHS${_s}}, not ${MACHINE_ARCH} \(${ARCH}\)"
.        endif
.      endif
.    endfor
.  endif
.  if defined(NOT_FOR_ARCHS${_s})
.    for A B in ${MACHINE_ARCH} ${ARCH}
.      if !empty(NOT_FOR_ARCHS${_s}:M$A) || !empty(NOT_FOR_ARCHS${_s}:M$B)
IGNORE${_s} += "is not for ${NOT_FOR_ARCHS${_s}}"
.      endif
.    endfor
.  endif


# allow subpackages to vanish on architectures that don't
# support them
.  if empty(IGNORE${_s})
BUILD_PACKAGES += ${_s}
.  endif
.endfor

