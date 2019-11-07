# $OpenBSD: Makefile,v 1.475 2019/11/07 10:47:40 robert Exp $

.include <bsd.port.arch.mk>

USE_WXNEEDED=		Yes

DPB_PROPERTIES=		parallel parallel2
.if ${MACHINE_ARCH} == "i386"
# override parallel
DPB_PROPERTIES=		lonesome
.endif

COMMENT=		Chromium browser

V=			78.0.3904.97
ECV=			76.0.3809.132
ELECTRON_V=		6.0.3

DISTNAME=		chromium-${V}

DISTFILES+=		chromium-${V}${EXTRACT_SUFX} \
			chromium-${ECV}${EXTRACT_SUFX} \
			electron-${ELECTRON_V}_${ECV}${EXTRACT_SUFX}:0 \
			chromium-patches-${ECV}.tar.gz:0

CATEGORIES=		www

HOMEPAGE=		https://www.chromium.org/Home

MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

FLAVORS=		debug component electron
FLAVOR?=
.if ${FLAVOR:Melectron}
REVISION=		2
.endif

# BSD-like
PERMIT_PACKAGE =	Yes

MASTER_SITES=	https://commondatastorage.googleapis.com/chromium-browser-official/
MASTER_SITES0=	http://nerd.hu/distfiles/

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
WANTLIB += drm epoxy fontconfig freetype fribidi gmodule-2.0 graphite2
WANTLIB += gthread-2.0 intl pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 util xcb-dri2 xcb-glx xcb-render xcb-shm
WANTLIB += xml2 z
WANTLIB += harfbuzz 
WANTLIB += ffi png

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

SUBST_VARS+=	WRKSRC WRKDIR ELECTRON_ARCH

.if ${FLAVOR:Melectron}
DISTNAME=		electron-${ELECTRON_V}
WRKDIST=		${WRKDIR}/chromium-${ECV}
FULLPKGNAME=		${DISTNAME}
FULLPKGPATH=		www/chromium,electron
ALL_TARGET=		electron
DIST_TARGET=		dist.zip chromedriver.zip mksnapshot.zip
DIST_TARGET_DIR=	electron
PLIST=			${PKGDIR}/PLIST-electron
DESCR=			${PKGDIR}/DESCR-electron
PATCH_LIST=		epatch-*

BUILD_DEPENDS+=		devel/libnotify
LIB_DEPENDS+=		www/nghttp2
WANTLIB+=		nghttp2

