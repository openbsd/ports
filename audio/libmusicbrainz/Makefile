# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:47 espie Exp $

COMMENT=		library for audio metadata lookup

DISTNAME=		libmusicbrainz-3.0.2
REVISION=		0

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

WANTLIB=		m neon stdc++

LIB_DEPENDS=		net/neon

USE_GMAKE=		Yes

CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -lm -lstdc++ -liconv"

.include <bsd.port.mk>
