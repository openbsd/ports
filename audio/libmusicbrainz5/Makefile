# $OpenBSD: Makefile,v 1.5 2014/04/21 14:25:15 ajacoutot Exp $

COMMENT=		library for audio metadata lookup (v5)

V=			5.0.1
DISTNAME=		libmusicbrainz-${V}
PKGNAME=		libmusicbrainz5-${V}
REVISION=		1

SHARED_LIBS +=  musicbrainz5              0.0 # 0.0

CATEGORIES=		audio devel

HOMEPAGE=		http://musicbrainz.org/doc/libmusicbrainz

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m neon stdc++

MASTER_SITES=		https://github.com/downloads/metabrainz/libmusicbrainz/

MODULES=		devel/cmake

NO_TEST=		Yes

LIB_DEPENDS=		net/neon

CONFIGURE_ARGS=		-DCMAKE_BUILD_TYPE=Release

pre-configure:
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/cmake/modules/FindNeon.cmake

.include <bsd.port.mk>
