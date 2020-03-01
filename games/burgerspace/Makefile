# $OpenBSD: Makefile,v 1.36 2020/03/01 22:08:29 bcallah Exp $

COMMENT=	burgertime clone for X

DISTNAME =	burgerspace-1.9.3

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/burgerspace.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC SDL SDL_image SDL_mixer c flatzebra-0.1
WANTLIB += iconv jpeg m mikmod ogg png pthread smpeg sndio ${COMPILER_LIBCXX} tiff
WANTLIB += usbhid vorbis vorbisfile z webp

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	converters/libiconv \
		devel/flatzebra>=0.1.7
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
