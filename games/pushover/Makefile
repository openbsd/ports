# $OpenBSD: Makefile,v 1.1.1.1 2013/06/01 02:15:15 bentley Exp $

COMMENT =		puzzle game featuring dominoes

DISTNAME =		pushover-0.0.5

CATEGORIES =		games

HOMEPAGE =		http://pushover.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC SDL SDL_mixer SDL_ttf c freetype m mikmod ogg
WANTLIB += png pthread smpeg sndio stdc++ usbhid vorbis vorbisfile z
WANTLIB += ${MODLUA_WANTLIB}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pushover/}

MODULES =		devel/gettext \
			lang/lua
BUILD_DEPENDS =		devel/libtool
LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-ttf \
			graphics/png

CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			MODLUA_DEP=${MODLUA_DEP}

AUTOCONF_VERSION =	2.69

# prevent from linking against static libintl.a
post-patch:
	cp ${LOCALBASE}/share/aclocal/lib-link.m4 ${WRKSRC}/m4/

.include <bsd.port.mk>
