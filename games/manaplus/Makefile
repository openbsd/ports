# $OpenBSD: Makefile,v 1.36 2014/04/13 20:04:57 bcallah Exp $

COMMENT =	extended client for The Mana World

V =		1.4.4.12
DISTNAME =	manaplus-${V}
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	games x11

HOMEPAGE =	http://manaplus.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 c crypto curl idn m physfs png pthread ssl stdc++ xml2 z

MASTER_SITES =	http://download.evolonline.org/manaplus/download/${V}/

FLAVORS =	sdl2
FLAVOR ?=

MODULES =	devel/gettext
RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	devel/physfs \
		net/curl \
		textproc/libxml

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS =	--without-librt

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

.if ${FLAVOR:Msdl2}
WANTLIB += SDL2 SDL2_gfx SDL2_image SDL2_mixer SDL2_net SDL2_ttf

LIB_DEPENDS +=	devel/sdl2-gfx \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-net \
		devel/sdl2-ttf

CONFIGURE_ARGS +=	--with-sdl2 --without-internalsdlgfx
.else
WANTLIB += SDL SDL_gfx SDL_image SDL_mixer SDL_net SDL_ttf

LIB_DEPENDS +=	devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf

RUN_DEPENDS +=	x11/xsel
.endif

FAKE_FLAGS +=		desktopdir=${PREFIX}/share/applications/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9

WRKDIST =	${WRKDIR}/manaplus-${V}

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
