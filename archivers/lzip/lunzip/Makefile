# $OpenBSD: Makefile,v 1.4 2014/04/18 21:53:54 juanfra Exp $

COMMENT =		decompressor written in C for lzip files

DISTNAME =		lunzip-1.5

HOMEPAGE =		http://lzip.nongnu.org/lunzip.html

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lunzip/}

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

# All other lzip ports use .tar.lz by default.
EXTRACT_SUFX =		.tar.gz

.include <bsd.port.mk>
