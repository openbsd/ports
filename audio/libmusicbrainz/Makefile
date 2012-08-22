# $OpenBSD: Makefile,v 1.8 2012/08/22 20:14:06 naddy Exp $

COMMENT=		library for audio metadata lookup

DISTNAME=		libmusicbrainz-3.0.2
REVISION=		2

SHARED_LIBS=		musicbrainz3	0.0	# .6.1
CATEGORIES=		audio

HOMEPAGE=		http://musicbrainz.org/

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.musicbrainz.org/pub/musicbrainz/ \
			http://uk.musicbrainz.org/pub/musicbrainz/

MODULES=		converters/libiconv \
			devel/cmake

WANTLIB=		c m neon pthread stdc++

LIB_DEPENDS=		net/neon

USE_GMAKE=		Yes

CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -lm -lstdc++ -liconv -lpthread"

.include <bsd.port.mk>
