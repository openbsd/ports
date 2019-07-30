# $OpenBSD: Makefile,v 1.14 2019/07/30 16:51:08 landry Exp $

COMMENT=	GIS WMTS/TMS tile caching server

DISTNAME =	mapcache-1.8.0
SHARED_LIBS +=	mapcache 3.0

CATEGORIES=	geo www

HOMEPAGE=	http://www.mapserver.org/
MASTER_SITES=	http://download.osgeo.org/mapserver/

# MIT
PERMIT_PACKAGE=	Yes

MAINTAINER=	Landry Breuil <landry@openbsd.org>

MODULES=	devel/cmake
RUN_DEPENDS =	www/spawn-fcgi

NO_TEST =	Yes
LIB_DEPENDS=	devel/apr-util \
		databases/sqlite3 \
		geo/gdal \
		geo/geos \
		www/fcgi

WANTLIB += apr-1 aprutil-1 c curl fcgi gdal geos_c jpeg m pixman-1
WANTLIB += png sqlite3 z

CONFIGURE_ARGS +=	-DWITH_APACHE:Bool=Off

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${VARBASE}/www/cgi-bin
	${INSTALL_DATA_DIR} ${WRKINST}/${VARBASE}/www/conf
	${INSTALL_PROGRAM} ${PREFIX}/bin/mapcache.fcgi ${WRKINST}/${VARBASE}/www/cgi-bin/mapcache
	${INSTALL_DATA} ${WRKSRC}/mapcache.xml ${WRKINST}/${VARBASE}/www/conf/mapcache.xml


.include <bsd.port.mk>
