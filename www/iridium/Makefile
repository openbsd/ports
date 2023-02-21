BROKEN-powerpc64 =	Check failed: false. OS architecture not handled. (powerpc64)
BROKEN-riscv64 =	Unknown current CPU: riscv64

USE_WXNEEDED=		Yes

DPB_PROPERTIES=		parallel parallel2
.if ${MACHINE_ARCH} == "i386"
DPB_PROPERTIES+=	lonesome
.endif

COMMENT=		Iridium browser

V=			2023.01.109

REVISION=		9

DISTNAME=		iridium-browser-${V}
PKGNAME=		iridium-${V}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

PATCHFILES=		disable-privacy-sandbox-7f49edb924b6d2b38fcc9a2c76d4e5e1f857e7b9.patch
PATCH_DIST_STRIP=	-p1

CATEGORIES=		www

HOMEPAGE=		https://iridiumbrowser.de/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

FLAVORS=		component
PSEUDO_FLAVORS=		debug lto
FLAVOR?=

# BSD-like
PERMIT_PACKAGE =	Yes

MASTER_SITES=		https://downloads.iridiumbrowser.de/source/ \
			http://nerd.hu/distfiles/
MASTER_SITES0=		https://raw.githubusercontent.com/ungoogled-software/ungoogled-chromium/master/patches/core/ungoogled-chromium/

MODULES=	lang/python x11/qt5
MODQT5_DEPS=	No

COMPILER =	base-clang ports-clang ports-gcc

MODPY_RUNDEP=		No

PATCHORIG=	.orig.port

# uses pledge()
WANTLIB+=	GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xft Xi Xrandr
WANTLIB+=	Xrender Xtst atk-1.0 atk-bridge-2.0 atspi c c++ c++abi cairo
WANTLIB+=	cbor crypto cups dbus-1 drm event execinfo expat ffi fido2
WANTLIB+=	fontconfig freetype fribidi gbm gio-2.0 glib-2.0 gmodule-2.0
WANTLIB+=	gobject-2.0 graphite2 gthread-2.0 harfbuzz harfbuzz-gobject
WANTLIB+=	harfbuzz-subset iconv icudata icui18n icuuc intl jpeg kvm lzo2 m
WANTLIB+=	nspr4 nss3 nssutil3 openh264 pango-1.0 pangocairo-1.0
WANTLIB+=	pangoft2-1.0 pcre2-8 pixman-1 plc4 plds4 png pthread pthread smime3
WANTLIB+=	snappy sndio usbhid util xcb xcb-render xcb-shm xkbcommon xml2
WANTLIB+=	xshmfence xslt z

RUN_DEPENDS=	devel/xdg-utils \
		devel/desktop-file-utils \
		fonts/noto/fonts \
		graphics/libexif \
		x11/gtk+3,-main \
		x11/gtk+3,-guic \
		x11/gtk+3,-cups
BUILD_DEPENDS=	archivers/bzip2 \
		devel/gperf \
		devel/bison \
		lang/node \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		devel/ninja \
		x11/py-xcbgen${MODPY_FLAVOR} \
		x11/qt5/qtbase,-main \
		${MODGCC4_CPPDEP} \
		${RUN_DEPENDS}
LIB_DEPENDS=	archivers/snappy \
		devel/pango \
		graphics/jpeg \
		multimedia/openh264 \
		security/nss \
		textproc/icu4c \
		textproc/libxslt \
		x11/gnome/at-spi2-core \
		x11/xkbcommon \
		print/cups,-libs \
		${MODGCC4_CPPLIBDEP}

.include <bsd.own.mk>

# Set BUILDTYPE to Release
BUILDTYPE=	Release

SUBST_VARS+=	WRKSRC WRKDIR DEBUGFLAG

ALL_TARGET=		chrome
TEST_TARGET=		base_unittests
DIST_TARGET_DIR=	iridium

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

# These libraries are used from the system and the build infrastructure
# removes them from the bundled third_party directory and replaces them
# with hooks to use them from the system.
GN_SYSTEM_LIBS=	icu \
		libevent \
		libjpeg \
		libpng \
		libxml \
		libxslt \
		openh264 \
		snappy

GN_ARGS=	enable_nacl=false \
		is_official_build=true \
		is_debug=false \
		is_cfi=false \
		optimize_webui=true \
		enable_js_type_check=false \
		enable_remoting=false \
		enable_hangout_services_extension=true \
		use_bundled_fontconfig=false \
		use_kerberos=false \
		use_sndio=true \
		use_cups=true \
		use_system_libdrm=true \
		use_system_libjpeg=true \
		use_system_harfbuzz=true \
		use_system_freetype=false \
		use_gnome_keyring=false \
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
		use_custom_libcxx=false \
		chrome_pgo_phase=0 \
		use_udev=true

