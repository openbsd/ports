# $OpenBSD: Makefile,v 1.8 2017/11/16 03:33:09 bentley Exp $

COMMENT=	clear, readable monospaced font

TYPEFACE=	hermit
VERSION=	1.21
DISTNAME=	otf-hermit-${VERSION}
PKGNAME=	hermit-font-${VERSION}
CATEGORIES=	fonts x11
REVISION=	1

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE=	https://pcaro.es/p/hermit/
MASTER_SITES=	https://pcaro.es/d/
EXTRACT_SUFX=	.tar.gz

MODULES=	font

NO_BUILD=	Yes
NO_TEST=	Yes

FONTTYPES=	otf
FONT_DISTDIR=	${WRKDIR}

.include <bsd.port.mk>
