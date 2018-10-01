# $OpenBSD: Makefile,v 1.10 2018/10/01 21:33:46 juanfra Exp $

COMMENT =		decompressor written in C for lzip files

DISTNAME =		lunzip-1.10
REVISION =		0

HOMEPAGE =		http://lzip.nongnu.org/lunzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lunzip/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

# All other lzip ports use .tar.lz by default.
EXTRACT_SUFX =		.tar.gz

.include <bsd.port.mk>
