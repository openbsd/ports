# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:36 sthen Exp $

COMMENT=	split mp3/ogg files without decoding
DISTNAME=	mp3splt-2.2.3
REVISION=	0

CATEGORIES=	audio

HOMEPAGE=	http://mp3splt.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c mp3splt

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3splt/}

LIB_DEPENDS=	audio/libmp3splt

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
