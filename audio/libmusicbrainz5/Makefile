# $OpenBSD: Makefile,v 1.15 2019/07/12 20:43:35 sthen Exp $

PORTROACH=		limit:^5

COMMENT=		library for audio metadata lookup (v5)

V=			5.0.1
DISTNAME=		libmusicbrainz-${V}
PKGNAME=		libmusicbrainz5-${V}
REVISION =		5

SHARED_LIBS +=  musicbrainz5              0.0 # 0.0

CATEGORIES=		audio devel

HOMEPAGE=		http://musicbrainz.org/doc/libmusicbrainz

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += m neon ${COMPILER_LIBCXX}

MASTER_SITES=		https://github.com/downloads/metabrainz/libmusicbrainz/

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/cmake

NO_TEST=		Yes

LIB_DEPENDS=		net/neon

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/cmake/modules/FindNeon.cmake

.include <bsd.port.mk>
