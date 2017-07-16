# $OpenBSD: Makefile,v 1.10 2017/07/16 19:18:47 espie Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.6

HOMEPAGE =		http://lzip.nongnu.org/plzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/plzip/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
