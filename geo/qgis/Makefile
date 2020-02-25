# $OpenBSD: Makefile,v 1.122 2020/02/25 12:16:52 landry Exp $

BROKEN-powerpc =	does not build: "operand out of range"

COMMENT =	desktop geographical information system

DPB_PROPERTIES =	parallel

DISTNAME =	qgis-3.12.0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	geo x11
DEBUG_PACKAGES =${BUILD_PACKAGES}

SHARED_LIBS =	qgis_core	40.0 \
		qgis_app	23.0 \
		qgis_gui	30.0 \
		qgis_analysis	15.0 \
		qgis_server	12.0 \
		qgispython	6.0 \
		qgis_3d		6.0 \
		qgis_native	0.3

HOMEPAGE =	http://www.qgis.org/

# GPLv2
PERMIT_PACKAGE =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MASTER_SITES =	${HOMEPAGE}/downloads/

MODULES =	devel/cmake \
		x11/qt5 \
		lang/python

COMPILER =	base-clang ports-gcc

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	x11/py-qt5${MODPY_FLAVOR} \
		devel/py-sip${MODPY_FLAVOR}>=4.19.4v0 \
		geo/gdal,-python${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		editors/py-qscintilla${MODPY_FLAVOR} \
		devel/bison>=2.4


RUN_DEPENDS =	x11/py-qt5${MODPY_FLAVOR} \
		geo/gdal,-python${MODPY_FLAVOR} \
		geo/py-owslib${MODPY_FLAVOR} \
		databases/py-psycopg2${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		editors/py-qscintilla${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		x11/gtk+3,-guic \
		misc/shared-mime-info

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		archivers/libzip \
		databases/sqlite3 \
		devel/proj \
		editors/qscintilla,qt5 \
		security/qtkeychain \
		security/qca-qt5 \
		www/fcgi \
		x11/qt5/qtwebkit \
		x11/qt5/qt3d \
		qwt-*-qt5:x11/qwt,qt5 \
		geo/gdal \
		geo/mdal>=0.5 \
		geo/geos \
		geo/spatialite/libspatialite \
		geo/spatialindex \
		graphics/exiv2 \
		devel/gsl \
		databases/postgresql

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Sql Qt5Svg
WANTLIB += Qt5Test Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml
WANTLIB += c exiv2 expat fcgi gdal geos_c gsl gslcblas m mdal pq proj ${MODPY_WANTLIB}
WANTLIB += qca-qt5 qscintilla2_qt5 qt5keychain qwt-qt5 spatialindex
WANTLIB += spatialite sqlite3 util zip hdf5 xml2 z
WANTLIB += Qt53DCore Qt53DExtras Qt53DInput Qt53DLogic
WANTLIB += Qt53DRender Qt5Gamepad
WANTLIB += Qt5DBus Qt5Qml Qt5Quick Qt5QuickWidgets Qt5SerialPort

CONFIGURE_ENV+=	VERBOSE=1
CONFIGURE_ARGS =-DPYTHON_EXECUTABLE=${MODPY_BIN} \
		-DPYUIC_PROGRAM=${LOCALBASE}/bin/pyuic5-3 \
		-DPYRCC_PROGRAM=${LOCALBASE}/bin/pyrcc5-3 \
		-DWITH_INTERNAL_MDAL=FALSE \
		-DWITH_3D=TRUE \
		-DWITH_SERVER=TRUE -DWITH_SERVER_PLUGINS=TRUE -DWITH_QSPATIALITE=TRUE

# does more than just debug pkgs
#DEBUG_CONFIGURE_ARGS += -DCMAKE_BUILD_TYPE:String=RelWithDebInfo

# https://issues.qgis.org/issues/17696
#.ifdef  "${BUILD_OSG}"
#LIB_DEPENDS += geo/osgearth
#CONFIGURE_ARGS += -DWITH_GLOBE=TRUE
#WANTLIB += OpenThreads osgEarthAnnotation osgEarthFeatures osgEarthQt5 osgEarthSymbology
#WANTLIB += osgEarthUtil osgGA osgQt osgUtil osgViewer osg osgDB osgEarth
#.endif

pre-configure:
		# otherwise takes precedence over systemwide file
		rm -f ${WRKSRC}/cmake/FindIconv.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mime/packages
	${INSTALL_DATA} ${WRKSRC}/debian/qgis.xml \
		${PREFIX}/share/mime/packages/qgis.xml

.include <bsd.port.mk>
