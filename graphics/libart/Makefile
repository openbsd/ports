# $OpenBSD: Makefile,v 1.5 2001/10/28 13:05:47 espie Exp $

COMMENT=	"high-performance 2D graphics library"

VERSION=	2.3.3
DISTNAME=	libart-${VERSION}
CATEGORIES=	graphics
NEED_VERSION=	1.435
MASTER_SITES=	http://www.artofcode.com/libart/

HOMEPAGE=	http://www.artofcode.com/libart.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/libart_lgpl-${VERSION}

.include <bsd.port.mk>
