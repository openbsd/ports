USE_WXNEEDED =	Yes

BROKEN-sparc64 =	undefined reference to QOpenGLExtension_ARB_tessellation_shader::QOpenGLExtension_ARB_tessellation_shader() in libQt53DRender.so.2.0 when linking qgis_3drenderingtest

COMMENT =	desktop geographical information system

DPB_PROPERTIES =	parallel parallel2

DISTNAME =	qgis-4.2.2
REVISION =	0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	geo x11
DEBUG_PACKAGES =${BUILD_PACKAGES}
SUBST_VARS +=	PKGNAME

SHARED_LIBS =	qgis_core	90.0 \
		qgis_app	58.0 \
		qgis_gui	65.0 \
		qgis_analysis	32.0 \
		qgis_server	23.1 \
		qgispython	6.0 \
		qgis_3d		26.0 \
		qgis_native	0.3

HOMEPAGE =	https://www.qgis.org/

# GPLv2
PERMIT_PACKAGE =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

SITES =		${HOMEPAGE}downloads/

QTVER =		qt6
UQTV=		Qt6

MODULES =	devel/cmake \
		x11/${QTVER} \
		lang/python

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/bison>=2.4 \
		devel/py-qt-builder \
		devel/py-sip>=6.15.3 \
		devel/py-six \
		editors/py-qscintilla,${QTVER} \
		geo/gdal,-python \
		x11/py-${QTVER}

RUN_DEPENDS =	databases/py-psycopg2 \
		devel/desktop-file-utils \
		editors/py-qscintilla,${QTVER} \
		geo/gdal,-python \
		geo/py-owslib \
		misc/shared-mime-info \
		textproc/py-pygments \
		textproc/py-yaml \
		www/py-jinja2 \
		www/py-requests \
		x11/gtk+4,-guic \
		x11/py-${QTVER}

LIB_DEPENDS +=	${MODPY_LIB_DEPENDS} \
		archivers/draco \
		archivers/libzip \
		databases/postgresql \
		databases/sqlite3 \
		devel/gsl \
		devel/proj \
		devel/protobuf \
		editors/qscintilla,${QTVER} \
		geo/gdal \
		geo/geos \
		geo/geographiclib \
		geo/mdal \
		geo/pdal \
		geo/sfcgal \
		geo/spatialindex \
		geo/spatialite/libspatialite \
		graphics/exiv2 \
		print/pdf4qt \
		security/qca-${QTVER} \
		security/qtkeychain,${QTVER} \
		www/fcgi \
		x11/${QTVER}/qtwebengine \
		x11/${QTVER}/qt3d \
		x11/qwt,${QTVER}

# Qt common wantlibs
WANTLIB += ${COMPILER_LIBCXX} ${UQTV}3DCore ${UQTV}3DExtras
WANTLIB += ${UQTV}3DInput ${UQTV}3DLogic ${UQTV}3DRender ${UQTV}Concurrent
WANTLIB += ${UQTV}Core ${UQTV}DBus ${UQTV}Gui
WANTLIB += ${UQTV}Multimedia ${UQTV}MultimediaWidgets ${UQTV}Network
WANTLIB += ${UQTV}Positioning ${UQTV}PrintSupport ${UQTV}Qml
WANTLIB += ${UQTV}Quick ${UQTV}QuickWidgets ${UQTV}SerialPort ${UQTV}Sql ${UQTV}Svg
WANTLIB += ${UQTV}Test ${UQTV}Widgets ${UQTV}Xml
WANTLIB += ${UQTV}Core5Compat ${UQTV}OpenGL ${UQTV}OpenGLWidgets ${UQTV}SvgWidgets
WANTLIB += ${UQTV}UiTools ${UQTV}WebChannel ${UQTV}WebEngineCore qwt-${QTVER}
WANTLIB += ${UQTV}WebEngineWidgets ${UQTV}QuickControls2

WANTLIB += c draco exiv2 expat fcgi freexl gdal geos_c gsl gslcblas iconv intl m
WANTLIB += mdal minizip pdalcpp pq proj protobuf-lite ${MODPY_WANTLIB}
WANTLIB += qca-${QTVER} qscintilla2_${QTVER} ${QTVER}keychain rttopo spatialindex
WANTLIB += spatialite sqlite3 sz util zip hdf5 xml2 z zstd GeographicLib GL SFCGAL
WANTLIB += Pdf4QtLibCore

# absl wantlibs
WANTLIB += absl_base absl_base_cpu_detect absl_city absl_civil_time
WANTLIB += absl_cord absl_cord_internal absl_cordz_functions absl_cordz_handle
WANTLIB += absl_cordz_info absl_crc32c absl_crc_cord_state absl_crc_internal
WANTLIB += absl_debugging_internal absl_decode_rust_punycode absl_demangle_internal
WANTLIB += absl_demangle_rust absl_die_if_null absl_examine_stack
WANTLIB += absl_exponential_biased absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB += absl_hardening absl_hash absl_hashtablez_sampler absl_int128
WANTLIB += absl_kernel_timeout_internal absl_leak_check absl_log_entry
WANTLIB += absl_log_globals absl_log_initialize absl_log_internal_check_op
WANTLIB += absl_log_internal_conditions absl_log_internal_fnmatch
WANTLIB += absl_log_internal_format absl_log_internal_globals
WANTLIB += absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB += absl_log_internal_nullguard absl_log_internal_proto
WANTLIB += absl_log_internal_structured_proto absl_log_severity
WANTLIB += absl_log_sink absl_malloc_internal absl_random_distributions
WANTLIB += absl_random_internal_entropy_pool absl_random_internal_platform
WANTLIB += absl_random_internal_randen absl_random_internal_randen_hwaes
WANTLIB += absl_random_internal_randen_hwaes_impl absl_random_internal_randen_slow
WANTLIB += absl_random_internal_seed_material absl_random_seed_gen_exception
WANTLIB += absl_random_seed_sequences absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_source_location absl_spinlock_wait absl_stacktrace
WANTLIB += absl_status absl_statusor absl_str_format_internal
WANTLIB += absl_strerror absl_strings absl_strings_internal absl_symbolize
WANTLIB += absl_synchronization absl_throw_delegate absl_time
WANTLIB += absl_time_zone absl_tracing_internal absl_utf8_for_code_point
WANTLIB += absl_vlog_config_internal

CONFIGURE_ENV+=	VERBOSE=1
CONFIGURE_ARGS +=-DPYTHON_EXECUTABLE=${MODPY_BIN} \
		-DUSE_CCACHE=FALSE \
		-DWITH_QTWEBENGINE=ON \
		-DWITH_INTERNAL_MDAL=FALSE \
		-DWITH_3D=TRUE \
		-DWITH_PDAL=TRUE \
		-DWITH_PDF4QT=TRUE \
		-DWITH_SFCGAL=TRUE \
		-DWITH_GEOGRAPHICLIB=TRUE \
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
