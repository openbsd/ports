# $OpenBSD: Makefile,v 1.1.1.1 2008/03/25 09:19:23 jasper Exp $

COMMENT=		library for audio metadata lookup

DISTNAME=		libmusicbrainz-3.0.1
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

WANTLIB=		m stdc++

LIB_DEPENDS=		neon::net/neon

USE_GMAKE=		Yes

CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -lm -lstdc++ -liconv"

.include <bsd.port.mk>
