# $OpenBSD: Makefile,v 1.97 2019/11/10 13:37:48 robert Exp $

.include <bsd.port.arch.mk>

USE_WXNEEDED=		Yes

DPB_PROPERTIES=		parallel parallel2
.if ${MACHINE_ARCH} == "i386"
# override parallel
DPB_PROPERTIES=		lonesome
.endif

COMMENT=		Iridium browser

V=			2019.11.78

DISTNAME=		iridium-browser-${V}
PKGNAME=		iridium-${V}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

CATEGORIES=		www

HOMEPAGE=		https://iridiumbrowser.de/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

FLAVORS=		debug component
FLAVOR?=

# BSD-like
PERMIT_PACKAGE =	Yes

MASTER_SITES=		https://downloads.iridiumbrowser.de/source/ \
			http://nerd.hu/distfiles/

MODULES=	lang/python

COMPILER =	base-clang ports-clang ports-gcc

MODPY_RUNDEP=	No

PATCHORIG=	.orig.port

# uses pledge()
WANTLIB += X11 Xext Xfixes Xrender Xss c cups dbus-1 event
WANTLIB += execinfo
WANTLIB += gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += m
WANTLIB += kvm pthread
WANTLIB += xslt
WANTLIB += sndio
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Xi Xtst
WANTLIB += Xcursor Xrandr gio-2.0
WANTLIB += nspr4 nss3 nssutil3 smime3
WANTLIB += atk-bridge-2.0
WANTLIB += X11-xcb xcb
WANTLIB += GL expat
WANTLIB += atk-1.0 cairo gdk-3 gtk-3 pango-1.0
WANTLIB += pangocairo-1.0
WANTLIB += Xcomposite Xdamage
WANTLIB += EGL Xau Xdmcp Xinerama Xxf86vm atspi cairo-gobject
WANTLIB += drm epoxy ffi fontconfig freetype fribidi gmodule-2.0 graphite2
WANTLIB += gthread-2.0 intl pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png util xcb-dri2 xcb-glx xcb-render xcb-shm
WANTLIB += xml2 z
WANTLIB += uuid
WANTLIB += harfbuzz 

RUN_DEPENDS=	devel/xdg-utils \
		devel/desktop-file-utils \
		fonts/noto/fonts \
		graphics/libexif \
		x11/gnome/libgnome-keyring \
		x11/gtk+3,-guic \
		x11/gtk+3,-cups
BUILD_DEPENDS=	archivers/bzip2 \
		devel/gperf \
		devel/bison \
		lang/node \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		x11/gnome/libgnome-keyring \
		devel/ninja \
		x11/gtk+3 \
		${MODGCC4_CPPDEP}
LIB_DEPENDS=	devel/harfbuzz \
		devel/libexecinfo \
		security/nss \
		sysutils/e2fsprogs \
		textproc/libxslt \
		x11/gtk+3 \
		print/cups,-libs \
		${MODGCC4_CPPLIBDEP}

.if ${MACHINE_ARCH} == amd64
# they can make better javascript with java ...
JAVA_HOME=	${LOCALBASE}/jdk-1.8.0
BUILD_DEPENDS+=	jdk->=1.8v0,<1.9v0:devel/jdk/1.8
.endif

.include <bsd.own.mk>

# Set BUILDTYPE to Debug for a debug build
.if ${FLAVOR:Mdebug}
BUILDTYPE=	Debug
.else
BUILDTYPE=	Release
.endif

SUBST_VARS+=	WRKSRC WRKDIR

ALL_TARGET=	chrome
TEST_TARGET=	base_unittests

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

# These libraries are used from the system and the build infrastructure
# removes them from the bundled third_party directory and replaces them
# with hooks to use them from the system.
GN_SYSTEM_LIBS=	libevent \
		libxslt

GN_ARGS=	enable_nacl=false \
		is_debug=false \
		enable_one_click_signin=true \
		enable_remoting=false \
		use_kerberos=false \
		use_sndio=true \
		use_cups=true \
		use_system_libdrm=true \
		use_jumbo_build=true \
		is_clang=true \
		use_sysroot=false \
		treat_warnings_as_errors=false \
		clang_use_chrome_plugins=false \
		use_allocator=\"none\" \
		fieldtrial_testing_like_official_build=true \
		extra_cppflags=\"-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include\"

.if ${MACHINE_ARCH} == i386
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
		google_default_client_id=\"451220141585.apps.googleusercontent.com\" \
		google_default_client_secret=\"nQcDyaBvDyCeDrsRqKIWSHJn\" \
		ffmpeg_branding=\"Chrome\" \
		proprietary_codecs=true

