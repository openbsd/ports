# $OpenBSD: Makefile,v 1.7 2000/01/06 16:36:20 jasoni Exp $

DISTNAME=	libPropList-0.9.1
PKGNAME=	libproplist-0.9.1	
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR= libs

NEED_VERSION=	1.73

MAINTAINER=	jasoni@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
USE_GMAKE=	yes

post-install:
	@mkdir -p ${PREFIX}/share/doc/libproplist
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libproplist

.include <bsd.port.mk>
