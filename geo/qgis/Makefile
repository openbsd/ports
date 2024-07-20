USE_WXNEEDED =	Yes

BROKEN-sparc64 =	undefined reference to QOpenGLExtension_ARB_tessellation_shader::QOpenGLExtension_ARB_tessellation_shader() in libQt53DRender.so.2.0 when linking qgis_3drenderingtest

COMMENT =	desktop geographical information system

DPB_PROPERTIES =	parallel

DISTNAME =	qgis-3.38.1
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	geo x11
DEBUG_PACKAGES =${BUILD_PACKAGES}

SHARED_LIBS =	qgis_core	76.0 \
		qgis_app	50.0 \
		qgis_gui	57.1 \
		qgis_analysis	25.0 \
		qgis_server	20.0 \
		qgispython	6.0 \
		qgis_3d		18.0 \
		qgis_native	0.3

HOMEPAGE =	https://www.qgis.org/

# GPLv2
PERMIT_PACKAGE =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

SITES =		${HOMEPAGE}downloads/

MODULES =	devel/cmake \
		x11/qt5 \
		lang/python

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	x11/py-qt5${MODPY_FLAVOR} \
		devel/py-qt-builder${MODPY_FLAVOR} \
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
		x11/gtk+4,-guic \
		misc/shared-mime-info

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		archivers/draco \
		archivers/libzip \
		databases/sqlite3 \
		devel/proj>=6.3.1 \
		devel/protobuf \
		editors/qscintilla \
		security/qtkeychain \
		security/qca-qt5 \
		www/fcgi \
		x11/qt5/qtwebkit \
		x11/qt5/qt3d \
		x11/qwt \
		geo/gdal \
		geo/mdal>=0.5 \
		geo/pdal \
		geo/geos \
		geo/spatialite/libspatialite \
		geo/spatialindex \
		graphics/exiv2 \
		devel/gsl \
		databases/postgresql

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Sql Qt5Svg
WANTLIB += Qt5Test Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml
WANTLIB += c draco exiv2 expat fcgi freexl gdal geos_c gsl gslcblas iconv m
WANTLIB += mdal minizip pdalcpp pq proj ${MODPY_WANTLIB}
WANTLIB += qca-qt5 qscintilla2_qt5 qt5keychain qwt rttopo spatialindex
WANTLIB += spatialite sqlite3 util zip hdf5 xml2 z zstd GL
WANTLIB += Qt53DCore Qt53DExtras Qt53DInput Qt53DLogic
WANTLIB += Qt53DRender Qt5Gamepad protobuf-lite
WANTLIB += Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5DBus Qt5Qml Qt5Quick Qt5QuickWidgets Qt5SerialPort
WANTLIB += Qt5QmlModels
WANTLIB += absl_bad_optional_access absl_bad_variant_access absl_base
WANTLIB += absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_demangle_internal
WANTLIB += absl_die_if_null absl_examine_stack absl_exponential_biased
WANTLIB += absl_flags_commandlineflag absl_flags_commandlineflag_internal
WANTLIB += absl_flags_config absl_flags_internal absl_flags_marshalling
WANTLIB += absl_flags_private_handle_accessor absl_flags_program_name
WANTLIB += absl_flags_reflection absl_graphcycles_internal absl_hash
WANTLIB += absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_log_entry absl_log_globals absl_log_initialize
WANTLIB += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_format absl_log_internal_globals
WANTLIB += absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB += absl_log_internal_nullguard absl_log_internal_proto
WANTLIB += absl_log_severity absl_log_sink absl_low_level_hash
WANTLIB += absl_malloc_internal absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_spinlock_wait absl_stacktrace absl_status absl_statusor
WANTLIB += absl_str_format_internal absl_strerror absl_string_view
WANTLIB += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone
WANTLIB += absl_log_internal_fnmatch absl_vlog_config_internal

CONFIGURE_ENV+=	VERBOSE=1
CONFIGURE_ARGS =-DPYTHON_EXECUTABLE=${MODPY_BIN} \
		-DWITH_INTERNAL_MDAL=FALSE \
		-DWITH_3D=TRUE \
		-DWITH_PDAL=TRUE \
		-DWITH_SERVER=TRUE -DWITH_SERVER_PLUGINS=TRUE -DWITH_QSPATIALITE=TRUE


MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

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
