MULTI_PACKAGES=	-utils -main -perl -php -python

COMMENT-main=	GIS CGI server
COMMENT-utils=	mapserver utilities
COMMENT-php=	PHP Mapscript extension
COMMENT-perl=	Perl Mapscript binding
COMMENT-python=	Python Mapscript binding

V=		8.4.0
DISTNAME=	mapserver-${V}
PKGNAME-main=	mapserver-${V:S/-//}
PKGNAME-utils=	mapserver-utils-${V:S/-//}
PKGNAME-php=	php-mapscript-${V:S/-//}
PKGNAME-perl=	p5-mapscript-${V:S/-//}
PKGNAME-python=	py3-mapscript-${V:S/-//}

SHARED_LIBS +=	mapserver 8.0

CATEGORIES=	geo www

HOMEPAGE=	https://www.mapserver.org/

# MIT
PERMIT_PACKAGE=	Yes

MAINTAINER=	Landry Breuil <landry@openbsd.org>

SITES=		http://download.osgeo.org/mapserver/

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php lang/python devel/cmake
MODPHP_BUILDDEP=Yes
MODPHP_RUNDEP=	No
MODPY_SETUPTOOLS=	Yes
MODPY_DISTV=	${V:C/-beta.//:C/-rc.//}
CONFIGURE_STYLE=cmake

NO_TEST =	Yes

RUN_DEPENDS-main =	www/spawn-fcgi
RUN_DEPENDS-perl =	# empty
RUN_DEPENDS-php =	${MODPHP_RUN_DEPENDS}
RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS}
RUN_DEPENDS-utils =	# empty

BUILD_DEPENDS +=	devel/swig databases/postgresql,-server
BUILD_DEPENDS +=	devel/py-pip
BUILD_DEPENDS +=	devel/py-wheel

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

WANTLIB-main =	c curl fcgi freetype jpeg iconv m png pq xml2 z proj
WANTLIB-main +=	gdal geos_c cairo fribidi gif harfbuzz protobuf-c
WANTLIB-main +=	pcre2-posix pthread ${COMPILER_LIBCXX}
WANTLIB-utils =	c mapserver
WANTLIB-php =	mapserver
WANTLIB-perl =	c mapserver perl
WANTLIB-python =	mapserver ${MODPY_WANTLIB}

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
	${INSTALL_DATA}	${WRKSRC}/src/mapscript/${l}/examples/* \
		${PREFIX}/share/examples/mapserver/${l}
.endfor

.include <bsd.port.mk>
