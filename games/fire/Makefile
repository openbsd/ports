# $OpenBSD: Makefile,v 1.19 2019/07/12 21:02:20 sthen Exp $

COMMENT=	organic fireworks demo

DISTNAME=	fire-1.0
REVISION =	4
CATEGORIES=	games

HOMEPAGE=	http://www.libsdl.org/projects/fire/

MASTER_SITES=	${HOMEPAGE}/src/

PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext c m pthread usbhid xcb SDL

LIB_DEPENDS=	devel/sdl


SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fire
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fire

.include <bsd.port.mk>
