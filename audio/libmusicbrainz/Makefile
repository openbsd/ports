# $OpenBSD: Makefile,v 1.10 2013/03/10 22:55:03 espie Exp $

COMMENT=		library for audio metadata lookup

DISTNAME=		libmusicbrainz-3.0.2
REVISION=		3

SHARED_LIBS=		musicbrainz3	0.0	# .6.1
CATEGORIES=		audio

HOMEPAGE=		http://musicbrainz.org/

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.musicbrainz.org/pub/musicbrainz/ \
			http://uk.musicbrainz.org/pub/musicbrainz/

MODULES=		devel/cmake

WANTLIB=		m neon stdc++

LIB_DEPENDS=		net/neon

.include <bsd.port.mk>
