# $OpenBSD: Makefile,v 1.30 2017/04/10 11:45:28 sthen Exp $

COMMENT=	burgertime clone for X

DISTNAME =	burgerspace-1.9.2

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/burgerspace.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += FLAC SDL SDL_image SDL_mixer c flatzebra-0.1
WANTLIB += iconv jpeg m mikmod ogg png pthread smpeg sndio ${LIBCXX} tiff
WANTLIB += usbhid vorbis vorbisfile z webp

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	converters/libiconv \
		devel/flatzebra>=0.1.6
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
