# $OpenBSD: Makefile,v 1.26 2015/07/17 21:46:11 jasper Exp $

COMMENT=	texinfo to HTML converter

DISTNAME=	texi2html-1.82
CATEGORIES=	textproc
REVISION=	0

HOMEPAGE=	http://www.nongnu.org/texi2html/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=texi2html/}

CONFIGURE_STYLE= gnu

USE_GMAKE=	Yes

MAKE_FLAGS+=	texinfohtmldir=${PREFIX}/share/doc/texi2html

BUILD_DEPENDS =	textproc/p5-Text-Unidecode
RUN_DEPENDS =	textproc/p5-Text-Unidecode

.include <bsd.port.mk>
