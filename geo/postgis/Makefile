# $OpenBSD: Makefile,v 1.60 2020/08/23 06:16:22 landry Exp $

V =	3.0.2
COMMENT=	geographic objects support for PostgreSQL
DISTNAME=	postgis-${V}
CATEGORIES=	geo databases

SHARED_LIBS +=	lwgeom 0.0 lwgeom-3.0 0.0 # 4.0

HOMEPAGE=	http://www.postgis.net/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c charset crypto curl expat freexl gdal geos geos_c geotiff gif iconv intl
WANTLIB += jasper jpeg json-c lzma m nghttp2 openjp2 pcre png pq>=5.3 protobuf-c zstd
WANTLIB += proj pthread qhull spatialite sqlite3 ssl ${COMPILER_LIBCXX} tiff webp xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://download.osgeo.org/postgis/source/

MODULES =	databases/postgresql

LIB_DEPENDS=	databases/sqlite3 \
		geo/gdal \
		devel/proj \
		devel/gettext,-runtime \
		devel/protobuf-c \
		devel/json-c
RUN_DEPENDS=	databases/postgresql,-server
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/cunit \
		textproc/docbook-xsl \
		textproc/wdg-sgml-lib \
		graphics/ImageMagick
TEST_DEPENDS =	devel/cunit

USE_GMAKE=	Yes
USE_LIBTOOL =	Yes
#for iconv.h
CONFIGURE_ENV=	LDFLAGS=-L${LOCALBASE}/lib \
		CFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-xsldir=${PREFIX}/share/xsl/docbook/ \
		--libdir=${PREFIX}/lib/postgresql

SUBST_VARS +=	V
DOCDIR =	${PREFIX}/share/doc/postgresql/postgis/

post-install:
	cd ${WRKSRC}/doc && WRKINST=${WRKINST} ${MAKE_PROGRAM} docs-install man-install
	${INSTALL_DATA_DIR} ${DOCDIR}/images/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/style.css ${DOCDIR}/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/images/* ${DOCDIR}/images/

.include <bsd.port.mk>
