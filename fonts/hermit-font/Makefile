# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:12 sthen Exp $

COMMENT=	clear, readable monospaced font

TYPEFACE=	hermit
VERSION=	2.0
DISTNAME=	otf-hermit-${VERSION}
PKGNAME=	hermit-font-${VERSION}
CATEGORIES=	fonts x11

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE=	https://pcaro.es/p/hermit/
MASTER_SITES=	https://deftly.net/dist/
EXTRACT_SUFX=	.tar.gz

MODULES=	font

NO_BUILD=	Yes
NO_TEST=	Yes

FONTTYPES=	otf
FONT_DISTDIR=	${WRKDIR}

.include <bsd.port.mk>
