# $OpenBSD: Makefile,v 1.7 2015/05/22 11:31:10 ajacoutot Exp $

COMMENT=		library for audio metadata lookup (v5)

V=			5.0.1
DISTNAME=		libmusicbrainz-${V}
PKGNAME=		libmusicbrainz5-${V}
REVISION=		2

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

pre-configure:
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/cmake/modules/FindNeon.cmake

.include <bsd.port.mk>
