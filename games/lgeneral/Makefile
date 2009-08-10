# $OpenBSD: Makefile,v 1.11 2009/08/10 06:31:42 kili Exp $

COMMENT=	turn-based strategy engine

DISTNAME=	lgeneral-0.5.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

HOMEPAGE=	http://lgeneral.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c m pthread pthread-stubs usbhid xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgeneral/}

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lgeneral
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/lgeneral

.include <bsd.port.mk>
