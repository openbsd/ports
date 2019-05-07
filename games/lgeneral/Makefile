# $OpenBSD: Makefile,v 1.19 2019/05/07 17:04:58 danj Exp $

COMMENT=	turn-based strategy engine

DISTNAME=	lgeneral-0.5.0
REVISION =	3
CATEGORIES=	games x11

HOMEPAGE=	http://lgeneral.sourceforge.net/

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xext c m pthread usbhid xcb \
			SDL SDL_mixer

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgeneral/}

LIB_DEPENDS=	devel/sdl \
		devel/sdl-mixer


AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CFLAGS += -fgnu89-inline

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lgeneral
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/lgeneral

.include <bsd.port.mk>
