# $OpenBSD: Makefile,v 1.8 2000/02/05 03:51:27 brad Exp $

DISTNAME=	libPropList-0.9.1
PKGNAME=	libproplist-0.9.1	
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR= libs

NEED_VERSION=	1.73

MAINTAINER=	jasoni@openbsd.org

USE_GMAKE=	yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libproplist
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libproplist

.include <bsd.port.mk>
