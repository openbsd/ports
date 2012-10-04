# $OpenBSD: Makefile,v 1.107 2012/10/04 07:40:25 landry Exp $

ONLY_FOR_ARCHS=		i386 amd64

COMMENT=		Chromium browser

V=			21.0.1180.89
DISTNAME=		chromium-${V}

CATEGORIES=		www

HOMEPAGE=		http://code.google.com/chromium/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.bz2

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://commondatastorage.googleapis.com/chromium-browser-official/

MODULES=	gcc4 lang/python

MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++
MODGCC4_VERSION=4.6

MODPY_RUNDEP=	No

WANTLIB += X11 Xext Xfixes Xrender Xss bz2 c cairo cups dbus-1 event
WANTLIB += execinfo expat fontconfig freetype gconf-2 gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += jpeg m nspr4 nss3 nssutil3 pango-1.0 pangocairo-1.0
WANTLIB += plc4 png pthread pthread-stubs smime3 speex estdc++
WANTLIB += xml2 xslt
WANTLIB += Xcomposite atk-1.0 usb usb-1.0

RUN_DEPENDS=	devel/xdg-utils \
		devel/desktop-file-utils \
		x11/gnome/icon-theme \
		x11/gnome/libgnome-keyring \
		x11/gtk+2,-guic
BUILD_DEPENDS=	archivers/bzip2 \
		devel/gperf \
		devel/bison \
		devel/flex \
		shells/bash \
		sysutils/flock \
		x11/gnome/libgnome-keyring
# required for parallel building
BUILD_DEPENDS+= gmake->=3.82p2:devel/gmake
LIB_DEPENDS=	devel/libexecinfo \
		archivers/bzip2 \
		devel/libusb-compat \
		security/nss \
		devel/gconf2 \
		textproc/libxslt \
		x11/gtk+2 \
		audio/speex \
		print/cups,-libs

.include <bsd.own.mk>

# Set BUILDTYPE to Debug (or omit it) for a debug build
BUILDTYPE=	Release
MAKE_ENV=	BUILDTYPE=${BUILDTYPE} V=1

USE_GMAKE=	Yes

REGRESS_TARGET=	base_unittests

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

ALL_TARGET=	chrome

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

GYP_DEFS=	-Duse_system_bzip2=1 \
		-Duse_system_libevent=1 \
		-Duse_system_libjpeg=1 \
		-Duse_system_libpng=1 \
		-Duse_system_libusb=1 \
		-Duse_system_libxml=1 \
		-Duse_system_speex=1 \
		-Duse_system_sqlite=0 \
		-Duse_system_vpx=0 \
		-Duse_system_yasm=0 \
		-Duse_system_zlib=0 \
		-Ddisable_nacl=1 \
		-Ddisable_sse2=1 \
		-Dlinux_use_tcmalloc=0 \
		-Dlinux_strip_binary=1 \
		-Denable_webrtc=0 \
		-Denable_one_click_signin=1 \
		-Duse_kerberos=0 \
		-DOS=openbsd

pre-configure:
	${SUBST_CMD} ${WRKSRC}/webkit/plugins/npapi/plugin_list_posix.cc
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.for _arch in x64 ia32
	@cp -pR ${WRKSRC}/third_party/ffmpeg/chromium/config/Chromium/linux/${_arch}/libavcodec \
		${WRKSRC}/third_party/ffmpeg/chromium/config/Chromium/openbsd/${_arch}/libavcodec
.endfor
	@cp -R ${WRKSRC}/third_party/libvpx/source/config/linux \
		${WRKSRC}/third_party/libvpx/source/config/openbsd

# gyp_chromium generates all the Makefiles from gyp
do-configure:
	@cd ${WRKSRC} && \
	env -i ${CONFIGURE_ENV} ${MODPY_BIN} build/gyp_chromium -fmake --ignore-environment \
	${GYP_DEFS} \
	"--depth=${WRKSRC}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/chrome
	${INSTALL_PROGRAM} ${BUILDDIR}/chrome ${PREFIX}/chrome
	${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -c \
		${FILESDIR}/chrome ${PREFIX}/bin/chrome
	chmod ${BINMODE} ${PREFIX}/bin/chrome
	${INSTALL_MAN} ${BUILDDIR}/chrome.1 ${PREFIX}/man/man1
.for p in chrome content_resources resources theme_resources_standard ui_resources_standard
	${INSTALL_DATA} ${BUILDDIR}/${p}.pak ${PREFIX}/chrome
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/chrome
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/chrome/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/chrome/resources
.for f in libffmpegsumo.so mksnapshot protoc
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/chrome
.endfor
.for s in 22 24 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/chrome/app/theme/chromium/product_logo_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/chrome.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/chrome.desktop \
		${PREFIX}/share/applications/chrome.desktop

.include <bsd.port.mk>
