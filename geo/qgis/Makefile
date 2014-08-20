# $OpenBSD: Makefile,v 1.32 2014/08/20 08:54:45 landry Exp $

COMMENT =	desktop geographical information system

SHARED_ONLY =	Yes

DISTNAME =	qgis-2.4.0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	geo x11

SHARED_LIBS =	qgis_core	6.0 \
		qgis_gui	5.0 \
		qgis_analysis	2.0 \
		qgispython	2.0 \
		qgis_networkanalysis 0.0 \
		qgissqlanyconnection 0.0 # 2.0

HOMEPAGE =	http://www.qgis.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MASTER_SITES =	${HOMEPAGE}/downloads/

MODULES =	devel/cmake \
		devel/gettext \
		lang/python

BUILD_DEPENDS =	x11/py-qt4>=4.8.4 \
		geo/gdal,-python

# need to update bison...
#		devel/bison>=2.4

RUN_DEPENDS =	x11/py-qt4>=4.8.4 \
		geo/gdal,-python \
		databases/py-psycopg2 \
		devel/desktop-file-utils

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		devel/proj \
		x11/qt4>=4.7.2 \
		x11/qwt \
		www/fcgi \
		geo/gdal \
		geo/geos \
		geo/spatialite/libspatialite \
		geo/spatialindex \
		devel/gsl \
		databases/postgresql

WANTLIB += 	ICE SM X11 Xext Xi Xinerama Xrender c expat \
		fontconfig freetype glib-2.0 gobject-2.0 gthread-2.0 lcms m \
		mng png pthread util stdc++ z proj \
		QtGui QtNetwork QtXml QtSql QtCore QtScript QtSvg \
		QtWebKit gdal geos_c gsl gslcblas pq qwt fcgi \
		QtTest spatialindex spatialite sqlite3
WANTLIB += ${MODPY_WANTLIB} jpeg tiff

CONFIGURE_ENV+=	VERBOSE=1
CONFIGURE_ARGS =	-DWITH_MAPSERVER=TRUE -DWITH_PYSPATIALITE=TRUE

pre-configure:
		# otherwise takes precedence over systemwide file
		rm -f ${WRKSRC}/cmake/FindIconv.cmake
		${SUBST_CMD} ${WRKSRC}/cmake/Find{GDAL,GEOS,Postgres}.cmake
		#install bison-2.6-generated files
		cp ${FILESDIR}/qgsrastercalcparser.{c,h}pp ${WRKSRC}/src/analysis/raster/
		cp ${FILESDIR}/qgsexpressionparser.{c,h}pp ${WRKSRC}/src/core/

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
		ln -f ${PREFIX}/share/{qgis/images/icons,pixmaps}/qgis-icon.png
		${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
			-c ${WRKSRC}/debian/qgis.desktop \
			${PREFIX}/share/applications/qgis.desktop

.include <bsd.port.mk>
