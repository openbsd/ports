# $OpenBSD: Makefile,v 1.92 2018/08/22 13:43:30 landry Exp $

COMMENT =	desktop geographical information system

DISTNAME =	qgis-3.2.2
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	geo x11

SHARED_LIBS =	qgis_core	24.0 \
		qgis_app	9.1 \
		qgis_gui	20.2 \
		qgis_analysis	10.0 \
		qgis_server	6.0 \
		qgispython	6.0 \
		qgis_3d		1.0 \
		qgis_native	0.0

HOMEPAGE =	http://www.qgis.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MASTER_SITES =	${HOMEPAGE}/downloads/

MODULES =	devel/cmake \
		x11/qt5 \
		lang/python

COMPILER =	base-clang ports-gcc

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	x11/py-qt5${MODPY_FLAVOR} \
		geo/gdal,-python${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		editors/py-qscintilla,qt5 \
		devel/bison>=2.4


RUN_DEPENDS =	x11/py-qt5${MODPY_FLAVOR} \
		geo/gdal,-python${MODPY_FLAVOR} \
		geo/py-owslib${MODPY_FLAVOR} \
		databases/py-psycopg2${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		editors/py-qscintilla,qt5 \
		devel/desktop-file-utils \
		x11/gtk+3,-guic \
		misc/shared-mime-info

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		archivers/libzip \
		databases/sqlite3 \
		devel/proj \
		editors/qscintilla,qt5 \
		security/qtkeychain,qt5 \
		security/qca-qt5 \
		www/fcgi \
		x11/qt5/qtwebkit \
		x11/qt5/qt3d \
		qwt-*-qt5:x11/qwt,qt5 \
		geo/gdal \
		geo/geos \
		geo/spatialite/libspatialite \
		geo/spatialindex \
		devel/gsl \
		databases/postgresql

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Sql Qt5Svg
WANTLIB += Qt5Test Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml
WANTLIB += c expat fcgi gdal geos_c gsl gslcblas m pq proj ${MODPY_WANTLIB}
WANTLIB += qca-qt5 qscintilla2_qt5 qt5keychain qwt-qt5 spatialindex
WANTLIB += spatialite sqlite3 util zip
WANTLIB += Qt53DCore Qt53DExtras Qt53DInput Qt53DLogic
WANTLIB += Qt53DRender Qt5Gamepad

CONFIGURE_ENV+=	VERBOSE=1
CONFIGURE_ARGS =-DPYTHON_EXECUTABLE=${MODPY_BIN} \
		-DPYUIC_PROGRAM=${LOCALBASE}/bin/pyuic5-3 \
		-DPYRCC_PROGRAM=${LOCALBASE}/bin/pyrcc5-3 \
		-DWITH_3D=TRUE \
		-DWITH_SERVER=TRUE -DWITH_SERVER_PLUGINS=TRUE -DWITH_QSPATIALITE=TRUE

#CONFIGURE_ARGS += -DCMAKE_BUILD_TYPE:String=RelWithDebInfo

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
	# shoplifted from debian/rules
	# Install menu pixmap
	${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications,mime/packages}
	${INSTALL_DATA} ${WRKSRC}/images/icons/qgis_icon.svg ${PREFIX}/share/pixmaps/qgis.svg
	ln -f ${PREFIX}/share/{qgis/images/icons/qgis-icon-512x512,pixmaps/qgis}.png
	ln -f ${PREFIX}/share/{qgis/images/icons/qgis-mime-icon,pixmaps/qgis-mime}.png

.for size in 8x8 16x16 22x22 24x24 32x32 36x36 42x42 48x48 64x64 72x72 80x80 96x96 128x128 192x192 256x256 512x512
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${size}/{mimetypes,apps}
	# Install application icon
	${INSTALL_DATA} ${WRKSRC}/debian/icons/qgis-icon${size}.png \
		${PREFIX}/share/icons/hicolor/${size}/apps/qgis.png
	# Install QGIS file formats icons
.for ftype in qgs qlr qml qpt
	${INSTALL_DATA} ${WRKSRC}/debian/icons/qgis-${ftype}${size}.png \
		${PREFIX}/share/icons/hicolor/${size}/apps/qgis-${ftype}.png
.endfor
.endfor

	# Install MIME type icon
.for size in 8x8 16x16 22x22 24x24 32x32 36x36 42x42 48x48 64x64 72x72 80x80 96x96 128x128
	${INSTALL_DATA} ${WRKSRC}/debian/icons/qgis-mime-icon${size}.png \
		${PREFIX}/share/icons/hicolor/${size}/mimetypes/qgis-mime.png
.endfor

	${INSTALL_DATA} ${WRKSRC}/debian/qgis.desktop \
		${PREFIX}/share/applications/qgis.desktop

	${INSTALL_DATA} ${WRKSRC}/debian/qgis.xml \
		${PREFIX}/share/mime/packages/qgis.xml

.include <bsd.port.mk>
