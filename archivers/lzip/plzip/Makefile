# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:29 sthen Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.8

HOMEPAGE =		http://lzip.nongnu.org/plzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/plzip/}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
