# $OpenBSD: Makefile,v 1.1.1.1 2013/10/14 21:23:34 juanfra Exp $

COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.1

HOMEPAGE =		http://lzip.nongnu.org/plzip.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread stdc++ lz

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
