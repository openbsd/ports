# $OpenBSD: Makefile,v 1.73 2020/05/14 13:57:03 landry Exp $

MULTI_PACKAGES=	-utils -main -perl -php -python

COMMENT-main=	GIS CGI server
COMMENT-utils=	mapserver utilities
COMMENT-php=	PHP Mapscript extension
COMMENT-perl=	Perl Mapscript binding
COMMENT-python=	Python Mapscript binding

V =		7.6.0
DISTNAME=	mapserver-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-utils=	mapserver-utils-${V}
PKGNAME-php=	php-mapscript-${V}
PKGNAME-perl=	p5-mapscript-${V}
PKGNAME-python=	py3-mapscript-${V}

SHARED_LIBS +=	mapserver 5.0

CATEGORIES=	geo www

HOMEPAGE=	http://www.mapserver.org/

# MIT
PERMIT_PACKAGE=	Yes

MAINTAINER=	Landry Breuil <landry@openbsd.org>

MASTER_SITES=	http://download.osgeo.org/mapserver/

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php lang/python devel/cmake
MODPHP_RUNDEP=	No
MODPY_SETUPTOOLS=	Yes
MODPY_EGG_VERSION=	${V}
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
CONFIGURE_STYLE=cmake

NO_TEST =	Yes

RUN_DEPENDS-main =	www/spawn-fcgi
RUN_DEPENDS-perl =	# empty
RUN_DEPENDS-php =	${MODPHP_RUN_DEPENDS}
RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS}
RUN_DEPENDS-utils =	# empty

BUILD_DEPENDS +=	devel/swig databases/postgresql,-server

LIB_DEPENDS=	devel/proj \
		devel/fribidi \
		devel/harfbuzz \
		devel/protobuf-c \
		graphics/cairo \
		geo/gdal \
		geo/geos \
		graphics/giflib
LIB_DEPENDS-main=	${LIB_DEPENDS} \
		www/fcgi
LIB_DEPENDS-perl +=	${BUILD_PKGPATH},-main
LIB_DEPENDS-php +=	${BUILD_PKGPATH},-main
LIB_DEPENDS-utils +=	${BUILD_PKGPATH},-main
LIB_DEPENDS-python +=	${BUILD_PKGPATH},-main

WANTLIB += curl freetype jpeg m png pq xml2 z proj
WANTLIB += gdal geos_c cairo fribidi gif harfbuzz protobuf-c

WANTLIB-main =	${WANTLIB} c fcgi pthread ${COMPILER_LIBCXX}
WANTLIB-utils =	${WANTLIB} c mapserver
WANTLIB-php =	${WANTLIB} mapserver
WANTLIB-perl =	${WANTLIB} c mapserver perl
WANTLIB-python =	${WANTLIB} mapserver ${MODPY_WANTLIB}

CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN} \
			-DWITH_CLIENT_WFS=1 \
			-DWITH_CLIENT_WMS=1 \
			-DWITH_CURL=1 \
			-DWITH_KML=1 \
			-DWITH_SOS=1 \
			-DWITH_PYTHON=1 \
			-DWITH_PERL=1

CONFIGURE_ARGS += -DPHP_CONFIG_EXECUTABLE=${LOCALBASE}/bin/php-config-${MODPHP_VERSION} \
			-DWITH_PHPNG=1
PREFIX-main=	${VARBASE}/www

SUBST_VARS+=	PREFIX-main VARBASE

post-extract:
	rm -f ${WRKSRC}/cmake/Find{Freetype,PostgreSQL,ICONV}.cmake

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-main}/cgi-bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}

	${INSTALL_PROGRAM} ${PREFIX}/bin/mapserv ${WRKINST}/${PREFIX-main}/cgi-bin

	echo "; Enable Mapscript extension module\nextension=php_mapscriptng.so" \
		> ${PREFIX}/share/examples/php-${MODPHP_VERSION}/mapscriptng.ini

.for l in perl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mapserver/${l}
	${INSTALL_DATA}	${WRKSRC}/mapscript/${l}/examples/* \
		${PREFIX}/share/examples/mapserver/${l}
.endfor

.include <bsd.port.mk>
