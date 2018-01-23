# $OpenBSD: Makefile,v 1.81 2018/01/23 14:15:32 landry Exp $

COMMENT =	desktop geographical information system

DISTNAME =	qgis-2.18.16
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	geo x11

SHARED_LIBS =	qgis_core	20.0 \
		qgis_app	6.1 \
		qgis_gui	18.0 \
		qgis_analysis	8.0 \
		qgis_server	5.2 \
		qgispython	5.0 \
		qgis_networkanalysis 2.0

HOMEPAGE =	http://www.qgis.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MASTER_SITES =	${HOMEPAGE}/downloads/

MODULES =	devel/cmake \
		lang/python


COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	x11/py-qt4>=4.8.4 \
		security/qca,-ossl \
		editors/py-qscintilla \
		devel/bison>=2.4 \
		geo/gdal,-python


RUN_DEPENDS =	x11/py-qt4>=4.8.4 \
		www/py-requests \
		security/qca,-ossl \
		geo/gdal,-python \
		databases/py-psycopg2 \
		editors/py-qscintilla \
		devel/desktop-file-utils

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		databases/sqlite3 \
		devel/proj \
		x11/qt4>=4.7.2 \
		qwt-*-!qt5:x11/qwt \
		www/fcgi \
		editors/qscintilla \
		geo/gdal \
		geo/geos \
		geo/spatialite/libspatialite \
		geo/spatialindex \
		devel/gsl \
		devel/qjson \
		security/qca \
		databases/postgresql

WANTLIB += 	ICE SM X11 Xext Xi Xinerama Xrender c expat \
		fontconfig freetype glib-2.0 gobject-2.0 gthread-2.0 \
		iconv intl lcms m mng png pthread util z proj \
		QtGui QtNetwork QtXml QtSql QtCore QtScript QtSvg \
		QtWebKit gdal geos_c gsl gslcblas pq qwt fcgi qca \
		QtTest spatialindex spatialite sqlite3 qscintilla2_qt4 qjson
WANTLIB += ${MODPY_WANTLIB} jpeg tiff
WANTLIB += ${COMPILER_LIBCXX}

CONFIGURE_ENV+=	VERBOSE=1
CONFIGURE_ARGS =	-DWITH_SERVER=TRUE -DWITH_SERVER_PLUGINS=TRUE -DWITH_PYSPATIALITE=TRUE

pre-configure:
		# otherwise takes precedence over systemwide file
		rm -f ${WRKSRC}/cmake/FindIconv.cmake
		${SUBST_CMD} ${WRKSRC}/cmake/Find{GDAL,GEOS,Postgres}.cmake

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
		ln -f ${PREFIX}/share/{qgis/images/icons,pixmaps}/qgis-icon.png
		${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
			-c ${WRKSRC}/debian/qgis.desktop \
			${PREFIX}/share/applications/qgis.desktop

.include <bsd.port.mk>
