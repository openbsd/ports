# $OpenBSD: Makefile,v 1.4 2015/07/15 23:56:36 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GIS WMTS/TMS tile caching server

GH_TAGNAME =	rel-1-2-1
GH_ACCOUNT =	mapserver
GH_PROJECT =	mapcache
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	${GH_PROJECT}-1.2.1
SHARED_LIBS +=	mapcache 0.0
REVISION =	1

CATEGORIES=	geo www

HOMEPAGE=	http://www.mapserver.org/
# MIT
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Landry Breuil <landry@openbsd.org>

MODULES=	devel/cmake
RUN_DEPENDS =	www/spawn-fcgi

NO_TEST =	Yes
LIB_DEPENDS=	devel/apr-util \
		geo/gdal \
		geo/geos \
		www/fcgi

WANTLIB += apr-1 aprutil-1 c curl fcgi gdal geos_c jpeg m pixman-1
WANTLIB += png pthread sqlite3

CONFIGURE_ARGS +=	-DWITH_APACHE:Bool=Off

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${VARBASE}/www/cgi-bin
	${INSTALL_DATA_DIR} ${WRKINST}/${VARBASE}/www/conf
	${INSTALL_PROGRAM} ${PREFIX}/bin/mapcache.fcgi ${WRKINST}/${VARBASE}/www/cgi-bin/mapcache
	${INSTALL_DATA} ${WRKSRC}/mapcache.xml ${WRKINST}/${VARBASE}/www/conf/mapcache.xml


.include <bsd.port.mk>
