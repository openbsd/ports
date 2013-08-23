# $OpenBSD: Makefile,v 1.24 2013/08/23 07:49:29 zhuk Exp $

COMMENT=	astrosmash clone for X

DISTNAME =	cosmosmash-1.4.7

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/cosmosmash.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL SDL_image SDL_mixer c flatzebra-0.1 m pthread stdc++
WANTLIB += FLAC jpeg mikmod ogg png smpeg sndio tiff usbhid
WANTLIB += vorbis vorbisfile webp z

MASTER_SITES=	http://sarrazip.com/dev/

MODULES =	converters/libiconv
LIB_DEPENDS =	devel/flatzebra>=0.1.6
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
