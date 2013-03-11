# $OpenBSD: Makefile,v 1.15 2013/03/11 11:07:39 espie Exp $

COMMENT=	turn-based strategy engine

DISTNAME=	lgeneral-0.5.0
REVISION =	0
CATEGORIES=	games x11

HOMEPAGE=	http://lgeneral.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

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
