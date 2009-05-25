# $OpenBSD: Makefile,v 1.3 2009/05/25 13:59:09 ajacoutot Exp $

COMMENT=		library for audio metadata lookup

DISTNAME=		libmusicbrainz-3.0.2

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
