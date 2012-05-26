# $OpenBSD: clang.port.mk,v 1.2 2012/05/26 09:13:43 jasper Exp $

MODCLANG_VERSION=	3.1

MODCLANG_ARCHS ?=
MODCLANG_LANGS ?=

.if !${MODCLANG_LANGS:L:Mc}
# Always include support for this
MODCLANG_LANGS += c
.endif

_MODCLANG_OKAY = c c++
.for _l in ${MODCLANG_LANGS:L}
.  if !${_MODCLANG_OKAY:M${_l}}
ERRORS += "Fatal: unknown language ${_l}"
.  endif
.endfor

BUILD_DEPENDS += devel/llvm>=${MODCLANG_VERSION}
_MODCLANG_LINKS = clang gcc clang cc

.if ${MODCLANG_LANGS:L:Mc++}
_MODCLANG_LINKS += clang++ g++ clang++ c++
.endif

.if !empty(_MODCLANG_LINKS)
.  for _src _dest in ${_MODCLANG_LINKS}
MODCLANG_post-patch += ln -sf ${LOCALBASE}/bin/${_src} ${WRKDIR}/bin/${_dest};
.  endfor
.endif

SUBST_VARS+=	MODCLANG_VERSION
