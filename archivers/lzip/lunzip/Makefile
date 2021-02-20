# $OpenBSD: Makefile,v 1.13 2021/02/20 13:17:16 fcambus Exp $

COMMENT =		decompressor written in C for lzip files

DISTNAME =		lunzip-1.12

HOMEPAGE =		http://lzip.nongnu.org/lunzip.html
MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lzip/lunzip/}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c

# All other lzip ports use .tar.lz by default.
EXTRACT_SUFX =		.tar.gz

.include <bsd.port.mk>
