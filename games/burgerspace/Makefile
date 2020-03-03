# $OpenBSD: Makefile,v 1.37 2020/03/03 20:09:52 bcallah Exp $

COMMENT=	burgertime clone for X

DISTNAME =	burgerspace-1.9.3
REVISION =	0

CATEGORIES=	games

HOMEPAGE=	https://perso.b2b2c.ca/~sarrazip/dev/burgerspace.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC SDL SDL_image SDL_mixer c flatzebra-0.1
WANTLIB += iconv jpeg m mikmod ogg png pthread smpeg sndio ${COMPILER_LIBCXX} tiff
WANTLIB += usbhid vorbis vorbisfile z webp

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://perso.b2b2c.ca/~sarrazip/dev/

LIB_DEPENDS=	converters/libiconv \
		devel/flatzebra>=0.1.7
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
