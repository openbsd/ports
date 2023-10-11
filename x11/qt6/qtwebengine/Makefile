QT6NAME =	QtWebEngine
COMMENT =	Qt chromium based web engine
PKGSPEC =	qt6-qtwebengine-${QT6_PKGSPEC}

USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes
USE_NOEXECONLY=		Yes

SHARED_LIBS +=  Qt6Pdf                    0.0 # 0.0
SHARED_LIBS +=  Qt6PdfQuick               0.0 # 0.0
SHARED_LIBS +=  Qt6PdfWidgets             0.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineCore          0.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineQuick         0.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineQuickDelegatesQml 0.0 # 0.0
SHARED_LIBS +=  Qt6WebEngineWidgets       0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6OpenGLWidgets Qt6PrintSupport Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickWidgets Qt6WebChannel Qt6Widgets Qt6Xml
WANTLIB += X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xi Xrandr
WANTLIB += Xrender Xtst c cbor crypto dbus-1 drm event execinfo
WANTLIB += expat fido2 fontconfig freetype glib-2.0 graphite2
WANTLIB += harfbuzz harfbuzz-subset intl jpeg kvm lcms2 m minizip
WANTLIB += nspr4 nss3 nssutil3 openjp2 opus pcre2-8 plc4 plds4
WANTLIB += png sharpyuv smime3 snappy sndio usbhid util vpx webp
WANTLIB += webpdemux webpmux xcb xkbcommon xkbfile xml2 xshmfence
WANTLIB += xslt z

MODULES +=	lang/python

RUN_DEPENDS =	fonts/noto/fonts \
		graphics/libexif \
		x11/gtk+3,-main \
		x11/gtk+4,-guic \
		x11/gtk+3,-cups

BUILD_DEPENDS =	archivers/bzip2 \
		devel/bison \
		devel/gperf \
		devel/ninja \
		devel/py-html5lib${MODPY_FLAVOR} \
		lang/node \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		x11/gtk+3 \
		x11/py-xcbgen

LIB_DEPENDS =	archivers/minizip \
		archivers/snappy \
		audio/opus \
		graphics/lcms2 \
		graphics/libwebp \
		graphics/openjp2 \
		multimedia/libvpx \
		security/nss \
		textproc/libxslt \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwebchannel \
		x11/xkbcommon

CONFIGURE_ENV =	NINJAFLAGS="-j${MAKE_JOBS}" \
		NINJA_PATH="${LOCALBASE}/bin/ninja" \
		PATH=${WRKSRC}/bin:${LOCALBASE}/bin:${PATH}

MAKE_ENV +=	CC="${CC}" CXX="${CXX}" \
		C_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
		CPLUS_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
		LIBRARY_PATH="${LOCALBASE}/lib:${X11BASE}/lib" \
		${CONFIGURE_ENV}


CONFIGURE_ARGS =	-DQT_FEATURE_webengine_system_zlib=ON \
			-DQT_FEATURE_webengine_system_minizip=ON

GN_SYSTEM_LIBS=	fontconfig freetype harfbuzz-ng libdrm libevent libxml libxslt openh264 opus

CHROMESRC =	${WRKDIST}/src/3rdparty/chromium

SUBST_VARS +=	WRKSRC WRKDIR DEBUGFLAG

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.for _arch in x64 ia32 arm64
.  for _dir in avcodec avformat avutil
	@cp -pR ${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/lib${_dir} \
		${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/lib${_dir}
.  endfor
.endfor
	@cd ${CHROMESRC} && env -i ${MAKE_ENV} ${MODPY_BIN} build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}
	@mkdir -p ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin
	@ln -sf ${TRUEPREFIX}/bin/node ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin/node
	${SUBST_CMD} ${CHROMESRC}/build/gn_run_binary.py ${CHROMESRC}/v8/tools/run.py \
		${CHROMESRC}/tools/protoc_wrapper/protoc_wrapper.py \
		${CHROMESRC}/third_party/blink/renderer/build/scripts/run_with_pythonpath.py

.include <bsd.port.mk>
