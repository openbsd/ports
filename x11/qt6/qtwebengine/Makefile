# Based on Chromium version: 122.0.6261.171
# Patched with security patches up to Chromium version: 131.0.6778.70
ONLY_FOR_ARCHS =	amd64 aarch64 i386

USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes

DPB_PROPERTIES =	parallel parallel2
.if ${MACHINE_ARCH} == "i386"
DPB_PROPERTIES +=	lonesome
.endif

QT6NAME =	QtWebEngine
COMMENT =	Qt chromium based web engine
VERSION =	${QT6_VERSION}
PKGSPEC =	qt6-qtwebengine-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Pdf                        2.0 # 0.0
SHARED_LIBS +=  Qt6PdfQuick                   1.0 # 0.0
SHARED_LIBS +=  Qt6PdfWidgets                 1.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineCore              2.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineQuick             2.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineQuickDelegatesQml 1.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineWidgets           1.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Designer Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickWidgets Qt6WebChannel Qt6WebChannelQuick Qt6Widgets
WANTLIB += Qt6Xml X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xrandr Xrender Xtst c cbor crypto dbus-1 drm event
WANTLIB += execinfo expat fido2 fontconfig freetype gbm glib-2.0
WANTLIB += graphite2 harfbuzz harfbuzz-subset icudata icui18n
WANTLIB += icuuc intl jpeg kvm lcms2 lzma m minizip nspr4 nss3
WANTLIB += nssutil3 openh264 openjp2 opus pcre2-8 plc4 plds4 png
WANTLIB += sharpyuv smime3 snappy sndio tiff usbhid util vpx webp
WANTLIB += webpdemux webpmux xcb xkbcommon xkbfile xml2 xshmfence
WANTLIB += xslt z

MODULES =	lang/python

MODPY_RUNDEP=	No

RUN_DEPENDS =	fonts/noto/fonts \
		graphics/libexif \
		x11/gtk+3,-main \
		x11/gtk+4,-guic \
		x11/gtk+3,-cups

BUILD_DEPENDS =	audio/pulseaudio \
		archivers/bzip2 \
		devel/bison \
		devel/gperf \
		devel/ninja \
		devel/py-html5lib \
		lang/node \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		x11/gtk+3 \
		sysutils/libudev-openbsd \
		x11/py-xcbgen \
		x11/qt6/qthttpserver

LIB_DEPENDS =	archivers/minizip \
		archivers/snappy \
		audio/opus \
		devel/glib2 \
		devel/harfbuzz \
		devel/pcre2 \
		graphics/graphite2 \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/libwebp \
		graphics/openjp2 \
		graphics/png \
		graphics/tiff \
		multimedia/libvpx \
		multimedia/openh264 \
		security/nss \
		textproc/libxml \
		textproc/libxslt \
		x11/dbus \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qttools \
		x11/qt6/qtwebchannel \
		x11/xkbcommon

# MAKE_JOBS is too invasive because it also affects the number of jobs
# for ninja(1) and would slow everything down which we don't want.  We pass the
# real number of make jobs via NINJA_JOBS to ninja(1) to CONFIGURE_ENV.
NINJA_JOBS !!=	sysctl -n hw.ncpuonline

# The build system reads the environment variable $NINJA_PATH to decide whether
# to boostrap ninja or not (and also to invoke it afterwards). CC and CXX are
# read by some Chromium code to determine which compiler to invoke when running
# some configuration tests.
CONFIGURE_ENV +=	LC_ALL=en_US.UTF-8 \
			NINJAFLAGS="-j${NINJA_JOBS}" \
			NINJA_PATH="${LOCALBASE}/bin/ninja" \
			PATH=${WRKSRC}/bin:${LOCALBASE}/bin:${PATH}

MAKE_ENV +=		CC="${CC}" CXX="${CXX}" \
			C_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
			CPLUS_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
			LIBRARY_PATH="${LOCALBASE}/lib:${X11BASE}/lib" \
			${CONFIGURE_ENV}

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DQT_FEATURE_webengine_full_debug_info=ON \
			-DQT_FEATURE_pdf_v8=ON

