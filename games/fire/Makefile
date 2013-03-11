# $OpenBSD: Makefile,v 1.15 2013/03/11 11:07:38 espie Exp $

COMMENT=	organic fireworks demo

DISTNAME=	fire-1.0
REVISION =	1
CATEGORIES=	games

HOMEPAGE=	http://www.libsdl.org/projects/fire/

MASTER_SITES=	${HOMEPAGE}/src/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xext c m pthread pthread-stubs usbhid xcb SDL

LIB_DEPENDS=	devel/sdl


SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fire
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fire

.include <bsd.port.mk>
