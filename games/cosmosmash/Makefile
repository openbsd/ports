# $OpenBSD: Makefile,v 1.33 2020/03/03 20:09:52 bcallah Exp $

COMMENT=	astrosmash clone for X

DISTNAME =	cosmosmash-1.4.8
REVISION =	0

CATEGORIES=	games

HOMEPAGE=	https://perso.b2b2c.ca/~sarrazip/dev/cosmosmash.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread ${COMPILER_LIBCXX}
WANTLIB += FLAC iconv jpeg mikmod ogg png smpeg sndio tiff usbhid
WANTLIB += vorbis vorbisfile webp z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://perso.b2b2c.ca/~sarrazip/dev/

LIB_DEPENDS =	converters/libiconv \
		devel/flatzebra>=0.1.7
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
