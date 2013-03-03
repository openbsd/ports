# $OpenBSD: Makefile,v 1.6 2013/03/03 15:14:25 bcallah Exp $

COMMENT =	extended client for The Mana World

V =		1.3.2.17
DISTNAME =	manaplus-${V}

CATEGORIES =	games x11

HOMEPAGE =	http://manaplus.evolonline.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL SDL SDL_gfx SDL_image SDL_mixer SDL_net SDL_ttf
WANTLIB += X11 c crypto curl guichan guichan_sdl idn m physfs
WANTLIB += png pthread ssl stdc++ xml2 z

MASTER_SITES =	http://download.evolonline.org/manaplus/download/${V}/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/gettext
RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-gfx \
		devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf \
		devel/guichan \
		devel/physfs \
		net/curl \
		textproc/libxml

USE_LIBTOOL = 		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-librt --without-internalguichan

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

FAKE_FLAGS +=		desktopdir=${PREFIX}/share/applications/

AUTOCONF_VERSION =	2.59
AUTOMAKE_VERSION =	1.9

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
