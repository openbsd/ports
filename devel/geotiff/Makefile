COMMENT=	GIS TIFF interchange library

DISTNAME=	libgeotiff-1.7.4
CATEGORIES=	devel geo
SHARED_LIBS=	geotiff 3.2 # 6.0
WRKSRC=	${WRKDIR}/${DISTNAME:S/rc2//}
REVISION=	0

HOMEPAGE=	https://github.com/OSGeo/libgeotiff

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

SITES=			http://download.osgeo.org/geotiff/libgeotiff/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include -fPIC $(COPTS)" \
			LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS=		--with-jpeg=${LOCALBASE} \
			--with-proj=${LOCALBASE} \
			--with-libtiff=${LOCALBASE} \
			--with-libz

WANTLIB += ${COMPILER_LIBCXX} c crypto curl jpeg lzma m nghttp2
WANTLIB += nghttp3 ngtcp2 ngtcp2_crypto_libressl proj sqlite3 ssl
WANTLIB += tiff z zstd Lerc

LIB_DEPENDS=		devel/proj>=6 \
			graphics/tiff

.include <bsd.port.mk>
