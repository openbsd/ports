# $OpenBSD: Makefile,v 1.18 2019/07/12 21:02:20 sthen Exp $

COMMENT=	voxel-style landscape rendering fly-by

DISTNAME=	newvox-1.0
REVISION =	3
CATEGORIES=	games

HOMEPAGE=	http://www.libsdl.org/projects/newvox/

MASTER_SITES=	${HOMEPAGE}/src/

PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext c m pthread usbhid xcb SDL

LIB_DEPENDS=	devel/sdl


SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/newvox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/newvox

.include <bsd.port.mk>
