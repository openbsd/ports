COMMENT=	burgertime clone for X

DISTNAME =	burgerspace-1.9.4

CATEGORIES=	games

HOMEPAGE=	http://perso.b2b2c.ca/~sarrazip/dev/burgerspace.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC SDL SDL_image SDL_mixer c flatzebra-0.1
WANTLIB += iconv jpeg lzma m mikmod ogg png pthread smpeg sndio tiff
WANTLIB += usbhid vorbis vorbisfile webp z zstd

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://perso.b2b2c.ca/~sarrazip/dev/

LIB_DEPENDS=	converters/libiconv \
		devel/flatzebra>=0.1.7
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
