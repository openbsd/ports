# Based on Chromium version: 112.0.5615.213
# Patched with security patches up to: 119.0.6045.123

ONLY_FOR_ARCHS =	amd64 aarch64 i386
BROKEN-i386 =		"ld.lld: error: relocation R_386_32 cannot be used against symbol 'ff_pw_16'; recompile with -fPIC", etc.

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

SHARED_LIBS +=  Qt6Pdf                        1.0 # 0.0
SHARED_LIBS +=  Qt6PdfQuick                   1.0 # 0.0
SHARED_LIBS +=  Qt6PdfWidgets                 1.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineCore              1.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineQuick             1.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineQuickDelegatesQml 1.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineWidgets           1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Designer Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickWidgets Qt6WebChannel
WANTLIB += Qt6WebChannelQuick Qt6Widgets Qt6Xml X11 Xau Xcomposite
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xrandr Xrender Xtst c
WANTLIB += cbor crypto dbus-1 drm event execinfo expat fido2 fontconfig
WANTLIB += freetype gbm glib-2.0 graphite2 harfbuzz harfbuzz-subset
WANTLIB += icudata icui18n icuuc intl jpeg kvm lcms2 lzma m minizip
WANTLIB += nspr4 nss3 nssutil3 openh264 openjp2 opus pcre2-8 plc4
WANTLIB += plds4 png sharpyuv smime3 snappy sndio tiff usbhid
WANTLIB += util vpx webp webpdemux webpmux xcb xkbcommon xkbfile
WANTLIB += xml2 xshmfence xslt z

MODULES +=	lang/python

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
		devel/py-html5lib${MODPY_FLAVOR} \
		lang/node \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		x11/gtk+3 \
		sysutils/libudev-openbsd \
		x11/py-xcbgen${MODPY_FLAVOR}

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

CONFIGURE_ENV =	LC_ALL=en_US.UTF-8 \
		NINJAFLAGS="-j${MAKE_JOBS}" \
		NINJA_PATH="${LOCALBASE}/bin/ninja" \
		PATH=${WRKSRC}/bin:${LOCALBASE}/bin:${PATH}

MAKE_ENV +=	CC="${CC}" CXX="${CXX}" \
		C_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
		CPLUS_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
		LIBRARY_PATH="${LOCALBASE}/lib:${X11BASE}/lib" \
		${CONFIGURE_ENV}

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DQT_FEATURE_webengine_full_debug_info=ON \
			-DQT_FEATURE_pdf_v8=ON

CONFIGURE_ARGS +=	-DCMAKE_MESSAGE_LOG_LEVEL=STATUS \
			-DCMAKE_TOOLCHAIN_FILE="${LOCALBASE}/lib/cmake/Qt6/qt.toolchain.cmake"

CONFIGURE_ARGS +=	-DQT_FEATURE_webengine_proprietary_codecs=ON \
			-DQT_FEATURE_webengine_system_ffmpeg=OFF \
			-DQT_FEATURE_webengine_system_minizip=ON \
			-DQT_FEATURE_webengine_system_sndio=ON \
			-DQT_FEATURE_webengine_system_opus=ON \
			-DQT_FEATURE_webengine_system_libwebp=ON \
			-DQT_FEATURE_webengine_system_libvpx=ON \
			-DQT_FEATURE_webengine_system_libpng=ON \
			-DQT_FEATURE_webengine_system_zlib=ON

CONFIGURE_ARGS +=	-DQT_FEATURE_webengine_system_icu=ON
LIB_DEPENDS +=		textproc/icu4c

CONFIGURE_ARGS +=	-DQT_FEATURE_webengine_vaapi=OFF


GN_SYSTEM_LIBS=	libevent \
		libxml \
		libxslt

GN_SYSTEM_LIBS=        fontconfig freetype harfbuzz-ng libdrm libxml libevent libxslt openh264 opus

CHROMESRC =	${WRKDIST}/src/3rdparty/chromium

SUBST_VARS +=	WRKSRC WRKDIR DEBUGFLAG

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.if ${MACHINE_ARCH} == "aarch64"
PKG_ARGS+=	-Dswiftshader=0
FFMPEG_TARGET=	arm64
.elif ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
PKG_ARGS+=	-Dswiftshader=1
FFMPEG_TARGET=	x64
.elif ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
PKG_ARGS+=	-Dswiftshader=1
FFMPEG_TARGET=	ia32
.else
PKG_ARGS+=	-Dswiftshader=0
.endif

FFMPEG_BRAND=	Chrome
FFMPEG_BDIR=	${CHROMESRC}/build.${FFMPEG_TARGET}.openbsd/${FFMPEG_BRAND}
FFMPEG_CDIR=	${CHROMESRC}/third_party/ffmpeg/chromium/config/${FFMPEG_BRAND}/openbsd/${FFMPEG_TARGET}

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	@ln -sf ${LOCALBASE}/bin/llvm-ar-${MODCLANG_VERSION} ${WRKDIR}/bin/ar
	cd ${CHROMESRC}/third_party/ffmpeg && \
		${MODPY_BIN} chromium/scripts/build_ffmpeg.py openbsd ${FFMPEG_TARGET} --config-only --branding=${FFMPEG_BRAND}
	cd ${FFMPEG_BDIR} && ${GMAKE} ffversion.h
	${INSTALL_DATA_DIR} ${FFMPEG_CDIR}
.for _e in config.h config.asm config_components.h libavcodec libavformat libavutil
	-cp -pR ${FFMPEG_BDIR}/${_e} ${FFMPEG_CDIR}
.endfor
	@mkdir -p ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin
	@ln -sf ${TRUEPREFIX}/bin/node ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin/node
	${SUBST_CMD} ${CHROMESRC}/build/gn_run_binary.py ${CHROMESRC}/v8/tools/run.py \
		${CHROMESRC}/tools/protoc_wrapper/protoc_wrapper.py \
		${CHROMESRC}/third_party/blink/renderer/build/scripts/run_with_pythonpath.py
	@cd ${CHROMESRC} && env -i ${MAKE_ENV} ${MODPY_BIN} build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}
	# # Regenerate build and perlasm files (force json to not overwrite our local gn patches)
	@cd ${CHROMESRC}/third_party/boringssl && ${MODPY_BIN} src/util/generate_build_files.py json

.include <bsd.port.mk>
