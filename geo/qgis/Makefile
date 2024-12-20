USE_WXNEEDED =	Yes

BROKEN-sparc64 =	undefined reference to QOpenGLExtension_ARB_tessellation_shader::QOpenGLExtension_ARB_tessellation_shader() in libQt53DRender.so.2.0 when linking qgis_3drenderingtest

COMMENT =	desktop geographical information system

DPB_PROPERTIES =	parallel parallel2

DISTNAME =	qgis-3.40.2
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	geo x11
DEBUG_PACKAGES =${BUILD_PACKAGES}

SHARED_LIBS =	qgis_core	79.0 \
		qgis_app	51.0 \
		qgis_gui	58.1 \
		qgis_analysis	27.0 \
		qgis_server	20.0 \
		qgispython	6.0 \
		qgis_3d		19.0 \
		qgis_native	0.3

HOMEPAGE =	https://www.qgis.org/

# GPLv2
PERMIT_PACKAGE =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

SITES =		${HOMEPAGE}downloads/

FLAVORS =	qt6
FLAVOR ?=

.if ${FLAVOR} == "qt6"
QTVER =		qt6
UQTV=		Qt6
CONFIGURE_ARGS =-DBUILD_WITH_QT6=ON \
		-DWITH_QTWEBENGINE=ON \
		-DWITH_QTWEBKIT=OFF

# https://github.com/qgis/QGIS/pull/55671 need to port pdf4qt
LIB_DEPENDS +=	x11/qt6/qtwebengine
WANTLIB +=	Qt6Core5Compat Qt6OpenGL Qt6OpenGLWidgets Qt6SvgWidgets
WANTLIB +=	Qt6UiTools Qt6WebChannel Qt6WebEngineCore qwt-qt6
.else
QTVER =		qt5
UQTV=		Qt5

LIB_DEPENDS +=	x11/qt5/qtwebkit
WANTLIB +=	Qt5Gamepad Qt5WebKit Qt5WebKitWidgets qwt
.endif

MODULES =	devel/cmake \
		x11/${QTVER} \
		lang/python

SUBST_VARS +=	QTVER

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/bison>=2.4 \
		devel/py-qt-builder${MODPY_FLAVOR} \
		devel/py-sip${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		editors/py-qscintilla,${FLAVOR}${MODPY_FLAVOR} \
		geo/gdal,-python${MODPY_FLAVOR} \
		x11/py-${QTVER}${MODPY_FLAVOR}

RUN_DEPENDS =	databases/py-psycopg2${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		editors/py-qscintilla,${FLAVOR}${MODPY_FLAVOR} \
		geo/gdal,-python${MODPY_FLAVOR} \
		geo/py-owslib${MODPY_FLAVOR} \
		misc/shared-mime-info \
		textproc/py-pygments${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		x11/gtk+4,-guic \
		x11/py-${QTVER}${MODPY_FLAVOR}

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		archivers/draco \
		archivers/libzip \
		databases/postgresql \
		databases/sqlite3 \
		devel/gsl \
		devel/proj \
		devel/protobuf \
		editors/qscintilla,${FLAVOR} \
		geo/gdal \
		geo/geos \
		geo/mdal \
		geo/pdal \
		geo/spatialindex \
		geo/spatialite/libspatialite \
		graphics/exiv2 \
		security/qca-${QTVER} \
		security/qtkeychain,${FLAVOR} \
		www/fcgi \
		x11/${QTVER}/qt3d \
		x11/qwt,${FLAVOR}

# Qt common wantlibs
WANTLIB += ${COMPILER_LIBCXX} ${UQTV}3DCore ${UQTV}3DExtras
WANTLIB += ${UQTV}3DInput ${UQTV}3DLogic ${UQTV}3DRender ${UQTV}Concurrent
WANTLIB += ${UQTV}Core ${UQTV}DBus ${UQTV}Gui
WANTLIB += ${UQTV}Multimedia ${UQTV}MultimediaWidgets ${UQTV}Network
WANTLIB += ${UQTV}Positioning ${UQTV}PrintSupport ${UQTV}Qml ${UQTV}QmlModels
WANTLIB += ${UQTV}Quick ${UQTV}QuickWidgets ${UQTV}SerialPort ${UQTV}Sql ${UQTV}Svg
WANTLIB += ${UQTV}Test ${UQTV}Widgets ${UQTV}Xml

WANTLIB += c draco exiv2 expat fcgi freexl gdal geos_c gsl gslcblas iconv m
WANTLIB += mdal minizip pdalcpp pq proj protobuf-lite ${MODPY_WANTLIB}
WANTLIB += qca-${QTVER} qscintilla2_${QTVER} ${QTVER}keychain rttopo spatialindex
WANTLIB += spatialite sqlite3 util zip hdf5 xml2 z zstd GL

# absl wantlibs
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
WANTLIB += absl_decode_rust_punycode absl_demangle_rust absl_random_distributions
WANTLIB += absl_random_internal_platform absl_random_internal_pool_urbg
WANTLIB += absl_random_internal_randen absl_random_internal_randen_hwaes
WANTLIB += absl_random_internal_randen_hwaes_impl absl_random_internal_randen_slow
WANTLIB += absl_random_internal_seed_material absl_random_seed_gen_exception
WANTLIB += absl_random_seed_sequences absl_utf8_for_code_point

CONFIGURE_ENV+=	VERBOSE=1
CONFIGURE_ARGS +=-DPYTHON_EXECUTABLE=${MODPY_BIN} \
		-DWITH_INTERNAL_MDAL=FALSE \
		-DWITH_3D=TRUE \
		-DWITH_PDAL=TRUE \
		-DWITH_SERVER=TRUE -DWITH_SERVER_PLUGINS=TRUE -DWITH_QSPATIALITE=TRUE


MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

# does more than just debug pkgs
#DEBUG_CONFIGURE_ARGS += -DCMAKE_BUILD_TYPE:String=RelWithDebInfo

pre-configure:
		# otherwise takes precedence over systemwide file
		rm -f ${WRKSRC}/cmake/FindIconv.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mime/packages
	${INSTALL_DATA} ${WRKSRC}/debian/qgis.xml \
		${PREFIX}/share/mime/packages/qgis.xml

.include <bsd.port.mk>
