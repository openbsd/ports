# $OpenBSD: Makefile,v 1.2 2001/05/06 05:05:47 lebel Exp $

COMMENT=	"high-performance 2D graphics library"

DISTNAME=	libart-2.3.3
CATEGORIES=	graphics
NEED_VERSION=	1.402
MASTER_SITES=	http://www.artofcode.com/libart/

HOMEPAGE=	http://www.levien.com/libart/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/libart_lgpl-2.3.3

pre-build:
	@chmod -R ugo-w ${WRKSRC}

.include <bsd.port.mk>