.if ${FLAVOR:Mdebug}
MAKE_ENV+=	V=1
.endif

.if ${FLAVOR:Mcomponent}
GN_ARGS+=	is_official_build=false \
		is_component_build=true
.else
GN_ARGS+=	is_official_build=true \
		is_component_build=false
.endif

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.if ${MACHINE_ARCH} == amd64
	@ln -sf ${JAVA_HOME}/bin/java ${WRKDIR}/bin/java
.endif
.for _arch in x64 ia32 arm64
.  for _dir in avcodec avformat avutil
	@cp -pR ${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/lib${_dir} \
		${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/lib${_dir}
.  endfor
.endfor
	@mkdir -p ${WRKSRC}/media/audio/sndio ${WRKSRC}/media/audio/openbsd
	@cp ${FILESDIR}/sndio_{out,in}put.{cc,h} ${WRKSRC}/media/audio/sndio
	@cp ${FILESDIR}/audio_manager_openbsd.{cc,h} ${WRKSRC}/media/audio/openbsd
	@mkdir -p ${WRKSRC}/third_party/node/openbsd/node-openbsd/bin
	@ln -sf ${TRUEPREFIX}/bin/node ${WRKSRC}/third_party/node/openbsd/node-openbsd/bin/node
	${SUBST_CMD} ${WRKSRC}/build/gn_run_binary.py ${WRKSRC}/v8/tools/run.py \
		${WRKSRC}/tools/protoc_wrapper/protoc_wrapper.py

# Configuration consists of three steps:
# 1. replace the specified bundled libraries with hooks to use the system libs
# 2. bootstrap gn, the tool to generate ninja files
# 3. run gn with the appropriate configuration arguments
do-configure:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}
	@cd ${WRKSRC}/tools/gn && env -i ${MAKE_ENV} LDFLAGS=-L${LOCALBASE}/lib ${MODPY_BIN} bootstrap/bootstrap.py \
		--no-clean -s --gn-gen-args "${GN_ARGS}"
	@cd ${WRKSRC} && env -i ${CONFIGURE_ENV} ${WRKSRC}/out/Release/gn \
		gen --args="${GN_ARGS}" out/${BUILDTYPE}

pre-build:
	${SUBST_CMD} ${WRKSRC}/build/gn_run_binary.py ${WRKSRC}/v8/tools/run.py

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/iridium
	${INSTALL_PROGRAM} ${BUILDDIR}/chrome ${PREFIX}/iridium/iridium
	${SUBST_PROGRAM} ${FILESDIR}/iridium ${PREFIX}/bin/iridium
	${INSTALL_MAN} ${WRKSRC}/chrome/app/resources/manpage.1.in ${PREFIX}/man/man1/iridium.1
	@perl -pi -e "s,\@\@PACKAGE\@\@,chromium,g;s,\@\@MENUNAME\@\@,Iridium Web Browser,g" \
		${PREFIX}/man/man1/iridium.1
	${INSTALL_DATA} ${BUILDDIR}/*.pak ${PREFIX}/iridium

	${INSTALL_DATA_DIR} ${PREFIX}/iridium/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/iridium/locales
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/iridium
	${INSTALL_DATA_DIR} ${PREFIX}/iridium/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/iridium/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/iridium/resources
.for f in protoc icudtl.dat mksnapshot natives_blob.bin snapshot_blob.bin v8_context_snapshot.bin
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/iridium
.endfor

	# ANGLE   
.for f in libEGL.so libGLESv2.so 
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/iridium
.endfor

.if ${MACHINE_ARCH} != "aarch64"
	# SwiftShader
	${INSTALL_DATA_DIR} ${PREFIX}/iridium/swiftshader
.for f in libEGL.so libGLESv2.so
	${INSTALL_DATA} ${BUILDDIR}/swiftshader/${f} ${PREFIX}/iridium/swiftshader
.endfor
.endif

.if ${FLAVOR:Mcomponent}
	cp -Rp ${BUILDDIR}/*.so ${PREFIX}/iridium/
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
.for f in pledge.main pledge.utility_audio pledge.utility_network unveil.gpu unveil.main \
    unveil.plugin unveil.renderer unveil.utility unveil.utility_audio unveil.utility_network
	${INSTALL_DATA} ${FILESDIR}/${f} ${PREFIX}/share/examples/iridium
.endfor

.include <bsd.port.mk>
