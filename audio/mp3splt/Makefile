# $OpenBSD: Makefile,v 1.5 2010/10/18 16:52:45 espie Exp $

COMMENT=	split mp3/ogg files without decoding
DISTNAME=	mp3splt-2.2.3

CATEGORIES=	audio

HOMEPAGE=	http://mp3splt.sourceforge.net/

MAINTAINER=	Armin Wolfermann <armin@wolfermann.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3splt/}

LIB_DEPENDS=	mp3splt::audio/libmp3splt

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
		USE_GROFF =	Yes

.include <bsd.port.mk>
