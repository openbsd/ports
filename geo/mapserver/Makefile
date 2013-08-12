# $OpenBSD: Makefile,v 1.28 2013/08/12 04:11:20 robert Exp $

MULTI_PACKAGES=	-utils -main -php -perl
SHARED_ONLY=	Yes

COMMENT-main=	GIS CGI server
COMMENT-utils=	mapserver utilities
COMMENT-php=	PHP Mapscript extension
COMMENT-perl=	Perl Mapscript binding

V =		6.2.1
DISTNAME=	mapserver-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-utils=	mapserver-utils-${V}
PKGNAME-php=	php-mapscript-${V}
PKGNAME-perl=	p5-mapscript-${V}
SHARED_LIBS +=	mapserver 0.0# 0.0
REVISION-php =	0

CATEGORIES=	geo www

HOMEPAGE=	http://www.mapserver.org/
# MIT
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Landry Breuil <landry@openbsd.org>

MASTER_SITES=	http://download.osgeo.org/mapserver/

MODULES=	devel/gettext lang/php
MODPHP_RUNDEP=	No

LIB_DEPENDS=	devel/proj \
		graphics/cairo \
		geo/gdal \
		geo/geos \
		graphics/gd \
		www/fcgi

RUN_DEPENDS-php=	${MODPHP_RUN_DEPENDS}

WANTLIB += crypto curl expat freetype idn jpeg m png pq ssl xml2 z proj
WANTLIB += gdal geos_c stdc++ cairo fontconfig gd tiff spatialite
WANTLIB += pixman-1 pthread-stubs xcb xcb-render xcb-shm sqlite3
WANTLIB += X11 Xext Xrender freexl geos geotiff gif jasper pcre

LIB_DEPENDS-utils = STEM->=${V}:${BUILD_PKGPATH},-main
LIB_DEPENDS-php = STEM->=${V}:${BUILD_PKGPATH},-main
LIB_DEPENDS-perl = STEM->=${V}:${BUILD_PKGPATH},-main
WANTLIB-main=	${WANTLIB} fcgi pthread c gif
WANTLIB-main += asn1 com_err heimbase krb5 roken wind
WANTLIB-utils=	${WANTLIB} mapserver pthread c gif
WANTLIB-php=	${WANTLIB} mapserver pthread
WANTLIB-perl=	mapserver

USE_GMAKE=	yes
USE_LIBTOOL =	yes
LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-proj=${LOCALBASE} \
		--with-png=${LOCALBASE} \
		--with-fastcgi=${LOCALBASE} \
		--with-freetype=${X11BASE}/bin \
		--with-gdal=${LOCALBASE}/bin/gdal-config \
		--with-gd=${LOCALBASE}/bin/gdlib-config \
		--with-php=${LOCALBASE}/bin/php-config-${MODPHP_VERSION} \
		--with-postgis=${LOCALBASE}/bin/pg_config \
		--with-geos=${LOCALBASE}/bin/geos-config \
		--with-ogr=${LOCALBASE}/bin/gdal-config \
		--with-xml2-config=${LOCALBASE}/bin/xml2-config \
		--with-curl-config=${LOCALBASE}/bin/curl-config \
		--with-cairo \
		--with-kml \
		--with-wmsclient \
		--with-wfsclient \
		--with-wcs \
		--with-wfs \
		--with-sos

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

MAKE_ENV=	CFLAGS+=-fPIC

UTILS=	shp2img legend shptree shptreevis shptreetst scalebar \
	sortshp tile4ms msencrypt

PREFIX-main=	${VARBASE}/www

SUBST_VARS+=	PREFIX-main

post-build:
	cd ${WRKSRC}/mapscript/perl && perl Makefile.PL && ${MAKE}

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-main}/cgi-bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mapserver/perl

	${INSTALL_PROGRAM} ${PREFIX}/bin/mapserv ${WRKINST}/${PREFIX-main}/cgi-bin

	echo "; Enable Mapscript extension module\nextension=php_mapscript.so" \
		> ${PREFIX}/share/examples/php-${MODPHP_VERSION}/mapscript.ini

	${INSTALL_DATA}	${WRKSRC}/mapscript/perl/examples/* \
		${PREFIX}/share/examples/mapserver/perl

	cd ${WRKSRC}/mapscript/perl && ${MAKE} install

.include <bsd.port.mk>
