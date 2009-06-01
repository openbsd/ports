# $OpenBSD: Makefile,v 1.1.1.1 2009/06/01 23:14:58 landry Exp $

COMMENT =	desktop geographical information system

DISTNAME =	qgis_1.0.2
PKGNAME =	${DISTNAME:L:S/_/-/}
CATEGORIES =	geo x11

SHARED_LIBS =	qgis_core	0.0 \
		qgis_gui	0.0 \
		qgispython	0.0 # .1.0

HOMEPAGE =	http://www.qgis.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MAINTAINER =	Landry Breuil <gaston@gcu.info>

MASTER_SITES =	http://download.osgeo.org/qgis/src/
WRKDIST =	${WRKDIR}/${DISTNAME:S/_/-/}

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	::x11/py-qt4 \
		:py-gdal-*:geo/gdal \
		::devel/bison

RUN_DEPENDS =	::x11/py-qt4 \
		:py-gdal-*:geo/gdal \
		:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS =	proj::devel/proj \
		QtGui,QtNetwork,QtXml,QtSql,QtCore,QtSvg::x11/qt4 \
		gdal::geo/gdal \
		geos_c::geo/geos \
		gsl,gslcblas::devel/gsl \
		pq:postgresql-client-*:databases/postgresql

WANTLIB =	ICE SM X11 Xext Xi Xinerama Xrandr Xrender \
		fontconfig freetype glib-2.0 gthread-2.0 iconv \
		c intl m png pthread stdc++ z expat gobject-2.0 \
		python2.5 sqlite3 util

pre-configure:
		${SUBST_CMD} ${WRKSRC}/cmake/Find{GDAL,GEOS,Postgres}.cmake

post-install:
		mv ${PREFIX}/man/man1/qgis.{man,1}
		${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
		ln ${PREFIX}/share/{qgis/images/icons,pixmaps}/qgis-icon.png
		${SUBST_CMD} -c ${WRKSRC}/debian/qgis.desktop \
			${PREFIX}/share/applications/qgis.desktop
		chown ${SHAREOWN}:${SHAREGRP} \
			${PREFIX}/share/applications/qgis.desktop

.include <bsd.port.mk>
