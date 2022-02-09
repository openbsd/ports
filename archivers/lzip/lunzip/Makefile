# $OpenBSD: Makefile,v 1.14 2022/02/09 10:46:41 fcambus Exp $

COMMENT =		decompressor written in C for lzip files

DISTNAME =		lunzip-1.13

HOMEPAGE =		http://lzip.nongnu.org/lunzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lunzip/}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c

# All other lzip ports use .tar.lz by default.
EXTRACT_SUFX =		.tar.gz

.include <bsd.port.mk>
