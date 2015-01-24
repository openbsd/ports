# $OpenBSD: Makefile,v 1.5 2015/01/24 20:32:59 juanfra Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.3

HOMEPAGE =		http://lzip.nongnu.org/plzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/plzip/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread stdc++

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