CONFIGURE_ARGS +=	-DCMAKE_MESSAGE_LOG_LEVEL=STATUS \
			-DCMAKE_TOOLCHAIN_FILE="${LOCALBASE}/lib/cmake/Qt6/qt.toolchain.cmake"

CONFIGURE_ARGS +=	-DQT_FEATURE_webengine_system_minizip=ON \
			-DQT_FEATURE_webengine_system_sndio=ON \
			-DQT_FEATURE_webengine_system_opus=ON \
			-DQT_FEATURE_webengine_system_libwebp=ON \
			-DQT_FEATURE_webengine_system_libvpx=ON \
			-DQT_FEATURE_webengine_system_libpng=ON \
			-DQT_FEATURE_webengine_system_zlib=ON

# needs a modified ffmpeg to be usable (bug #831487), and even then
# it is picky about codecs/version and system's can lead to unexpected
# issues (e.g. builds but some files don't play even with support)
CONFIGURE_ARGS +=	-DQT_FEATURE_webengine_proprietary_codecs=ON \
			-DQT_FEATURE_webengine_system_ffmpeg=OFF

GN_SYSTEM_LIBS=		fontconfig freetype harfbuzz-ng libdrm libxml libevent libxslt openh264 opus

CONFIGURE_ARGS +=	-DQT_FEATURE_webengine_system_icu=ON
LIB_DEPENDS +=		textproc/icu4c

CONFIGURE_ARGS +=	-DQT_FEATURE_webengine_vaapi=OFF

CHROMESRC =	${WRKDIST}/src/3rdparty/chromium

SUBST_VARS +=	WRKSRC WRKDIR

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.if ${MACHINE_ARCH} == "aarch64"
FFMPEG_TARGET=	arm64
.elif ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
FFMPEG_TARGET=	x64
.elif ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
FFMPEG_TARGET=	ia32
.endif

FFMPEG_BRAND=	Chrome
FFMPEG_BDIR=	${CHROMESRC}/build.${FFMPEG_TARGET}.openbsd/${FFMPEG_BRAND}
FFMPEG_CDIR=	${CHROMESRC}/third_party/ffmpeg/chromium/config/${FFMPEG_BRAND}/openbsd/${FFMPEG_TARGET}

post-patch:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	@ln -sf ${LOCALBASE}/bin/llvm-ar-${MODCLANG_VERSION} ${WRKDIR}/bin/ar
	@mkdir -p ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin
	@ln -sf ${TRUEPREFIX}/bin/node ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin/node
	${SUBST_CMD} \
		${CHROMESRC}/build/gn_run_binary.py \
		${CHROMESRC}/v8/tools/run.py \
		${CHROMESRC}/tools/protoc_wrapper/protoc_wrapper.py \
		${CHROMESRC}/third_party/blink/renderer/build/scripts/run_with_pythonpath.py
	# FIXME if we update base libcxx
	cp /usr/include/c++/v1/__config_site \
		${CHROMESRC}/third_party/libc++/src/include/__config_site

pre-configure:
	cd ${CHROMESRC}/third_party/ffmpeg && \
		${MODPY_BIN} chromium/scripts/build_ffmpeg.py openbsd ${FFMPEG_TARGET} --config-only --branding=${FFMPEG_BRAND}
	cd ${FFMPEG_BDIR} && ${GMAKE} ffversion.h
	${INSTALL_DATA_DIR} ${FFMPEG_CDIR}
.for _e in config.h config.asm config_components.h libavcodec libavformat libavutil
	-cp -pR ${FFMPEG_BDIR}/${_e} ${FFMPEG_CDIR}
.endfor
	cd ${CHROMESRC} && env -i ${MAKE_ENV} ${MODPY_BIN} build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}

do-build:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		cmake --build ${WRKBUILD} ${_MAKE_VERBOSE} -j 1

.include <bsd.port.mk>
