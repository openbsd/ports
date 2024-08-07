BROKEN-powerpc64 =	Check failed: false. OS architecture not handled. (powerpc64)

USE_WXNEEDED=		Yes

DPB_PROPERTIES=		parallel parallel2
.if ${MACHINE_ARCH:Mi386}
DPB_PROPERTIES+=	lonesome
.endif

COMMENT=		Chromium browser

V=			127.0.6533.99

DISTNAME=		chromium-${V}

DISTFILES+=		${CHROMIUM_DISTFILES} \
			${REGRESS_DISTFILES}

DISTFILES.a+=		${PROFILE_DISTFILES} \
			${REGRESS_DISTFILES.a}

CHROMIUM_DISTFILES+=	chromium-${V}${EXTRACT_SUFX}
PROFILE_DISTFILES+=	chrome-linux-${V}-llvm17.profdata${EXTRACT_SUFX}
REGRESS_DISTFILES+=	chromium-${V}-testdata${EXTRACT_SUFX}
REGRESS_DISTFILES.a+=	test_fonts-336e775eec536b2d785cc80eff6ac39051931286.tar.gz

EXTRACT_ONLY=		${CHROMIUM_DISTFILES} \
			${PROFILE_DISTFILES}

CATEGORIES=		www

HOMEPAGE=		https://www.chromium.org/Home

MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

FLAVORS=		component
PSEUDO_FLAVORS=		debug lto
FLAVOR?=

# BSD-like
PERMIT_PACKAGE =	Yes

SITES=		https://commondatastorage.googleapis.com/chromium-browser-official/
SITES.a=	http://nerd.hu/distfiles/

MODULES=	lang/clang lang/python x11/qt5

MODCLANG_VERSION=	17
MODQT5_DEPS=		No
MODPY_RUNDEP=		No

COMPILER=		ports-clang

# uses pledge()
WANTLIB+=	GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xft Xi Xrandr
WANTLIB+=	Xrender Xtst aom atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB+=	cbor crypto cups dav1d dbus-1 drm event execinfo expat ffi fido2
WANTLIB+=	fontconfig freetype fribidi gbm gio-2.0 glib-2.0 gmodule-2.0
WANTLIB+=	gobject-2.0 graphite2 gthread-2.0 harfbuzz harfbuzz-gobject
WANTLIB+=	harfbuzz-subset iconv icudata icui18n icuuc intl jpeg kvm m
WANTLIB+=	nspr4 nss3 nssutil3 openh264 opus pango-1.0 pangocairo-1.0
WANTLIB+=	pangoft2-1.0 pcre2-8 pixman-1 plc4 plds4 png pthread pthread smime3
WANTLIB+=	sndio usbhid util vpx xcb xcb-render xcb-shm xkbcommon xml2
WANTLIB+=	xshmfence xslt z

RUN_DEPENDS=	devel/xdg-utils \
		devel/desktop-file-utils \
		fonts/noto/fonts \
		graphics/libexif \
		sysutils/libudev-openbsd \
		x11/gtk+3,-main \
		x11/gtk+4,-guic \
		x11/gtk+3,-cups
BUILD_DEPENDS=	archivers/bzip2 \
		audio/pulseaudio \
		devel/gperf \
		devel/bison \
		devel/rust-bindgen \
		lang/node \
		lang/rust \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		devel/ninja \
		x11/py-xcbgen${MODPY_FLAVOR} \
		x11/qt5/qtbase,-main \
		${MODGCC4_CPPDEP} \
		${RUN_DEPENDS}
LIB_DEPENDS=	audio/opus \
		devel/pango \
		graphics/jpeg \
		multimedia/aom \
		multimedia/dav1d \
		multimedia/libvpx \
		multimedia/openh264 \
		security/nss \
		textproc/icu4c \
		textproc/libxslt \
		x11/gnome/at-spi2-core \
		x11/xkbcommon \
		print/cups,-libs \
		${MODGCC4_CPPLIBDEP}

USE_GMAKE=	Yes

.include <bsd.own.mk>

# Set BUILDTYPE to Release
BUILDTYPE=	Release

SUBST_VARS+=	WRKSRC WRKDIR DEBUGFLAG MODCLANG_VERSION

ALL_TARGET=		chrome chromedriver
TEST_TARGET=		base_unittests \
			blink_unittests \
			chromedriver_unittests \
			components_unittests \
			content_unittests \
			crypto_unittests \
			gl_tests \
			gpu_unittests \
			headless_unittests \
			media_unittests \
			mojo_unittests \
			net_unittests \
			pdf_unittests \
			printing_unittests \
			skia_unittests \
			url_unittests \
			wm_unittests

TEST_ENV+=	FONTCONFIG_SYSROOT=${WRKSRC}/third_party/test_fonts

DIST_TARGET_DIR=	chrome

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

# These libraries are used from the system and the build infrastructure
# removes them from the bundled third_party directory and replaces them
# with hooks to use them from the system.
GN_SYSTEM_LIBS=	dav1d \
		fontconfig \
		icu \
		libaom \
		libevent \
		libjpeg \
		libpng \
		libvpx \
		libxml \
		libxslt \
		openh264 \
		opus

