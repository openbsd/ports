# $OpenBSD: Makefile,v 1.2 2009/10/29 19:34:12 landry Exp $

MULTI_PACKAGES=	-utils -main -php -perl
SHARED_ONLY=	Yes

COMMENT-main=	GIS CGI server
COMMENT-utils=	mapserver utilities
COMMENT-php=	PHP Mapscript extension
COMMENT-perl=	Perl Mapscript binding

V =		5.4.2
DISTNAME=	mapserver-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-utils=	mapserver-utils-${V}
PKGNAME-php=	php5-mapscript-${V}
PKGNAME-perl=	p5-mapscript-${V}

CATEGORIES=	geo www

HOMEPAGE=	http://www.mapserver.org/
# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	Landry Breuil <gaston@gcu.info>

MASTER_SITES=	http://download.osgeo.org/mapserver/

BUILD_DEPENDS=	:php5-core-*:www/php5/core

LIB_DEPENDS=	proj::devel/proj \
		agg,aggfontfreetype::graphics/agg \
		gdal::geo/gdal \
		geos_c::geo/geos \
		geotiff::devel/geotiff \
		gd::graphics/gd

RUN_DEPENDS-php=	:php5-core-*:www/php5/core

WANTLIB=	crypto curl expat freetype gif iconv idn jasper jpeg \
		m png pq ssl tiff xml2 z

WANTLIB-main=	${WANTLIB} c stdc++
WANTLIB-utils=	${WANTLIB} c stdc++

USE_GMAKE=	yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-proj=${LOCALBASE} \
		--with-agg=${LOCALBASE} \
		--without-pdf \
		--with-tiff=${LOCALBASE} \
		--with-freetype=${X11BASE}/bin \
		--with-gdal=${LOCALBASE}/bin/gdal-config \
		--with-php=${LOCALBASE}/share/php5/include \
		--with-postgis=${LOCALBASE}/bin/pg_config \
		--with-geos=${LOCALBASE}/bin/geos-config \
		--with-ogr=${LOCALBASE}/bin/gdal-config \
		--with-xml2-config=${LOCALBASE}/bin/xml2-config \
		--with-curl-config=${LOCALBASE}/bin/curl-config \
		--with-wmsclient \
		--with-wfsclient \
		--with-wcs \
		--with-wfs \
		--with-sos

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

UTILS=	shp2img shp2pdf legend shptree shptreevis shptreetst scalebar \
	sortshp tile4ms msencrypt mapserver-config

PREFIX-main=	/var/www
PREFIX-php=	/var/www

SUBST_VARS+=	PREFIX-php PREFIX-main

post-build:
	cd ${WRKSRC}/mapscript/perl && perl Makefile.PL && ${MAKE}

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-main}/cgi-bin
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-php}/lib/php/modules
	${INSTALL_DATA_DIR} ${DESTDIR}/${PREFIX-php}/conf/php5.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mapserver/php
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mapserver/perl

	${INSTALL_PROGRAM} ${WRKSRC}/mapserv ${WRKINST}/${PREFIX-main}/cgi-bin
	${INSTALL_DATA} ${WRKSRC}/mapscript/php3/php_mapscript.so \
		${WRKINST}/${PREFIX-php}/lib/php/modules/mapscript.so
	echo "; Enable Mapscript extension module\nextension=mapscript.so" \
		> ${WRKINST}/${PREFIX-php}/conf/php5.sample/mapscript.ini
.for i in ${UTILS}
	${INSTALL_PROGRAM} ${WRKSRC}/${i} ${PREFIX}/bin/
.endfor
	${INSTALL_DATA}	${WRKSRC}/mapscript/php3/examples/* \
		${PREFIX}/share/examples/mapserver/php
	${INSTALL_DATA}	${WRKSRC}/mapscript/perl/examples/* \
		${PREFIX}/share/examples/mapserver/perl
	cd ${WRKSRC}/mapscript/perl && ${MAKE} install

.include <bsd.port.mk>
