# $OpenBSD: Makefile,v 1.11 2017/07/26 22:45:14 sthen Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.6
REVISION =		0

HOMEPAGE =		http://lzip.nongnu.org/plzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/plzip/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
