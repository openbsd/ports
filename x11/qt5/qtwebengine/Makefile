BROKEN-aarch64 =	Failed to reserve memory for new V8 Isolate

USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes

ONLY_FOR_ARCHS =	amd64 aarch64 i386

DPB_PROPERTIES =	parallel parallel2
.if ${MACHINE_ARCH} == "i386"
DPB_PROPERTIES +=	lonesome
.endif

COMMENT =		Chromium-based web engine for Qt5

# Many parts are copied from www/chromium port, so keep in sync
DISTNAME =		qtwebengine-everywhere-opensource-src-${QT5_WEBENGINE_VERSION}
QT5NAME =		QtWebEngine
REVISION =		5

CATEGORIES =		www

SHARED_LIBS +=  Qt5WebEngine              2.0 # 5.15
SHARED_LIBS +=  Qt5WebEngineCore          2.0 # 5.15
SHARED_LIBS +=  Qt5WebEngineWidgets       2.0 # 5.15

# XXX libQt5Pdf.so.1.0: undefined symbol FPDF_InitLibrary
# libQt5Pdf needs to link explicitly against libQt5WebEngineCore?
#SHARED_LIBS +=  Qt5Pdf                    1.0 # 5.15
#SHARED_LIBS +=  Qt5PdfWidgets             1.0 # 5.15

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Designer Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5WebChannel Qt5Widgets Qt5Xml
WANTLIB += X11 X11-xcb Xcomposite Xdamage Xext Xfixes Xi Xrandr
WANTLIB += Xrender Xtst c cbor crypto cups dbus-1 drm event execinfo
WANTLIB += expat fido2 fontconfig freetype gbm glib-2.0 graphite2
WANTLIB += harfbuzz harfbuzz-subset intl jpeg kvm lcms2 m minizip
WANTLIB += nspr4 nss3 nssutil3 opus pcre2-8 plc4 plds4 png sharpyuv
WANTLIB += smime3 snappy sndio usbhid util vpx webp webpdemux
WANTLIB += webpmux xcb xkbcommon xml2 xslt z

# BSD-like, patents
PERMIT_PACKAGE =	Yes

MODULES =	lang/python \
		devel/qmake

MODPY_RUNDEP =	No

RUN_DEPENDS =	fonts/noto/fonts \
		graphics/libexif \
		x11/gtk+3,-cups

BUILD_DEPENDS =	archivers/bzip2 \
		devel/bison \
		devel/gperf \
		devel/ninja \
		lang/node \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		x11/gnome/libgnome-keyring \
		x11/gtk+3 \
		x11/py-xcbgen

LIB_DEPENDS =	archivers/minizip \
		archivers/snappy \
		audio/opus \
		devel/harfbuzz \
		graphics/lcms2 \
		graphics/libwebp \
		multimedia/libvpx \
		print/cups,-libs \
		security/nss \
		textproc/libxslt \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qttools \
		x11/qt5/qtwebchannel \
		x11/xkbcommon

# These libraries are used from the system and the build infrastructure
# removes them from the bundled third_party directory and replaces them
# with hooks to use them from the system.
GN_SYSTEM_LIBS =	libevent libxslt

DEBUGFLAG =		-g0

CONFIGURE_ENV =		NINJAFLAGS="-j${MAKE_JOBS}" \
			NINJA_PATH="${LOCALBASE}/bin/ninja" \
			PATH=${WRKSRC}/bin:${LOCALBASE}/bin:${PATH}

MAKE_ENV +=		CC="${CC}" CXX="${CXX}" \
			C_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
			CPLUS_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
			LIBRARY_PATH="${LOCALBASE}/lib:${X11BASE}/lib" \
			${CONFIGURE_ENV}

.if ${MACHINE_ARCH} == "aarch64"
PKG_ARGS +=		-Dswiftshader=0
.else
PKG_ARGS +=		-Dswiftshader=1
.endif

SUBST_VARS +=	WRKSRC WRKDIR DEBUGFLAG WRKBUILD

MODQMAKE_RECURSIVE =	No

CHROMESRC =	${WRKDIST}/src/3rdparty/chromium

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.for _arch in x64 ia32 arm64
.  for _dir in avcodec avformat avutil
	@cp -pR ${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/lib${_dir} \
		${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/lib${_dir}
.  endfor
.endfor
	@mkdir -p ${CHROMESRC}/media/audio/sndio ${CHROMESRC}/media/audio/openbsd
	@cp ${FILESDIR}/hid_{service,connection}_fido.{cc,h} ${CHROMESRC}/services/device/hid
	@cp ${FILESDIR}/sndio_{out,in}put.{cc,h} ${CHROMESRC}/media/audio/sndio
	@cp ${FILESDIR}/audio_manager_openbsd.{cc,h} ${CHROMESRC}/media/audio/openbsd
	@cp ${FILESDIR}/openbsd.pri ${WRKDIST}/src/buildtools/config/openbsd.pri
	@cp ${FILESDIR}/openbsd.pri ${WRKDIST}/src/core/config/openbsd.pri
	@mkdir -p ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin
	@ln -sf ${TRUEPREFIX}/bin/node ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin/node
	# Rerun syncqt.pl -- otherwise the resulting package misses some forwarding headers
	@cd ${WRKSRC} && /usr/local/lib/qt5/bin/syncqt.pl -version ${QT5_VERSION}
	# Regenerate build and perlasm files (force json to not overwrite our local gn patches)
	@cd ${CHROMESRC}/third_party/boringssl && ${MODPY_BIN} src/util/generate_build_files.py json
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ${CHROMESRC}/build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}

pre-build:
	${SUBST_CMD} ${CHROMESRC}/build/gn_run_binary.py \
		${WRKSRC}/src/3rdparty/chromium/third_party/pdfium/core/fxge/fx_ge_linux.cpp \
		${CHROMESRC}/v8/tools/run.py \
		${CHROMESRC}/tools/protoc_wrapper/protoc_wrapper.py

.include <bsd.port.mk>
