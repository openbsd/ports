# $OpenBSD: Makefile,v 1.10 2020/04/05 13:01:54 jasper Exp $

COMMENT =		puzzle game featuring dominoes

DISTNAME =		pushover-0.0.5
REVISION =		4

CATEGORIES =		games

HOMEPAGE =		http://pushover.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += FLAC SDL SDL_mixer SDL_ttf c freetype iconv intl m mikmod ogg
WANTLIB += png pthread smpeg sndio ${COMPILER_LIBCXX} usbhid vorbis vorbisfile z
WANTLIB += ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pushover/}

MODULES =		lang/lua
BUILD_DEPENDS =		devel/libtool
# requires aclocal/lib-link.m4
BUILD_DEPENDS +=	devel/gettext,-tools
LIB_DEPENDS =		devel/gettext,-runtime \
			devel/sdl-mixer \
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
