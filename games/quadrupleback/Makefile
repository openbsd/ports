# $OpenBSD: Makefile,v 1.12 2020/03/03 20:09:52 bcallah Exp $

COMMENT =		clone of Doubleback, an intruder circling game

DISTNAME =		quadrupleback-0.1.1
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		https://perso.b2b2c.ca/~sarrazip/dev/quadrupleback.html

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += FLAC SDL SDL_gfx SDL_image SDL_mixer c flatzebra-0.1 iconv
WANTLIB += jpeg m mikmod ogg png pthread smpeg sndio ${COMPILER_LIBCXX} tiff
WANTLIB += usbhid vorbis vorbisfile webp z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://perso.b2b2c.ca/~sarrazip/dev/

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		converters/libiconv \
			devel/flatzebra>=0.1.7 \
			devel/sdl-gfx

FAKE_FLAGS =		docdir=${PREFIX}/share/doc/quadrupleback

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
