# $OpenBSD: Makefile,v 1.14 2013/03/11 11:07:40 espie Exp $

COMMENT=	voxel-style landscape rendering fly-by

DISTNAME=	newvox-1.0
REVISION =	0
CATEGORIES=	games

HOMEPAGE=	http://www.libsdl.org/projects/newvox/

MASTER_SITES=	${HOMEPAGE}/src/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xext c m pthread pthread-stubs usbhid xcb SDL

LIB_DEPENDS=	devel/sdl


SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/newvox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/newvox

.include <bsd.port.mk>
