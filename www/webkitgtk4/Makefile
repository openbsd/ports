# patches/patch-Source_JavaScriptCore_javascriptcoregtk_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk-web-extension_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk_pc_in
USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes

BROKEN-alpha =		GCC 5.0.0 is required to build WebKitGTK+, use a newer GCC version or clang
BROKEN-hppa =		GCC 5.0.0 is required to build WebKitGTK+, use a newer GCC version or clang
BROKEN-arm =		JavaScriptCore/runtime/MachineContext.h, various sigcontext-related

PORTROACH =		limitw:1,even

COMMENT =		GTK+ port of the WebKit (${API}) rendering engine

V =			2.44.1
DISTNAME =		webkitgtk-${V}
PKGNAME =		webkitgtk${API:S/.//}-${V}
FULLPKGNAME =		${PKGNAME}
REVISION =		0

EXTRACT_SUFX =		.tar.xz
SUBST_VARS =		API
DPB_PROPERTIES =	parallel

SHARED_LIBS +=  javascriptcoregtk-${API}     4.1
SHARED_LIBS +=  webkit2gtk-${API}            4.1
SHARED_LIBS +=	webkitgtk-6.0                0.3

CATEGORIES =		www

HOMEPAGE =		https://webkitgtk.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 and BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 avif c cairo cairo-gobject drm
WANTLIB += enchant-2 epoll-shim epoxy fontconfig freetype gbm
WANTLIB += gcrypt gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gsttranscoder-1.0 gstvideo-1.0
WANTLIB += harfbuzz harfbuzz-icu hyphen icudata icui18n icuuc
WANTLIB += intl jpeg jxl lcms2 m pango-1.0 pangocairo-1.0 png
WANTLIB += secret-1 sqlite3 tasn1 wayland-client wayland-egl wayland-server
WANTLIB += webp webpdemux woff2dec xml2 xslt z

SITES =			https://webkitgtk.org/releases/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python \
			lang/ruby \
			x11/gnome

MODGNOME_TOOLS =	gi-docgen gobject-introspection
MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No

DEBUG_PACKAGES =	${BUILD_PACKAGES}

NO_TEST =		Yes

BUILD_DEPENDS =		devel/bison \
			devel/gettext,-tools \
			devel/gperf \
			geo/geoclue2 \
			wayland/wayland-protocols

RUN_DEPENDS =		geo/geoclue2 \
			multimedia/gstreamer1/plugins-good

LIB_DEPENDS =		archivers/woff2 \
			devel/harfbuzz,-icu \
			graphics/libavif \
			graphics/libjxl \
			graphics/libwebp \
			multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-bad \
			textproc/enchant2 \
			textproc/hyphen \
			textproc/libxslt \
			x11/gnome/libsecret

CONFIGURE_ENV =		WK_USE_CCACHE=NO
CONFIGURE_ARGS =	-DPORT=GTK \
			-DENABLE_MINIBROWSER=ON \
			-DENABLE_JOURNALD_LOG=OFF

# XXX revisit at next release if execinfo can be used
CONFIGURE_ARGS +=	-DUSE_LIBBACKTRACE=OFF

# until proven useful
# see defaults in Source/WTF/wtf/PlatformEnable.h
#CONFIGURE_ARGS +=	-DENABLE_WEBASSEMBLY=ON
#CONFIGURE_ARGS +=	-DENABLE_WEBASSEMBLY_B3JIT=ON

# XXX broken at runtime
#CONFIGURE_ARGS +=	-DUSE_SYSTEM_MALLOC=ON

# required for faking a better user-agent
.if ${MACHINE_ARCH} == "amd64"
CPUARCH =		x86_64
.else
CPUARCH =		${ARCH}
.endif
#XXXTODO CONFIGURE_ARGS +=	-DUSER_AGENT_BRANDING="Linux ${CPUARCH}; OpenBSD ${ARCH}"
CONFIGURE_ARGS +=	-DUSER_AGENT_BRANDING="Linux ${CPUARCH}"

# Needs GUdev
CONFIGURE_ARGS +=	-DENABLE_GAMEPAD=OFF

# sync with Source/JavaScriptCore/assembler/MacroAssembler.h
.if ${MACHINE_ARCH} != "aarch64" && ${MACHINE_ARCH} != "amd64" && \
    ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "i386" && \
    ${MACHINE_ARCH} != "mips64" && ${MACHINE_ARCH} != "mips64el" && \
    ${MACHINE_ARCH} != "riscv64"
# #error "The MacroAssembler is not supported on this platform."
CONFIGURE_ARGS +=	-DENABLE_JIT=OFF
CONFIGURE_ARGS +=	-DENABLE_C_LOOP=ON
.endif

.if ${MACHINE_ARCH} == riscv64
# WEBASSEMBLY and FTL_JIT need at least one of OMGJIT/BBQJIT
# check Source/WTF/wtf/PlatformEnable.h
CONFIGURE_ARGS +=	-DENABLE_WEBASSEMBLY=OFF
CONFIGURE_ARGS +=	-DENABLE_FTL_JIT=OFF
.endif

# we don't want an allocation of 1GB, it's above the "default" class ulimit
.if ${MACHINE_ARCH} == "amd64"
CXXFLAGS +=		-DFIXED_EXECUTABLE_MEMORY_POOL_SIZE_IN_MB=384
.endif
CXXFLAGS +=		-DSTRUCTURE_HEAP_ADDRESS_SIZE_IN_MB=256

# X11/Xlib.h
CXXFLAGS +=		-I${X11BASE}/include

# needs sys/eventfd.h
# patch-Source_WebCore_CMakeLists_txt
# patch-Source_WebCore_SourcesGTK_txt
LIB_DEPENDS +=		devel/epoll-shim
CXXFLAGS +=		$$(pkg-config --cflags epoll-shim)

.include <bsd.port.arch.mk>

# disable thin archives for bfd;
# and set DEBUG=-g1 for GNU ar(1) arches (libWebCoreGTK.a is too big (4.1G)):
# ../../lib/libWebCoreGTK.a: could not read symbols: Malformed archive
# https://bugs.webkit.org/show_bug.cgi?id=140384
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-DUSE_THIN_ARCHIVES=FALSE
DEBUG =			-g1
.endif

.if ${MACHINE_ARCH} == "powerpc"
# Don't make LLVM run out of memory
DPB_PROPERTIES =	lonesome
LDFLAGS +=		-Wl,--no-keep-memory
.elif ${MACHINE_ARCH} == "i386"
DPB_PROPERTIES =	parallel parallel2 lonesome
.endif

FLAVORS =		webkitgtk41 webkitgtk60
FLAVOR ?=

.if ${FLAVOR:Mwebkitgtk41}
API =			4.1
WANTLIB += atk-1.0 gdk-3 gtk-3 soup-3.0
LIB_DEPENDS +=		devel/libsoup3 \
			x11/gtk+3
CONFIGURE_ARGS +=	-DENABLE_WEBDRIVER=OFF \
			-DUSE_GTK4=OFF
.elif ${FLAVOR:Mwebkitgtk60}
API =			6.0
WANTLIB += graphene-1.0 gtk-4 soup-3.0
LIB_DEPENDS +=		devel/libsoup3 \
			x11/gtk+4
.else
API =			4.0
WANTLIB += atk-1.0 gdk-3 gtk-3 soup-2.4
LIB_DEPENDS +=		devel/libsoup \
			x11/gtk+3
CONFIGURE_ARGS +=	-DUSE_SOUP2=ON \
			-DENABLE_WEBDRIVER=OFF \
			-DUSE_GTK4=OFF
.endif

post-extract:
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/cmake/WebKitCommon.cmake

.include <bsd.port.mk>
