# $OpenBSD: Makefile,v 1.26 2013/07/05 07:23:33 jasper Exp $

MULTI_PACKAGES=	-utils -main -php -perl
SHARED_ONLY=	Yes

COMMENT-main=	GIS CGI server
COMMENT-utils=	mapserver utilities
COMMENT-php=	PHP Mapscript extension
COMMENT-perl=	Perl Mapscript binding

V =		6.0.2
REVISION-perl=	0
REVISION-php=	1
DISTNAME=	mapserver-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-utils=	mapserver-utils-${V}
PKGNAME-php=	php-mapscript-${V}
PKGNAME-perl=	p5-mapscript-${V}

CATEGORIES=	geo www

HOMEPAGE=	http://www.mapserver.org/
# MIT
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Landry Breuil <landry@openbsd.org>

MASTER_SITES=	http://download.osgeo.org/mapserver/

MODULES=	devel/gettext lang/php
MODPHP_RUNDEP=	No

BUILD_DEPENDS=	graphics/agg

LIB_DEPENDS=	devel/proj \
		graphics/cairo \
		geo/gdal \
		geo/geos \
		graphics/gd \
		www/fcgi

RUN_DEPENDS-php=	${MODPHP_RUN_DEPENDS}

WANTLIB += crypto curl expat freetype idn jpeg m png pq ssl xml2 z proj
WANTLIB += gdal geos_c gd stdc++ fcgi
WANTLIB += GL X11
WANTLIB += cairo Xrender fontconfig glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += pixman-1 pthread-stubs xcb xcb-render xcb-shm

WANTLIB-main=	${WANTLIB} pthread c gif
WANTLIB-utils=	${WANTLIB} pthread c gif
WANTLIB-php=	${WANTLIB} c pthread
WANTLIB-perl=	${WANTLIB} c gif

USE_GMAKE=	yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-proj=${LOCALBASE} \
		--with-png=${LOCALBASE} \
		--with-agg=${LOCALBASE} \
		--with-fastcgi=${LOCALBASE} \
		--without-pdf \
		--with-freetype=${X11BASE}/bin \
		--with-gdal=${LOCALBASE}/bin/gdal-config \
		--with-php=${LOCALBASE}/share/php-${MODPHP_VERSION}/include \
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

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-main}/cgi-bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/php-${MODPHP_VERSION}/modules
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mapserver/php
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mapserver/perl

	${INSTALL_PROGRAM} ${WRKSRC}/mapserv ${WRKINST}/${PREFIX-main}/cgi-bin
	${INSTALL_DATA} ${WRKSRC}/mapscript/php/php_mapscript.so \
		${PREFIX}/lib/php-${MODPHP_VERSION}/modules/mapscript.so
	echo "; Enable Mapscript extension module\nextension=mapscript.so" \
		> ${PREFIX}/share/examples/php-${MODPHP_VERSION}/mapscript.ini
.for i in ${UTILS}
	${INSTALL_PROGRAM} ${WRKSRC}/${i} ${PREFIX}/bin/
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/mapserver-config ${PREFIX}/bin/
	${INSTALL_DATA}	${WRKSRC}/mapscript/php/examples/* \
		${PREFIX}/share/examples/mapserver/php
	${INSTALL_DATA}	${WRKSRC}/mapscript/perl/examples/* \
		${PREFIX}/share/examples/mapserver/perl
	cd ${WRKSRC}/mapscript/perl && ${MAKE} install

.include <bsd.port.mk>