# notyet
GN_ARGS+=	use_vaapi=false

.if ${MACHINE_ARCH} == "i386"
GN_ARGS+=	extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib -Wl,--no-keep-memory\"
.else
GN_ARGS+=	extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib\"
.endif

.if ${MACHINE_ARCH} == "aarch64"
PKG_ARGS+=	-Dswiftshader=0
.else
PKG_ARGS+=	-Dswiftshader=1
.endif

# Note: these keys are for OpenBSD use ONLY. For your own distribution,
# please get your own set of keys. It's free!
GN_ARGS+=	google_api_key=\"AIzaSyA015yecfJyWi8UQpneQVrNzIKlxjv4MhI\" \
		ffmpeg_branding=\"Chrome\" \
		proprietary_codecs=true

# These are now restricted to use by Google, so bye-bye sync.
#GN_ARGS+=	google_default_client_id=\"451220141585.apps.googleusercontent.com\"
#GN_ARGS+=	google_default_client_secret=\"nQcDyaBvDyCeDrsRqKIWSHJn\"

# XXX dwz doesn't work with iridium yet
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
.for _arch in x64 ia32 arm64
.  for _dir in avcodec avformat avutil
	@cp -pR ${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/lib${_dir} \
		${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/lib${_dir}
.  endfor
.endfor
	@mkdir -p ${WRKSRC}/third_party/node/openbsd/node-openbsd/bin
	@ln -sf ${TRUEPREFIX}/bin/node ${WRKSRC}/third_party/node/openbsd/node-openbsd/bin/node
	${SUBST_CMD} ${WRKSRC}/build/gn_run_binary.py ${WRKSRC}/v8/tools/run.py \
		${WRKSRC}/tools/protoc_wrapper/protoc_wrapper.py \
		${WRKSRC}/third_party/blink/renderer/build/scripts/run_with_pythonpath.py

# Configuration consists of three steps:
# 1. replace the specified bundled libraries with hooks to use the system libs
# 2. bootstrap gn, the tool to generate ninja files
# 3. run gn with the appropriate configuration arguments
do-configure:
	# Regenerate build and perlasm files (force json to not overwrite our local gn patches)
	@cd ${WRKSRC}/third_party/boringssl && ${MODPY_BIN} src/util/generate_build_files.py json
	@cd ${WRKSRC} && env -i ${MAKE_ENV} build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}
	@cd ${WRKSRC}/tools/gn && env -i ${MAKE_ENV} LDFLAGS=-L${LOCALBASE}/lib ${MODPY_BIN} bootstrap/bootstrap.py \
		--no-clean -s --gn-gen-args "${GN_ARGS}"
	@cd ${WRKSRC} && env -i ${CONFIGURE_ENV} ${WRKSRC}/out/Release/gn \
		gen --args="${GN_ARGS}" out/${BUILDTYPE}

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}
	${INSTALL_PROGRAM} ${BUILDDIR}/chrome ${PREFIX}/${DIST_TARGET_DIR}/${DIST_TARGET_DIR}
	${SUBST_PROGRAM} ${FILESDIR}/${DIST_TARGET_DIR} ${PREFIX}/bin/${DIST_TARGET_DIR}
	${INSTALL_MAN} ${WRKSRC}/chrome/app/resources/manpage.1.in ${PREFIX}/man/man1/iridium.1
	@perl -pi -e "s,\@\@PACKAGE\@\@,chromium,g;s,\@\@MENUNAME\@\@,Iridium Web Browser,g" \
		${PREFIX}/man/man1/iridium.1
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
.endif

.if ${FLAVOR:Mcomponent}
	cp -Rp ${BUILDDIR}/*.so ${BUILDDIR}/*.so.[0-9] ${PREFIX}/${DIST_TARGET_DIR}/
.endif

.for s in 22_mono 24 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/chrome/app/theme/chromium/product_logo_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/iridium.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/iridium-browser.desktop \
		${PREFIX}/share/applications/iridium-browser.desktop

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iridium
.for f in pledge.main pledge.utility_audio pledge.utility_network pledge.utility_video \
    unveil.gpu unveil.main unveil.plugin unveil.renderer unveil.utility unveil.utility_audio \
    unveil.utility_network unveil.utility_video
	${INSTALL_DATA} ${FILESDIR}/${f} ${PREFIX}/share/examples/iridium
.endfor

.include <bsd.port.mk>
