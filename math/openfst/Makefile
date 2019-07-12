# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:43 sthen Exp $

COMMENT =		weighted finite-state transducers library

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME =		openfst-1.6.9

SHARED_LIBS +=		fst                       1.0 # 0.0
SHARED_LIBS +=		fstscript                 1.0 # 0.0

CATEGORIES =		math devel textproc

HOMEPAGE =		http://www.openfst.org/twiki/bin/view/FST/WebHome

# Apache 2.0
PERMIT_PACKAGE =		Yes

WANTLIB +=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://www.openfst.org/twiki/pub/FST/FstDownload/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
