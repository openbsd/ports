# $OpenBSD: Makefile,v 1.32 2014/06/14 10:34:44 sthen Exp $

COMMENT-main =	translator library for geospatial data formats
COMMENT-python =python bindings and utilities for GDAL
COMMENT-perl =	perl bindings for GDAL

V =		1.11.0
DISTNAME =	gdal-${V}
SHARED_ONLY =	Yes

PKGNAME-main =	${DISTNAME}
PKGNAME-python =py-${DISTNAME}
PKGNAME-perl =	p5-Geo-GDAL-${V}
REVISION-perl =	0

SHARED_LIBS =	gdal 21.0 #19.0
CATEGORIES =	geo devel

HOMEPAGE =	http://www.gdal.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	http://download.osgeo.org/gdal/${V}/

MODULES =	perl lang/python devel/gettext

MULTI_PACKAGES =	-main -python -perl

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			graphics/tiff \
			net/curl \
			databases/postgresql \
			geo/geos \
			geo/spatialite/libspatialite \
			devel/libidn \
			devel/json-c \
			graphics/png \
			graphics/giflib \
			graphics/jpeg \
			graphics/jasper \
			graphics/openjp2 \
			devel/pcre \
			devel/proj \
			devel/geotiff

WANTLIB-main =		${WANTLIB} c expat m stdc++ z tiff openjp2 ssl crypto \
			curl pq geos geos_c idn png gif jpeg jasper json-c geotiff \
			proj pthread freexl pcre spatialite sqlite3 xml2


LIB_DEPENDS-python =	${PKGNAME}:${BASE_PKGPATH},-main
WANTLIB-python =	${MODPY_WANTLIB} gdal m pthread stdc++

LIB_DEPENDS-perl =	${PKGNAME}:${BASE_PKGPATH},-main
WANTLIB-perl =		gdal crypto curl expat geos_c geotiff gif idn \
			jasper jpeg openjp2 m png pq ssl tiff z pthread \
			json-c freexl pcre spatialite sqlite3 xml2 \
			${MODGETTEXT_WANTLIB}

RUN_DEPENDS +=		math/py-numpy
BUILD_DEPENDS +=	${RUN_DEPENDS} devel/swig

MODPY_SETUPTOOLS =	Yes
MODPY_EGG_VERSION =	${V}
MODPY_ADJ_FILES =	swig/python/scripts/*.py

MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	LIBTOOL_FINISH=:
USE_GMAKE =	Yes
NO_TEST =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
		--without-cfitsio \
		--without-netcdf \
		--without-xerces \
		--without-mysql \
		--without-odbc \
		--without-oci \
		--without-grass \
		--without-idb \
		--without-sde \
		--without-libgrass \
		--without-php \
		--without-ruby \
		--with-pg=${LOCALBASE}/bin/pg_config \
		--with-python \
		--with-perl \
		--with-geos \
		--with-freexl=${LOCALBASE} \
		--with-spatialite=${LOCALBASE} \
		--with-png=${LOCALBASE} \
		--with-geotiff=${LOCALBASE} \
		--with-libtiff=${LOCALBASE} \
		--with-curl=${LOCALBASE} \
		--with-gif=${LOCALBASE} \
		--with-jpeg=${LOCALBASE} \
		--with-libjson-c=${LOCALBASE} \
		--with-jasper=${LOCALBASE}

.include <bsd.port.mk>
