# $OpenBSD: Makefile,v 1.16 2017/07/23 09:26:26 espie Exp $

PORTROACH=		limit:^3

COMMENT=		library for audio metadata lookup

DISTNAME=		libmusicbrainz-3.0.3
REVISION =		0

SHARED_LIBS=		musicbrainz3	0.0	# .6.1
CATEGORIES=		audio

HOMEPAGE=		http://musicbrainz.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += discid m neon ${COMPILER_LIBCXX}

MASTER_SITES=		ftp://ftp.musicbrainz.org/pub/musicbrainz/ \
			http://uk.musicbrainz.org/pub/musicbrainz/

MODULES=		devel/cmake

BUILD_DEPENDS=		devel/cppunit

LIB_DEPENDS=		audio/libdiscid \
			net/neon

NO_TEST=		Yes

.include <bsd.port.mk>