GN_ARGS=	enable_nacl=false \
		is_official_build=true \
		is_debug=false \
		is_cfi=false \
		optimize_webui=true \
		enable_remoting=false \
		enable_hangout_services_extension=true \
		enable_log_error_not_reached=true \
		use_kerberos=false \
		use_sndio=true \
		use_pulseaudio=true \
		use_cups=true \
		use_system_libdrm=true \
		use_system_libjpeg=true \
		use_system_harfbuzz=true \
		use_system_freetype=false \
		icu_use_data_file=false \
		is_clang=true \
		use_sysroot=false \
		treat_warnings_as_errors=false \
		clang_use_chrome_plugins=false \
		use_allocator_shim=false \
		use_partition_alloc=true \
		use_partition_alloc_as_malloc=false \
		enable_backup_ref_ptr_support=false \
		disable_fieldtrial_testing_config=true \
		extra_cppflags=\"-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include\" \
		fatal_linker_warnings=false \
		use_custom_libcxx=true \
		use_custom_libunwind=true \
		use_udev=true \
		v8_enable_cet_ibt=true

# rust
RUSTC_VERSION!!=rustc -V
MAKE_ENV+=	RUSTC_BOOTSTRAP=1
GN_ARGS+=	enable_rust=true \
		rust_sysroot_absolute=\"${LOCALBASE}\" \
		rustc_version=\"${RUSTC_VERSION}\"

# notyet
GN_ARGS+=	use_vaapi=false

.if ${MACHINE_ARCH} == "aarch64"
GN_ARGS+=	extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib\"
PKG_ARGS+=	-Dswiftshader=0
FFMPEG_TARGET=	arm64
.elif ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
GN_ARGS+=	extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib\"
PKG_ARGS+=	-Dswiftshader=1
FFMPEG_TARGET=	x64
.elif ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
GN_ARGS+=	extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib -Wl,--no-keep-memory\"
PKG_ARGS+=	-Dswiftshader=1
FFMPEG_TARGET=	ia32
.else
PKG_ARGS+=	-Dswiftshader=0
.endif

FFMPEG_BRAND=	Chrome
FFMPEG_BDIR=	${WRKSRC}/third_party/ffmpeg/build.${FFMPEG_TARGET}.openbsd/${FFMPEG_BRAND}
FFMPEG_CDIR=	${WRKSRC}/third_party/ffmpeg/chromium/config/${FFMPEG_BRAND}/openbsd/${FFMPEG_TARGET}

# Note: these keys are for OpenBSD use ONLY. For your own distribution,
# please get your own set of keys. It's free!
GN_ARGS+=	google_api_key=\"AIzaSyA015yecfJyWi8UQpneQVrNzIKlxjv4MhI\" \
		ffmpeg_branding=\"${FFMPEG_BRAND}\" \
		proprietary_codecs=true

# These are now restricted to use by Google, so bye-bye sync.
#GN_ARGS+=	google_default_client_id=\"451220141585.apps.googleusercontent.com\"
#GN_ARGS+=	google_default_client_secret=\"nQcDyaBvDyCeDrsRqKIWSHJn\"

# XXX dwz doesn't work with chromium yet
DWZ = :

.if ${FLAVOR:Mdebug}
GN_ARGS+=	symbol_level=1
DEBUG_PACKAGES=	${BUILD_PACKAGES}
.else
GN_ARGS+=	symbol_level=0
.endif

.if ${FLAVOR:Mcomponent}
GN_ARGS+=	is_component_build=true
.else
GN_ARGS+=	is_component_build=false
.endif

.if ${FLAVOR:Mlto}
GN_ARGS+=	extra_cflags=\"-fno-ret-protector -mno-retpoline\" \
		extra_cxxflags=\"-fno-ret-protector -mno-retpoline\" \
		use_thin_lto=true \
		thin_lto_enable_optimizations=true
.else
GN_ARGS+=	use_thin_lto=false \
		thin_lto_enable_optimizations=true
.endif

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	@ln -sf ${MODQT5_MOC} ${WRKDIR}/bin/moc
	@ln -sf ${LOCALBASE}/bin/llvm-ar-${MODCLANG_VERSION} ${WRKDIR}/bin/ar
	cd ${WRKSRC}/media/ffmpeg && \
		${MODPY_BIN} scripts/build_ffmpeg.py openbsd ${FFMPEG_TARGET} --config-only --branding=${FFMPEG_BRAND}
	cd ${FFMPEG_BDIR} && ${GMAKE} ffversion.h
	${INSTALL_DATA_DIR} ${FFMPEG_CDIR}
.for _e in config.h config.asm config_components.h libavcodec libavformat libavutil
	-cp -pR ${FFMPEG_BDIR}/${_e} ${FFMPEG_CDIR}
