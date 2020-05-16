# $OpenBSD: Makefile,v 1.6 2020/05/16 07:02:59 rsadowski Exp $

USE_WXNEEDED =		Yes

# Many parts are copied from www/chromium port, so keep in sync
QT5NAME =		QtWebEngine

COMMENT =		Chromium-based web engine for Qt5

CATEGORIES =		www

SHARED_LIBS +=  Qt5WebEngine              0.0 # 5.13
SHARED_LIBS +=  Qt5WebEngineCore          0.0 # 5.13
SHARED_LIBS +=  Qt5WebEngineWidgets       0.0 # 5.13

# BSD-like, patents
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Designer Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5WebChannel Qt5Widgets Qt5Xml X11 X11-xcb Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xrender Xss Xtst avcodec
WANTLIB += avformat avutil c cups dbus-1 event execinfo expat
WANTLIB += fontconfig freetype glib-2.0 graphite2 harfbuzz iconv
WANTLIB += icudata icui18n icuuc intl jpeg kvm lcms2 lzma m nspr4
WANTLIB += nss3 nssutil3 opus pcre plc4 plds4 png smime3 snappy
WANTLIB += sndio swresample util vpx webp webpdemux webpmux xcb
WANTLIB += xml2 xslt z

MODULES =	lang/python \
		devel/qmake

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/xdg-utils \
		devel/desktop-file-utils \
		fonts/noto/fonts \
		graphics/libexif \
		x11/gtk+3,-guic \
		x11/gtk+3,-cups

BUILD_DEPENDS =	archivers/bzip2 \
		devel/protobuf \
		devel/gperf \
		devel/bison \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		devel/ninja \
		x11/gtk+3

LIB_DEPENDS =	archivers/snappy \
		textproc/libxml \
		devel/harfbuzz \
		devel/libexecinfo \
		graphics/ffmpeg \
		graphics/libwebp \
		multimedia/libvpx \
		print/cups,-libs \
		security/nss \
		textproc/libxslt \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qttools \
		x11/qt5/qtwebchannel

# These libraries are used from the system and the build infrastructure
# removes them from the bundled third_party directory and replaces them
# with hooks to use them from the system.
GN_SYSTEM_LIBS =	libevent \
			libxslt

DEBUGFLAG =		-g0

MAKE_ENV =		V=1

.if ${MACHINE_ARCH} == "aarch64"
PKG_ARGS+=		-Dswiftshader=0
.else
PKG_ARGS+=		-Dswiftshader=1
.endif

PATCHORIG=		.orig.port

# XXX dwz doesn't work with chromium yet
DWZ = :

SUBST_VARS +=	WRKSRC WRKDIR DEBUGFLAG

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
	@cp ${FILESDIR}/sndio_{out,in}put.{cc,h} ${CHROMESRC}/media/audio/sndio
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
