# $OpenBSD: Makefile,v 1.30 2013/12/25 21:55:57 landry Exp $

MULTI_PACKAGES=	-utils -main -php -perl
SHARED_ONLY=	Yes

COMMENT-main=	GIS CGI server
COMMENT-utils=	mapserver utilities
COMMENT-php=	PHP Mapscript extension
COMMENT-perl=	Perl Mapscript binding

V =		6.4.0
DISTNAME=	mapserver-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-utils=	mapserver-utils-${V}
PKGNAME-php=	php-mapscript-${V}
PKGNAME-perl=	p5-mapscript-${V}
SHARED_LIBS +=	mapserver 1.0

CATEGORIES=	geo www

HOMEPAGE=	http://www.mapserver.org/
# MIT
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Landry Breuil <landry@openbsd.org>

MASTER_SITES=	http://download.osgeo.org/mapserver/

MODULES=	converters/libiconv lang/php devel/cmake
MODPHP_RUNDEP=	No
RUN_DEPENDS-php =	${MODPHP_RUN_DEPENDS}
BUILD_DEPENDS +=	devel/swig

LIB_DEPENDS=	devel/proj \
		devel/fribidi \
		graphics/cairo \
		geo/gdal \
		geo/geos \
		graphics/giflib \
		www/fcgi

WANTLIB += curl freetype jpeg m png pq xml2 z proj
WANTLIB += gdal geos_c cairo fribidi gif

LIB_DEPENDS-utils =	STEM->=${V}:${BUILD_PKGPATH},-main
LIB_DEPENDS-php =	STEM->=${V}:${BUILD_PKGPATH},-main
LIB_DEPENDS-perl =	STEM->=${V}:${BUILD_PKGPATH},-main
WANTLIB-main =	${WANTLIB} c fcgi pthread stdc++
WANTLIB-utils =	${WANTLIB} c mapserver pthread
WANTLIB-php =	${WANTLIB} mapserver
WANTLIB-perl =	${WANTLIB} mapserver perl

CONFIGURE_ARGS +=	-DPHP5_CONFIG_EXECUTABLE=${LOCALBASE}/bin/php-config-${MODPHP_VERSION} \
			-DWITH_CLIENT_WFS=1 \
			-DWITH_CLIENT_WMS=1 \
			-DWITH_CURL=1 \
			-DWITH_KML=1 \
			-DWITH_PHP=1 \
			-DWITH_PERL=1

PREFIX-main=	${VARBASE}/www

SUBST_VARS+=	PREFIX-main

post-extract:
	rm -f ${WRKSRC}/cmake/Find{PostgreSQL,ICONV}.cmake

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-main}/cgi-bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mapserver/perl

	${INSTALL_PROGRAM} ${PREFIX}/bin/mapserv ${WRKINST}/${PREFIX-main}/cgi-bin

	echo "; Enable Mapscript extension module\nextension=php_mapscript.so" \
		> ${PREFIX}/share/examples/php-${MODPHP_VERSION}/mapscript.ini

	${INSTALL_DATA}	${WRKSRC}/mapscript/perl/examples/* \
		${PREFIX}/share/examples/mapserver/perl

.include <bsd.port.mk>
