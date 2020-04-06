# $OpenBSD: Makefile,v 1.4 2020/04/06 18:58:16 robert Exp $

.include <bsd.port.arch.mk>

USE_WXNEEDED=		Yes

DPB_PROPERTIES=		parallel parallel2
.if ${MACHINE_ARCH} == "i386"
# override parallel
DPB_PROPERTIES=		lonesome
.endif

COMMENT=		Chromium browser

ECV=			80.0.3987.158
ELECTRON_V=		8.2.0

DISTFILES+=		chromium-${ECV}${EXTRACT_SUFX} \
			electron-${ELECTRON_V}_${ECV}${EXTRACT_SUFX}:0 \
			chromium-patches-${ECV}.tar.gz:0

CATEGORIES=		www devel

HOMEPAGE=		https://www.chromium.org/Home

MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

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
WANTLIB += iconv lzma
WANTLIB += fido2 cbor usbhid crypto
WANTLIB += Xft harfbuzz-subset

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

.include <bsd.own.mk>

BUILDTYPE=	Release
DEBUGFLAG=	-g0

SUBST_VARS+=	WRKSRC WRKDIR ELECTRON_ARCH

DISTNAME=		electron-${ELECTRON_V}
WRKDIST=		${WRKDIR}/chromium-${ECV}
ALL_TARGET=		electron
DIST_TARGET=		dist.zip chromedriver.zip mksnapshot.zip
DIST_TARGET_DIR=	electron

BUILD_DEPENDS+=		devel/libnotify
LIB_DEPENDS+=		www/nghttp2
WANTLIB+=		nghttp2

WRKSRC=			${WRKDIR}/chromium-${ECV}

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

# These libraries are used from the system and the build infrastructure
# removes them from the bundled third_party directory and replaces them
# with hooks to use them from the system.
GN_SYSTEM_LIBS=	libevent \
		libxslt

GN_ARGS=	enable_nacl=false \
		is_debug=false \
		is_cfi=false \
		is_electron_build=true \
		optimize_webui=false \
		closure_compile=false \
		enable_one_click_signin=true \
		enable_remoting=false \
		use_kerberos=false \
		use_sndio=true \
		use_cups=true \
		use_system_libdrm=true \
		use_bundled_fontconfig=false \
		use_system_harfbuzz=true \
		use_system_freetype=true \
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


GN_ARGS+=	is_official_build=true \
		is_component_build=false \
		is_component_ffmpeg=false

MAKE_ENV+=	PATH=${PATH}:${WRKSRC}/electron/node_modules/.bin \
		NODE_PATH=${WRKSRC}/electron/node_modules

# manually de-jsonified list from electron/patches/config.json
ELECTRON_PATCH_CONFIG+= electron/patches/chromium:.
ELECTRON_PATCH_CONFIG+= electron/patches/boringssl:third_party/boringssl/src
ELECTRON_PATCH_CONFIG+= electron/patches/v8:v8
ELECTRON_PATCH_CONFIG+= electron/patches/node:third_party/electron_node

do-distpatch:
	@for _p in ${WRKDIR}/chromium-patches-${ECV}/patch-*; do \
		${PATCH} ${PATCH_DIST_ARGS} -z .orig.chromium < $${_p}; \
	done

