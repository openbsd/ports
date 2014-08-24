# $OpenBSD: Makefile,v 1.3 2014/08/24 13:25:55 kili Exp $

COMMENT =		clone of Doubleback, an intruder circling game

DISTNAME =		quadrupleback-0.1.0
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://sarrazip.com/dev/quadrupleback.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC SDL SDL_gfx SDL_image SDL_mixer c flatzebra-0.1
WANTLIB += jpeg m mikmod ogg png pthread smpeg sndio stdc++ tiff
WANTLIB += usbhid vorbis vorbisfile webp z

MASTER_SITES =		http://sarrazip.com/dev/

MODULES =		converters/libiconv
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/flatzebra \
			devel/sdl-gfx

FAKE_FLAGS =		docdir=${PREFIX}/share/doc/quadrupleback

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
