# $OpenBSD: Makefile,v 1.16 2015/10/13 06:29:38 bentley Exp $

COMMENT=	turn-based strategy engine

DISTNAME=	lgeneral-0.5.0
REVISION =	1
CATEGORIES=	games x11

HOMEPAGE=	http://lgeneral.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xext c m pthread pthread-stubs usbhid xcb \
			SDL SDL_mixer

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgeneral/}

LIB_DEPENDS=	devel/sdl \
		devel/sdl-mixer


AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lgeneral
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/lgeneral

.include <bsd.port.mk>
