# $OpenBSD: Makefile,v 1.26 2013/03/11 11:07:38 espie Exp $

COMMENT=	burgertime clone for X

DISTNAME=	burgerspace-1.9.0
REVISION=	0

CATEGORIES=	games

HOMEPAGE=	http://sarrazip.com/dev/burgerspace.html

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += FLAC SDL SDL_image SDL_mixer c flatzebra-0.1 iconv
WANTLIB += jpeg m mikmod ogg png pthread smpeg sndio stdc++ tiff
WANTLIB += usbhid vorbis vorbisfile z webp

MASTER_SITES=	http://sarrazip.com/dev/

LIB_DEPENDS=	devel/flatzebra>=0.1.5
RUN_DEPENDS=	devel/desktop-file-utils

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
