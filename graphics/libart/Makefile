# $OpenBSD: Makefile,v 1.4 2001/09/01 00:39:07 brad Exp $

COMMENT=	"high-performance 2D graphics library"

VERSION=	2.3.3
DISTNAME=	libart-${VERSION}
CATEGORIES=	graphics
NEED_VERSION=	1.435
MASTER_SITES=	http://www.artofcode.com/libart/

HOMEPAGE=	http://www.artofcode.com/libart.html

MAINTAINER=	ports@openbsd.org

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
