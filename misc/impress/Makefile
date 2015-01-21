# $OpenBSD: Makefile,v 1.15 2015/01/21 06:23:34 bentley Exp $

COMMENT=	publishing and presentation tool

VERSION=	1.1b9
DISTNAME=	impress-${VERSION}
REVISION=	2
DISTFILES=	imp${VERSION}.tar.gz
CATEGORIES=	misc

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ntlug.org/~ccox/impress/

PERMIT_PACKAGE_CDROM=   Yes

MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}

NO_TEST=	Yes

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/src/impress.tcl

.include <bsd.port.mk>
