# $OpenBSD: Makefile,v 1.28 2017/07/26 22:45:20 sthen Exp $

COMMENT=	astrosmash clone for X

DISTNAME =	cosmosmash-1.4.7
REVISION =	0

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/cosmosmash.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread ${COMPILER_LIBCXX}
WANTLIB += FLAC iconv jpeg mikmod ogg png smpeg sndio tiff usbhid
WANTLIB += vorbis vorbisfile webp z

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS =	converters/libiconv \
		devel/flatzebra>=0.1.6
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