WRKSRC=			${WRKDIR}/chromium-${ECV}
EXTRACT_ONLY=		${DISTFILES:C/chromium-${V}.*//:C/:0//}
.else
EXTRACT_ONLY=		${DISTFILES:C/chromium-${ECV}.*//:C/electron.*//:C/chromium-patches.*//}
ALL_TARGET=		chrome chromedriver
TEST_TARGET=		base_unittests
DIST_TARGET_DIR=	chrome
.endif

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
		use_bundled_fontconfig=false \
		is_clang=true \
		use_sysroot=false \
		treat_warnings_as_errors=false \
		clang_use_chrome_plugins=false \
		use_allocator=\"none\" \
		fieldtrial_testing_like_official_build=true \
		extra_cppflags=\"-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include\"

.if ${MACHINE_ARCH} == "i386"
ELECTRON_ARCH=	ia32.zip
GN_ARGS+=	extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib -Wl,--no-keep-memory\"
.else
ELECTRON_ARCH=	x64.zip
GN_ARGS+=	extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib\"
.endif

.if ${MACHINE_ARCH} == "aarch64"
ELECTRON_ARCH=	arm64.zip
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

.if ${FLAVOR:Melectron}
MAKE_ENV+=	PATH=${PATH}:${WRKSRC}/electron/node_modules/.bin \
		NODE_PATH=${WRKSRC}/electron/node_modules
GN_ARGS+=	is_component_ffmpeg=false

# manually de-jsonified list from electron/patches/common/config.json
ELECTRON_PATCH_CONFIG+= electron/patches/common/chromium:.
ELECTRON_PATCH_CONFIG+= electron/patches/common/boringssl:third_party/boringssl/src
ELECTRON_PATCH_CONFIG+= electron/patches/common/ffmpeg:third_party/ffmpeg
ELECTRON_PATCH_CONFIG+= electron/patches/common/v8:v8
ELECTRON_PATCH_CONFIG+= electron/patches/node:third_party/electron_node

do-distpatch:
	@for _p in ${WRKDIR}/chromium-patches-${ECV}/patch-*; do \
		${PATCH} ${PATCH_DIST_ARGS} < $${_p}; \
	done

pre-patch:
.  for pair in ${ELECTRON_PATCH_CONFIG}
	@for _p in $$(cat ${WRKSRC}/${pair:C/\:.*//g}/.patches |	\
		egrep -v "disable_(network_serv|custom_libcxx)"); do 	\
			${PATCH} -p1 -z .orig.electron -d 		\
				${WRKSRC}/${pair:C/.*\://g} 		\
			<${WRKSRC}/${pair:C/\:.*//g}/$${_p};		\
	done
.  endfor
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
.if ${FLAVOR:Melectron}
	mkdir -p ${WRKSRC}/electron/node_modules/.bin
	ln -sf /usr/bin/false ${WRKDIR}/bin/resize
	ln -sf ${WRKSRC}/electron/node_modules/browserify/bin/cmd.js ${WRKSRC}/electron/node_modules/.bin/browserify
	ln -sf ${WRKSRC}/electron/node_modules/electron-typescript-definitions/cli.js  ${WRKSRC}/electron/node_modules/.bin/electron-typescript-definitions
	ln -sf ${WRKSRC}/electron/node_modules/electron-docs-linter/cli.js ${WRKSRC}/electron/node_modules/.bin/electron-docs-linter
	ln -sf ${WRKSRC}/electron/node_modules/electron-typescript-definitions/cli.js ${WRKSRC}/electron/node_modules/.bin/gn-typescript-definitions
	ln -sf ${WRKSRC}/electron/node_modules/rc/cli.js ${WRKSRC}/electron/node_modules/.bin/rc
	ln -sf ${WRKSRC}/electron/node_modules/semver/bin/semver ${WRKSRC}/electron/node_modules/.bin/semver
	ln -sf ${WRKSRC}/electron/node_modules/shx/lib/cli.js ${WRKSRC}/electron/node_modules/.bin/shx
	ln -sf ${WRKSRC}/electron/node_modules/typescript/bin/tsc ${WRKSRC}/electron/node_modules/.bin/tsc
	chmod +x ${WRKSRC}/electron/node_modules/.bin/tsc
.endif

# Configuration consists of three steps:
# 1. replace the specified bundled libraries with hooks to use the system libs
# 2. bootstrap gn, the tool to generate ninja files
# 3. run gn with the appropriate configuration arguments
do-configure:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}
	@cd ${WRKSRC}/tools/gn && env -i ${MAKE_ENV} LDFLAGS=-L${LOCALBASE}/lib ${MODPY_BIN} bootstrap/bootstrap.py \
		--no-clean -s --gn-gen-args "${GN_ARGS}"
.if ${FLAVOR:Melectron}
	@cd ${WRKSRC} && env -i ${CONFIGURE_ENV} ${WRKSRC}/out/Release/gn \
		gen --args="import(\"//electron/build/args/release.gn\") ${GN_ARGS}" out/${BUILDTYPE}
.else
	@cd ${WRKSRC} && env -i ${CONFIGURE_ENV} ${WRKSRC}/out/Release/gn \
		gen --args="${GN_ARGS}" out/${BUILDTYPE}
.endif

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${ALL_TARGET}

.if ${FLAVOR:Melectron}
post-build:
	# strip before creating the zip files
	strip -s ${BUILDDIR}/electron
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${DIST_TARGET}
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}
	${INSTALL_PROGRAM} ${BUILDDIR}/${DIST_TARGET_DIR} ${PREFIX}/${DIST_TARGET_DIR}
	${SUBST_PROGRAM} ${FILESDIR}/${DIST_TARGET_DIR} ${PREFIX}/bin/${DIST_TARGET_DIR}
.if !${FLAVOR:Melectron}
	${INSTALL_PROGRAM} ${BUILDDIR}/chromedriver ${PREFIX}/bin/chromedriver
	${INSTALL_MAN} ${WRKSRC}/chrome/app/resources/manpage.1.in ${PREFIX}/man/man1/chrome.1
	@perl -pi -e "s,\@\@PACKAGE\@\@,chromium,g;s,\@\@MENUNAME\@\@,Chromium Web Browser,g" \
		${PREFIX}/man/man1/chrome.1
.endif
	${INSTALL_DATA} ${BUILDDIR}/*.pak ${PREFIX}/${DIST_TARGET_DIR}

	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/${DIST_TARGET_DIR}/locales
.if !${FLAVOR:Melectron}
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/${DIST_TARGET_DIR}
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/${DIST_TARGET_DIR}/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/${DIST_TARGET_DIR}/resources
.for f in protoc icudtl.dat mksnapshot natives_blob.bin snapshot_blob.bin v8_context_snapshot.bin
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/${DIST_TARGET_DIR}
.endfor
.if ${FLAVOR:Melectron}
	cd ${BUILDDIR} && \
		cp chromedriver.zip chromedriver-v${ELECTRON_V}-openbsd-${ARCH:S/amd64/x64/:S/i386/ia32/}.zip && \
		cp dist.zip electron-v${ELECTRON_V}-openbsd-${ARCH:S/amd64/x64/:S/i386/ia32/}.zip && \
		cp mksnapshot.zip mksnapshot-v${ELECTRON_V}-openbsd-${ARCH:S/amd64/x64/:S/i386/ia32/}.zip && \
		sha256 -r *-v${ELECTRON_V}-openbsd-*.zip | sed -e 's/ / */' > SHASUMS256.txt
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/releases
	${INSTALL_DATA} ${BUILDDIR}/SHASUMS256.txt ${PREFIX}/${DIST_TARGET_DIR}/releases
	${INSTALL_DATA} ${BUILDDIR}/*-v${ELECTRON_V}-openbsd-*.zip \
		${PREFIX}/${DIST_TARGET_DIR}/releases
.endif

	# ANGLE, EGL, Vk
.for f in libEGL libGLESv2
	${INSTALL_DATA} ${BUILDDIR}/${f}.so ${PREFIX}/${DIST_TARGET_DIR}
.endfor
.if !${FLAVOR:Melectron}
.for f in libVkICD_mock_icd
	${INSTALL_DATA} ${BUILDDIR}/${f}.so ${PREFIX}/${DIST_TARGET_DIR}
.endfor
.endif

.if ${MACHINE_ARCH} != "aarch64"
	# SwiftShader
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/swiftshader
.for f in libEGL.so libGLESv2.so
	${INSTALL_DATA} ${BUILDDIR}/swiftshader/${f} ${PREFIX}/${DIST_TARGET_DIR}/swiftshader
.endfor
.endif

.if ${FLAVOR:Mcomponent}
	cp -Rp ${BUILDDIR}/*.so ${BUILDDIR}/*.so.[0-9] ${PREFIX}/${DIST_TARGET_DIR}/
.endif

.if !${FLAVOR:Melectron}
.for s in 22_mono 24 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/${DIST_TARGET_DIR}/app/theme/chromium/product_logo_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/chrome.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/chromium-browser.desktop \
		${PREFIX}/share/applications/chromium-browser.desktop

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/chromium
.for f in pledge.main pledge.utility_audio pledge.utility_network unveil.gpu unveil.main \
    unveil.plugin unveil.renderer unveil.utility unveil.utility_audio unveil.utility_network
	${INSTALL_DATA} ${FILESDIR}/${f} ${PREFIX}/share/examples/chromium
.endfor
.endif

.include <bsd.port.mk>
