# $OpenBSD: Makefile,v 1.13 2018/10/01 21:33:47 juanfra Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.7
REVISION =		1

HOMEPAGE =		http://lzip.nongnu.org/plzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/plzip/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
