# $OpenBSD: Makefile,v 1.14 2018/10/24 14:27:57 sthen Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.7
REVISION =		2

HOMEPAGE =		http://lzip.nongnu.org/plzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/plzip/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