pre-patch:
.for pair in ${ELECTRON_PATCH_CONFIG}
	@for _p in $$(cat ${WRKSRC}/${pair:C/\:.*//g}/.patches |	\
		egrep -v "disable_(network_serv|custom_libcxx)"); do 	\
			${PATCH} -p1 -z .orig.electron -d 		\
				${WRKSRC}/${pair:C/.*\://g} 		\
			<${WRKSRC}/${pair:C/\:.*//g}/$${_p};		\
	done
.endfor

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.for _arch in x64 ia32 arm64
.  for _dir in avcodec avformat avutil
	@cp -pR ${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/lib${_dir} \
		${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/lib${_dir}
.  endfor
.endfor
	@mkdir -p ${WRKSRC}/media/audio/sndio ${WRKSRC}/media/audio/openbsd
	@cp ${FILESDIR}/hid_{service,connection}_fido.{cc,h} ${WRKSRC}/services/device/hid
	@cp ${FILESDIR}/sndio_{out,in}put.{cc,h} ${WRKSRC}/media/audio/sndio
	@cp ${FILESDIR}/audio_manager_openbsd.{cc,h} ${WRKSRC}/media/audio/openbsd
	@mkdir -p ${WRKSRC}/third_party/node/openbsd/node-openbsd/bin
	@ln -sf ${TRUEPREFIX}/bin/node ${WRKSRC}/third_party/node/openbsd/node-openbsd/bin/node
	${SUBST_CMD} ${WRKSRC}/build/gn_run_binary.py ${WRKSRC}/v8/tools/run.py \
		${WRKSRC}/tools/protoc_wrapper/protoc_wrapper.py \
		${WRKSRC}/build/config/compiler/BUILD.gn
	mkdir -p ${WRKSRC}/electron/node_modules/.bin
	ln -sf /usr/bin/false ${WRKDIR}/bin/resize

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
		gen --args="import(\"//electron/build/args/release.gn\") ${GN_ARGS}" out/${BUILDTYPE}

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${ALL_TARGET}

post-build:
	# strip before creating the zip files
	strip -s ${BUILDDIR}/electron
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${DIST_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}
	${INSTALL_PROGRAM} ${BUILDDIR}/${DIST_TARGET_DIR} ${PREFIX}/${DIST_TARGET_DIR}
	${SUBST_PROGRAM} ${FILESDIR}/${DIST_TARGET_DIR} ${PREFIX}/bin/${DIST_TARGET_DIR}
	${INSTALL_DATA} ${BUILDDIR}/*.pak ${PREFIX}/${DIST_TARGET_DIR}

	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/${DIST_TARGET_DIR}/locales
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/${DIST_TARGET_DIR}/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/${DIST_TARGET_DIR}/resources
.for f in protoc icudtl.dat mksnapshot snapshot_blob.bin v8_context_snapshot.bin
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/${DIST_TARGET_DIR}
.endfor
	cd ${BUILDDIR} && \
		cp chromedriver.zip chromedriver-v${ELECTRON_V}-openbsd-${ARCH:S/amd64/x64/:S/i386/ia32/}.zip && \
		cp dist.zip electron-v${ELECTRON_V}-openbsd-${ARCH:S/amd64/x64/:S/i386/ia32/}.zip && \
		cp mksnapshot.zip mksnapshot-v${ELECTRON_V}-openbsd-${ARCH:S/amd64/x64/:S/i386/ia32/}.zip && \
		sha256 -r *-v${ELECTRON_V}-openbsd-*.zip | sed -e 's/ / */' > SHASUMS256.txt
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/releases
	${INSTALL_DATA} ${BUILDDIR}/SHASUMS256.txt ${PREFIX}/${DIST_TARGET_DIR}/releases
	${INSTALL_DATA} ${BUILDDIR}/*-v${ELECTRON_V}-openbsd-*.zip \
		${PREFIX}/${DIST_TARGET_DIR}/releases

	# ANGLE, EGL, Vk
.for f in libEGL libGLESv2
	${INSTALL_DATA} ${BUILDDIR}/${f}.so ${PREFIX}/${DIST_TARGET_DIR}
.endfor

.if ${MACHINE_ARCH} != "aarch64"
	# SwiftShader
	${INSTALL_DATA_DIR} ${PREFIX}/${DIST_TARGET_DIR}/swiftshader
.  for f in libEGL.so libGLESv2.so
	${INSTALL_DATA} ${BUILDDIR}/swiftshader/${f} ${PREFIX}/${DIST_TARGET_DIR}/swiftshader
.  endfor
.endif

.include <bsd.port.mk>
