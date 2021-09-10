# $OpenBSD: Makefile,v 1.22 2021/09/10 05:35:58 rsadowski Exp $

USE_WXNEEDED =		Yes

ONLY_FOR_ARCHS =	amd64 aarch64 i386

DPB_PROPERTIES=		parallel parallel2
.if ${MACHINE_ARCH} == "i386"
# override parallel
DPB_PROPERTIES=		lonesome
.endif

COMMENT =		Chromium-based web engine for Qt5

# Many parts are copied from www/chromium port, so keep in sync
QT5NAME =		QtWebEngine
REVISION =		4

CATEGORIES =		www

SHARED_LIBS +=  Qt5WebEngine              1.0 # 5.13
SHARED_LIBS +=  Qt5WebEngineCore          1.0 # 5.13
SHARED_LIBS +=  Qt5WebEngineWidgets       1.0 # 5.13
SHARED_LIBS +=  Qt5Pdf                    0.0 # 5.15
SHARED_LIBS +=  Qt5PdfWidgets             0.0 # 5.15

# BSD-like, patents
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Designer Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5WebChannel Qt5Widgets Qt5Xml
WANTLIB += X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xrandr Xrender Xss Xtst avcodec avformat avutil
WANTLIB += c cbor crypto cups dbus-1 event execinfo expat fido2
WANTLIB += fontconfig freetype glib-2.0 graphite2 harfbuzz iconv
WANTLIB += intl jpeg kvm lcms2 lzma m nspr4 nss3 nssutil3 opus
WANTLIB += pcre plc4 plds4 png smime3 snappy sndio swresample
WANTLIB += usbhid util vpx webp webpdemux webpmux xcb xcb-dri3
WANTLIB += xkbcommon xml2 xslt z

MODULES =	lang/python \
		devel/qmake
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils \
		fonts/noto/fonts \
		graphics/libexif \
		x11/gtk+3,-cups \
		x11/gtk+3,-guic

BUILD_DEPENDS =	archivers/bzip2 \
		devel/bison \
		devel/gperf \
		devel/ninja \
		devel/protobuf \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils

LIB_DEPENDS =	archivers/snappy \
		devel/harfbuzz \
		graphics/ffmpeg \
		graphics/lcms2 \
		graphics/libwebp \
		multimedia/libvpx \
		print/cups,-libs \
		security/nss \
		textproc/libxml \
		textproc/libxslt \
		x11/xkbcommon \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qttools \
		x11/qt5/qtwebchannel

# These libraries are used from the system and the build infrastructure
# removes them from the bundled third_party directory and replaces them
# with hooks to use them from the system.
GN_SYSTEM_LIBS =	libevent libxml libxslt yasm

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
PKG_ARGS+=		-Dswiftshader=0
.else
PKG_ARGS+=		-Dswiftshader=1
.endif

PATCHORIG=		.orig.port

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
	@cp ${FILESDIR}/openbsd.pri ${WRKDIST}/src/core/config/
	@cp ${FILESDIR}/openbsd.pri ${WRKDIST}/src/buildtools/config/
	@cp ${FILESDIR}/sndio_{out,in}put.{cc,h} ${CHROMESRC}/media/audio/sndio
	@cp ${FILESDIR}/hid_{service,connection}_fido.{cc,h} ${CHROMESRC}/services/device/hid
	@cp ${FILESDIR}/audio_manager_openbsd.{cc,h} ${CHROMESRC}/media/audio/openbsd
	# Rerun syncqt.pl -- otherwise the resulting package misses some forwarding headers
	@cd ${WRKSRC} && /usr/local/lib/qt5/bin/syncqt.pl -version ${QT5_VERSION}
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ${CHROMESRC}/build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS} \


pre-build:
	${SUBST_CMD} ${CHROMESRC}/build/gn_run_binary.py ${CHROMESRC}/v8/tools/run.py \
		${CHROMESRC}/tools/protoc_wrapper/protoc_wrapper.py \
		${CHROMESRC}/build/config/compiler/BUILD.gn \
		${WRKDIST}/src/core/config/openbsd.pri

.include <bsd.port.mk>
