PORTROACH=		limit:^5

COMMENT=		library for audio metadata lookup (v5)

V=			5.1.0
DISTNAME=		libmusicbrainz-${V}
PKGNAME=		libmusicbrainz5-${V}
REVISION=		0

SHARED_LIBS +=  musicbrainz5              1.0 # 0.0

CATEGORIES=		audio devel

HOMEPAGE=		http://musicbrainz.org/doc/libmusicbrainz

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m neon xml2

SITES=			https://github.com/metabrainz/libmusicbrainz/releases/download/release-${V}/

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/cmake

NO_TEST=		Yes

LIB_DEPENDS=		net/neon \
			textproc/libxml

CXXFLAGS +=	-I${LOCALBASE}/include

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/cmake/modules/FindNeon.cmake

.include <bsd.port.mk>
