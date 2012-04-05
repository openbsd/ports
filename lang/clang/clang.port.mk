# $OpenBSD: clang.port.mk,v 1.1.1.1 2012/04/05 18:28:16 sthen Exp $

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

BUILD_DEPENDS += devel/llvm
_MODCLANG_LINKS = clang gcc clang cc

.if ${MODCLANG_LANGS:L:Mc++}
_MODCLANG_LINKS += clang++ g++ clang++ c++
.endif

.if !empty(_MODCLANG_LINKS)
.  for _src _dest in ${_MODCLANG_LINKS}
MODCLANG_post-patch += ln -sf ${LOCALBASE}/bin/${_src} ${WRKDIR}/bin/${_dest};
.  endfor
.endif

