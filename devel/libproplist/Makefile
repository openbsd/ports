# $OpenBSD: Makefile,v 1.29 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT=	GNUstep/OPENSTEP property lists compatibility library

V=		0.10.1
DISTNAME=	libPropList-${V}
PKGNAME=	libproplist-${V}
REVISION=	2
SHARED_LIBS=		PropList 2.2
MODGNU_SHARED_LIBS=	PropList ''

CATEGORIES=	devel

HOMEPAGE=	http://www.windowmaker.info/

PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libproplist
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libproplist

.include <bsd.port.mk>
