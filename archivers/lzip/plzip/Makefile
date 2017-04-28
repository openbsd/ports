# $OpenBSD: Makefile,v 1.9 2017/04/28 20:40:46 juanfra Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.6

HOMEPAGE =		http://lzip.nongnu.org/plzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/plzip/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread ${LIBCXX}

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
