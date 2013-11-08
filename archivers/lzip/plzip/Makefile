# $OpenBSD: Makefile,v 1.2 2013/11/08 20:34:32 juanfra Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.1
REVISION =		0

HOMEPAGE =		http://lzip.nongnu.org/plzip.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lz m pthread stdc++

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
