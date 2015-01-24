# $OpenBSD: Makefile,v 1.10 2015/01/24 11:07:57 schwarze Exp $

COMMENT=	split mp3/ogg files without decoding
DISTNAME=	mp3splt-2.2.3

CATEGORIES=	audio

HOMEPAGE=	http://mp3splt.sourceforge.net/

MAINTAINER=	Armin Wolfermann <armin@wolfermann.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c mp3splt

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3splt/}

LIB_DEPENDS=	audio/libmp3splt

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