.endfor
	@mkdir -p ${WRKSRC}/third_party/node/openbsd/node-openbsd/bin
	@ln -sf ${TRUEPREFIX}/bin/node ${WRKSRC}/third_party/node/openbsd/node-openbsd/bin/node
	${SUBST_CMD} ${WRKSRC}/build/gn_run_binary.py \
		${WRKSRC}/build/rust/rust_bindgen.gni \
		${WRKSRC}/v8/tools/run.py \
		${WRKSRC}/tools/protoc_wrapper/protoc_wrapper.py \
		${WRKSRC}/third_party/blink/renderer/build/scripts/run_with_pythonpath.py

# Configuration consists of three steps:
# 1. replace the specified bundled libraries with hooks to use the system libs
# 2. bootstrap gn, the tool to generate ninja files
# 3. run gn with the appropriate configuration arguments
do-configure:
	# Regenerate build and perlasm files (force json to not overwrite our local gn patches)
	# @cd ${WRKSRC}/third_party/boringssl && ${MODPY_BIN} src/util/generate_build_files.py json
	@cd ${WRKSRC} && env -i ${MAKE_ENV} build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}
	@cd ${WRKSRC}/tools/gn && env -i ${MAKE_ENV} LDFLAGS=-L${LOCALBASE}/lib ${MODPY_BIN} bootstrap/bootstrap.py \
		--no-clean -s --gn-gen-args "${GN_ARGS}"
	@cd ${WRKSRC} && env -i ${CONFIGURE_ENV} ${WRKSRC}/out/${BUILDTYPE}/gn \
		gen --args="${GN_ARGS}" out/${BUILDTYPE}

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}
	${INSTALL_PROGRAM} ${BUILDDIR}/${DIST_TARGET_DIR} ${PREFIX}/${DIST_TARGET_DIR}
	${SUBST_PROGRAM} ${FILESDIR}/${DIST_TARGET_DIR} ${PREFIX}/bin/${DIST_TARGET_DIR}
	${INSTALL_PROGRAM} ${BUILDDIR}/chromedriver.unstripped ${PREFIX}/bin/chromedriver
	${INSTALL_MAN} ${WRKSRC}/chrome/app/resources/manpage.1.in ${PREFIX}/man/man1/chrome.1
	@perl -pi -e "s,\@\@PACKAGE\@\@,chromium,g;s,\@\@MENUNAME\@\@,Chromium Web Browser,g" \
		${PREFIX}/man/man1/chrome.1
	${INSTALL_DATA} ${BUILDDIR}/*.pak ${PREFIX}/${DIST_TARGET_DIR}

	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/${DIST_TARGET_DIR}/locales
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/${DIST_TARGET_DIR}
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/${DIST_TARGET_DIR}/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/${DIST_TARGET_DIR}/resources
.for f in snapshot_blob.bin v8_context_snapshot.bin
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/${DIST_TARGET_DIR}
.endfor

	# ANGLE, EGL, Vk
.for f in libEGL libGLESv2
	${INSTALL_DATA} ${BUILDDIR}/${f}.so ${PREFIX}/${DIST_TARGET_DIR}
.endfor
.for f in libVkICD_mock_icd
	${INSTALL_DATA} ${BUILDDIR}/${f}.so ${PREFIX}/${DIST_TARGET_DIR}
.endfor
	${INSTALL_DATA} ${BUILDDIR}/libvulkan.so.1 \
		${PREFIX}/${DIST_TARGET_DIR}/libvulkan.so

.if ${MACHINE_ARCH} != "aarch64"
	# SwiftShader
	${INSTALL_DATA} ${BUILDDIR}/libvk_swiftshader.so ${PREFIX}/${DIST_TARGET_DIR}
	${INSTALL_DATA} ${BUILDDIR}/vk_swiftshader_icd.json ${PREFIX}/${DIST_TARGET_DIR}
.endif

.if ${FLAVOR:Mcomponent}
	cp -Rp ${BUILDDIR}/*.so ${BUILDDIR}/*.so.[0-9] ${PREFIX}/${DIST_TARGET_DIR}/
.endif

.for s in 22_mono 24 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/${DIST_TARGET_DIR}/app/theme/chromium/product_logo_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/chrome.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/chromium-browser.desktop \
		${PREFIX}/share/applications/chromium-browser.desktop

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/chromium
.for f in pledge.main pledge.utility_audio pledge.utility_network pledge.utility_video \
    unveil.gpu unveil.main unveil.utility_audio unveil.utility_network unveil.utility_video
	${INSTALL_DATA} ${FILESDIR}/${f} ${PREFIX}/share/examples/chromium
.endfor

pre-test:
.for _d in ${REGRESS_DISTFILES:C/:[0-9]$//} ${REGRESS_DISTFILES.a:C/:[0-9]$//}
	@${ECHO_MSG} "Extracting ${_d}"
	@case ${_d} in \
	*testdata*.tar.xz) \
		xzdec <${FULLDISTDIR}/${_d} | ${TAR} -C ${WRKDIR} -xf -;; \
	*font*.tar.gz) \
		${GZIP_CMD} -d <${FULLDISTDIR}/${_d} | ${TAR} -C ${WRKDIST}/third_party/test_fonts -xf -;; \
	esac;
.endfor

do-test:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${TEST_TARGET}

.include <bsd.port.mk>
