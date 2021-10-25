# $OpenBSD: Makefile,v 1.155 2021/10/25 07:25:13 ajacoutot Exp $

# patches/patch-Source_JavaScriptCore_javascriptcoregtk_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk-web-extension_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk_pc_in
USE_WXNEEDED =		Yes

BROKEN-alpha =		GCC 5.0.0 is required to build WebKitGTK+, use a newer GCC version or clang
BROKEN-hppa =		GCC 5.0.0 is required to build WebKitGTK+, use a newer GCC version or clang
BROKEN-arm =		JavaScriptCore/runtime/MachineContext.h, various sigcontext-related

PORTROACH =		limitw:1,even

COMMENT =		GTK+ port of the WebKit rendering engine

V =			2.34.1
DISTNAME =		webkitgtk-${V}
PKGNAME =		webkitgtk4-${V}

EXTRACT_SUFX =		.tar.xz
API =			4.0
SUBST_VARS =		API
DPB_PROPERTIES =	parallel

SHARED_LIBS +=  javascriptcoregtk-${API}     3.5 # 18.13.3
SHARED_LIBS +=  webkit2gtk-${API}            3.5 # 37.37.2

CATEGORIES =		www

HOMEPAGE =		https://webkitgtk.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 and BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL X11 Xcomposite Xdamage Xrender
WANTLIB += Xt atk-1.0 c cairo cairo-gobject enchant-2 fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += hyphen icudata icui18n icuuc intl jpeg lcms2 m notify
WANTLIB += openjp2 pango-1.0 pangocairo-1.0 png secret-1 soup-2.4
WANTLIB += sqlite3 tasn1 webp webpdemux woff2dec xml2 xslt z

MASTER_SITES =		https://webkitgtk.org/releases/

MODULES =		devel/cmake \
			lang/python \
			lang/ruby \
			x11/gnome

# gcc>=5.0.0 or clang
COMPILER =		base-clang ports-clang ports-gcc

MODRUBY_RUNDEP =	No
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	Tools/glib/generate-inspector-gresource-manifest.py
MODGNOME_TOOLS =	gobject-introspection

# XXX disable DEBUG_PACKAGES because libWebCoreGTK.a is too big (4.1G)
# ld.lld: error: lib/libWebCoreGTK.a:
# could not get the member for symbol WebCore::WorkerThread::runEventLoop():
# truncated or malformed archive (terminator characters in archive member "ar" not the correct "`\n" values for the archive member header for 12__retguard_29)
#DEBUG_PACKAGES =	${BUILD_PACKAGES}

NO_TEST =		Yes

BUILD_DEPENDS =		devel/bison \
			devel/gettext,-tools \
			devel/gperf \
			geo/geoclue2

RUN_DEPENDS =		geo/geoclue2

LIB_DEPENDS =		archivers/woff2 \
			devel/harfbuzz,-icu \
			devel/libnotify \
			devel/libsoup \
			graphics/libwebp \
			graphics/openjp2 \
			multimedia/gstreamer1/plugins-base \
			textproc/enchant2 \
			textproc/hyphen \
			textproc/libxslt \
			x11/gnome/libsecret \
			x11/gtk+3

CONFIGURE_ENV =		WK_USE_CCACHE=NO
CONFIGURE_ARGS =	-DPORT=GTK \
			-DENABLE_MINIBROWSER=ON \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}" \
			-DUSE_SYSTEMD=OFF \
			-DUSE_SOUP2=ON

# required for faking a better user-agent
.if ${MACHINE_ARCH} == "amd64"
CPUARCH =		x86_64
.else
CPUARCH =		${ARCH}
.endif
CONFIGURE_ARGS +=	-DUSER_AGENT_BRANDING="Linux ${CPUARCH}"

# needs Wayland (libwpe -> WPEBackend-fdo -> Wayland)
CONFIGURE_ARGS +=	-DUSE_WPE_RENDERER=OFF

# Needs GUdev
CONFIGURE_ARGS +=	-DENABLE_GAMEPAD=OFF

# sync with Source/JavaScriptCore/assembler/MacroAssembler.h
.if ${MACHINE_ARCH} != "aarch64" && ${MACHINE_ARCH} != "amd64" && \
    ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "i386" && \
    ${MACHINE_ARCH} != "mips64" && ${MACHINE_ARCH} != "mips64el"
# #error "The MacroAssembler is not supported on this platform."
CONFIGURE_ARGS +=	-DENABLE_JIT=OFF
CONFIGURE_ARGS +=	-DENABLE_LLINT_C_LOOP=ON
.endif


.if ${MACHINE_ARCH} == "amd64"
# On amd64 we don't want an initial allocation of 1GB,
# it's above the default ulimit, so let's do 128M instead.
CXXFLAGS +=		-DFIXED_EXECUTABLE_MEMORY_POOL_SIZE_IN_MB=128
.endif

# XXX fatal error: 'X11/Xlib.h' file not found
CXXFLAGS +=		-I${X11BASE}/include

.include <bsd.port.arch.mk>

# ld.lld does not have this option
# save memory on 32bit arches
.if !${PROPERTIES:Mlld} && ${MACHINE_ARCH} != "amd64"
LDFLAGS +=		-Wl,--no-keep-memory
.endif

.if ${MACHINE_ARCH} == "powerpc"
# Don't make LLVM run out of memory
DPB_PROPERTIES =       lonesome
# XXX fix colors being off, it would be nice to fix the code
CONFIGURE_ARGS +=	-DUSE_OPENGL_OR_ES=OFF
.endif

post-extract:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/cmake/WebKitCommon.cmake

.include <bsd.port.mk>
