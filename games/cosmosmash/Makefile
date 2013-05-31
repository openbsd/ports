# $OpenBSD: Makefile,v 1.23 2013/05/31 22:43:34 bentley Exp $

COMMENT=	astrosmash clone for X

DISTNAME =	cosmosmash-1.4.6

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/cosmosmash.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread stdc++
WANTLIB += FLAC iconv jpeg mikmod ogg png smpeg sndio tiff usbhid
WANTLIB += vorbis vorbisfile webp z

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS =	devel/flatzebra>=0.1.6
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
