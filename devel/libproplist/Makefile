# $OpenBSD: Makefile,v 1.32 2019/07/12 20:44:40 sthen Exp $

COMMENT=	GNUstep/OPENSTEP property lists compatibility library

V=		0.10.1
DISTNAME=	libPropList-${V}
PKGNAME=	libproplist-${V}
REVISION=	3
SHARED_LIBS=		PropList 2.2
MODGNU_SHARED_LIBS=	PropList ''

CATEGORIES=	devel

HOMEPAGE=	http://www.windowmaker.info/

PERMIT_PACKAGE=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libproplist
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libproplist

.include <bsd.port.mk>
