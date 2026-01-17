# Sync cad/kicad-share/Makefile.inc with archs where kicad is broken

USE_NOBTCFI =		Yes

DPB_PROPERTIES =	parallel

V =			9.0.6
COMMENT =		schematic and PCB editing software
DISTNAME =		kicad-${V}
REVISION =		1
EPOCH =			0

SHARED_LIBS +=  kicad_3dsg                2.0 # 2.0
SHARED_LIBS +=  kicommon                  0.0 # 0.0
SHARED_LIBS +=  kigal                     0.0 # 0.0
SHARED_LIBS +=  kiapi                     0.0 # 0.0

CATEGORIES =		cad

HOMEPAGE =		https://www.kicad.org

# GPLv3, MIT, Boost
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLU TKBO TKBRep TKBin TKBinL
WANTLIB += TKBinTObj TKBinXCAF TKBool TKCAF TKCDF TKDEGLTF TKDEIGES
WANTLIB += TKDEPLY TKDESTEP TKDESTL TKDEVRML TKFeat TKFillet TKG2d
WANTLIB += TKG3d TKGeomAlgo TKGeomBase TKHLR TKLCAF TKMath TKMesh
WANTLIB += TKMeshVS TKOffset TKOpenGl TKPrim TKRWMesh TKService
WANTLIB += TKShHealing TKTObj TKTopAlgo TKV3d TKXCAF TKXMesh TKXSBase
WANTLIB += TKXml TKXmlL TKXmlTObj TKXmlXCAF TKernel absl_base
WANTLIB += absl_borrowed_fixup_buffer absl_city absl_civil_time
WANTLIB += absl_cord absl_cord_internal absl_cordz_functions absl_cordz_handle
WANTLIB += absl_cordz_info absl_crc32c absl_crc_cord_state absl_crc_cpu_detect
WANTLIB += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB += absl_demangle_internal absl_demangle_rust absl_die_if_null
WANTLIB += absl_examine_stack absl_exponential_biased absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB += absl_hash absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_leak_check absl_log_entry absl_log_globals absl_log_initialize
WANTLIB += absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB += absl_log_internal_message absl_log_internal_nullguard
WANTLIB += absl_log_internal_proto absl_log_internal_structured_proto
WANTLIB += absl_log_severity absl_log_sink absl_malloc_internal
WANTLIB += absl_random_distributions absl_random_internal_entropy_pool
WANTLIB += absl_random_internal_platform absl_random_internal_randen
WANTLIB += absl_random_internal_randen_hwaes absl_random_internal_randen_hwaes_impl
WANTLIB += absl_random_internal_randen_slow absl_random_internal_seed_material
WANTLIB += absl_random_seed_gen_exception absl_random_seed_sequences
WANTLIB += absl_raw_hash_set absl_raw_logging_internal absl_spinlock_wait
WANTLIB += absl_stacktrace absl_status absl_statusor absl_str_format_internal
WANTLIB += absl_strerror absl_strings absl_strings_internal absl_symbolize
WANTLIB += absl_synchronization absl_throw_delegate absl_time
WANTLIB += absl_time_zone absl_tracing_internal absl_utf8_for_code_point
WANTLIB += absl_vlog_config_internal atk-1.0 boost_charconv-mt
WANTLIB += boost_chrono-mt boost_locale-mt boost_system-mt boost_thread-mt
WANTLIB += c cairo cairo-gobject curl fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 git2 glib-2.0 gobject-2.0 gtk-3
WANTLIB += harfbuzz intl iodbc m ngspice nng pango-1.0 pangocairo-1.0
WANTLIB += pixman-1 protobuf python3.13 secret-1 utf8_validity
WANTLIB += wx_baseu-3.2 wx_baseu_net-3.2 wx_baseu_xml-3.2 wx_gtk3u_aui-3.2
WANTLIB += wx_gtk3u_core-3.2 wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2
WANTLIB += wx_gtk3u_propgrid-3.2 wx_gtk3u_richtext-3.2 wx_gtk3u_stc-3.2
WANTLIB += z zstd

SITES =			https://gitlab.com/kicad/code/kicad/-/archive/${V}/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/doxygen \
			devel/gettext,-tools \
			devel/re2c \
			devel/swig \
			devel/protobuf \
			graphics/freeglut \
			graphics/glm \
			misc/shared-mime-info

RUN_DEPENDS =		cad/kicad-share/footprints>=${V} \
			cad/kicad-share/packages3D>=${V} \
			cad/kicad-share/symbols>=${V} \
			cad/kicad-share/templates>=${V} \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

LIB_DEPENDS =		archivers/zstd \
			cad/ngspice/libngspice \
			cad/opencascade \
			databases/iodbc \
			devel/abseil-cpp \
			devel/boost \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/harfbuzz \
			devel/libgit2/libgit2 \
			devel/pango \
			devel/protobuf \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			net/curl \
			net/nng \
			x11/gnome/at-spi2-core \
			x11/gnome/libsecret \
			x11/gtk+3 \
			x11/wxWidgets \
			${MODPY_LIB_DEPENDS}

CONFIGURE_ARGS +=	-DNANODBC_ENABLE_BOOST=ON \
			-DNANODBC_ENABLE_UNICODE=OFF \
			-DOCC_INCLUDE_DIR="${LOCALBASE}/include/opencascade" \
			-DOCC_LIBRARY_DIR="${LOCALBASE}/lib/opencascade" \
			-DwxWidgets_CONFIG_EXECUTABLE=${LOCALBASE}/bin/wx-config \
			-DwxWidgets_INCLUDE_DIRS="${LOCALBASE}/include/wx-3.2" \
			-DwxWidgets_LIBRARIES="${LOCALBASE}/lib"

CONFIGURE_ARGS +=	-DKICAD_BUILD_I18N=ON \
			-DKICAD_SCRIPTING_WXPYTHON=OFF \
			-DKICAD_UPDATE_CHECK=OFF \
			-DKICAD_SPICE_QA=ON \
			-DKICAD_USE_SENTRY=OFF \
			-DKICAD_SIGNAL_INTEGRITY=ON \
			-DKICAD_BUILD_QA_TESTS=ON \
			-DKICAD_USE_EGL=ON \
			-DKICAD_WAYLAND=OFF

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# KHR/khrplatform.h
CFLAGS +=		-I${X11BASE}/include
CXXFLAGS +=		-I${X11BASE}/include

NO_TEST =		Yes

post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/ \
		${PREFIX}/share/kicad/plugins/ \
		${PREFIX}/share/kicad/scripting/ \
		${PREFIX}/share/kicad/demos/python_scripts_examples

.include <bsd.port.mk>
