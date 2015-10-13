# $OpenBSD: Makefile,v 1.15 2015/10/13 06:29:38 bentley Exp $

COMMENT=	voxel-style landscape rendering fly-by

DISTNAME=	newvox-1.0
REVISION =	1
CATEGORIES=	games

HOMEPAGE=	http://www.libsdl.org/projects/newvox/

MASTER_SITES=	${HOMEPAGE}/src/

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xext c m pthread pthread-stubs usbhid xcb SDL

LIB_DEPENDS=	devel/sdl


SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/newvox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/newvox

.include <bsd.port.mk>
