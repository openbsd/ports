# $OpenBSD: Makefile,v 1.303 2016/08/19 19:58:47 robert Exp $

ONLY_FOR_ARCHS=		i386 amd64
DPB_PROPERTIES=		parallel

COMMENT=		Chromium browser

V=			52.0.2743.116
DISTNAME=		chromium-${V}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}
REVISION=		1

CATEGORIES=		www

HOMEPAGE=		https://www.chromium.org/Home

MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

FLAVORS=		debug
FLAVOR?=

# BSD-like
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP =	Yes

MASTER_SITES=	https://commondatastorage.googleapis.com/chromium-browser-official/
MASTER_SITES0=	http://nerd.hu/distfiles/

MODULES=	lang/clang lang/python gcc4

MODCLANG_ARCHS=	*
MODCLANG_LANGS=	c++

MODPY_RUNDEP=	No

PATCHORIG=	.orig.port

# uses pledge()
WANTLIB += X11 Xext Xfixes Xrender Xss c cairo cups dbus-1 event
WANTLIB += execinfo expat fontconfig freetype gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0
WANTLIB += png pthread
WANTLIB += xml2 xslt
WANTLIB += sndio
WANTLIB += Xcomposite
WANTLIB += estdc++>=17
WANTLIB += Xi Xtst
WANTLIB += Xdamage
WANTLIB += Xcursor Xrandr gio-2.0
WANTLIB += nspr4 nss3 nssutil3 smime3
WANTLIB += atk-1.0 gmodule-2.0
WANTLIB += pthread-stubs

RUN_DEPENDS=	devel/xdg-utils \
		devel/desktop-file-utils \
		fonts/noto/fonts \
		graphics/libexif \
		x11/gnome/libgnome-keyring \
		x11/gtk+3,-guic
BUILD_DEPENDS=	archivers/bzip2 \
		devel/gperf \
		devel/bison \
		devel/yasm \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		x11/gnome/libgnome-keyring \
		devel/ninja \
		lang/gcc/4.9,-c++>=4.9,<4.10
LIB_DEPENDS=	devel/libexecinfo \
		security/nss \
		devel/gconf2 \
		textproc/libxslt \
		x11/gtk+2 \
		print/cups,-libs \
		lang/gcc/4.9,-libs>=4.9,<4.10

.include <bsd.own.mk>

# Set BUILDTYPE to Debug for a debug build
.if ${FLAVOR:Mdebug}
BUILDTYPE=	Debug
.else
BUILDTYPE=	Release
.endif

ALL_TARGET=	chrome
TEST_TARGET=	base_unittests

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

# These libraries are used from the system and the build infrastructure
# removes them from the bundled third_party directory and replaces them
# with hooks to use them from the system.
GN_SYSTEM_LIBS=	libevent \
		libxml \
		libxslt \
		yasm

GN_ARGS=	enable_nacl=false \
		is_debug=false \
		enable_webrtc=true \
		enable_one_click_signin=true \
		use_kerberos=false \
		use_sndio=true \
		use_cups=true \
		is_clang=true \
		use_sysroot=false \
		treat_warnings_as_errors=false \
		clang_use_chrome_plugins=false \
		use_allocator=\"none\" \
		extra_cppflags=\"-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include\" \
		extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib -Wl,-z,wxneeded\"

# Note: these keys are for OpenBSD use ONLY. For your own distribution,
# please get your own set of keys. It's free!
GN_ARGS+=	google_api_key=\"AIzaSyA015yecfJyWi8UQpneQVrNzIKlxjv4MhI\" \
		google_default_client_id=\"451220141585.apps.googleusercontent.com\" \
		google_default_client_secret=\"nQcDyaBvDyCeDrsRqKIWSHJn\" \
		ffmpeg_branding=\"Chrome\" \
		proprietary_codecs=true

.if ${FLAVOR:Mdebug}
GN_ARGS+=	remove_webcore_debug_symbols=true
MAKE_ENV+=	V=1
.endif

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.for _arch in x64 ia32
	@cp -pR ${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/libavutil \
		${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/libavutil
.endfor
	@mkdir -p ${WRKSRC}/media/audio/sndio ${WRKSRC}/media/audio/openbsd
	@cp ${FILESDIR}/sndio_{out,in}put.{cc,h} ${WRKSRC}/media/audio/sndio
	@cp ${FILESDIR}/audio_manager_openbsd.{cc,h} ${WRKSRC}/media/audio/openbsd

# Configuration consists of three steps:
# 1. replace the specified bundled libraries with hooks to use the system libs
# 2. bootstrap gn, the tool to generate ninja files
# 3. run gn with the appropriate configuration arguments
do-configure:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}
	@cd ${WRKSRC}/tools/gn && env -i ${MAKE_ENV} ${MODPY_BIN} bootstrap/bootstrap.py \
		--no-clean -s --gn-gen-args "${GN_ARGS}"
	@cd ${WRKSRC} && env -i ${CONFIGURE_ENV} ${WRKSRC}/out/${BUILDTYPE}/gn \
		gen --args="${GN_ARGS}" out/Release

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/chrome
	${INSTALL_PROGRAM} ${BUILDDIR}/chrome ${PREFIX}/chrome
	${SUBST_PROGRAM} ${FILESDIR}/chrome ${PREFIX}/bin/chrome
	${INSTALL_MAN} ${BUILDDIR}/chrome.1 ${PREFIX}/man/man1

	${INSTALL_DATA} ${BUILDDIR}/*.pak ${PREFIX}/chrome

	${INSTALL_DATA_DIR} ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/chrome
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/chrome/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/chrome/resources
.for f in protoc icudtl.dat mksnapshot natives_blob.bin snapshot_blob.bin
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/chrome
.endfor
.for s in 22 24 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/chrome/app/theme/chromium/product_logo_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/chrome.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/chromium-browser.desktop \
		${PREFIX}/share/applications/chromium-browser.desktop

.include <bsd.port.mk>
