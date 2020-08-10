# $OpenBSD: Makefile,v 1.126 2020/08/10 16:53:56 jca Exp $

# patches/patch-Source_JavaScriptCore_javascriptcoregtk_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk-web-extension_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk_pc_in
USE_WXNEEDED =		Yes

BROKEN-alpha =		GCC 5.0.0 is required to build WebKitGTK+, use a newer GCC version or clang
BROKEN-hppa =		GCC 5.0.0 is required to build WebKitGTK+, use a newer GCC version or clang
BROKEN-arm =		JavaScriptCore/runtime/MachineContext.h, various sigcontext-related

PORTROACH =		limitw:1,even

COMMENT =		GTK+ port of the WebKit rendering engine

V =			2.28.4
DISTNAME =		webkitgtk-${V}
PKGNAME =		webkitgtk4-${V}
REVISION =		1
EXTRACT_SUFX =		.tar.xz
API =			4.0
SUBST_VARS =		API
DPB_PROPERTIES =	parallel

SHARED_LIBS +=  javascriptcoregtk-${API}     3.2 # 18.13.3
SHARED_LIBS +=  webkit2gtk-${API}            3.2 # 37.37.2

CATEGORIES =		www

HOMEPAGE =		https://webkitgtk.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 and BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL X11 Xcomposite Xdamage Xrender
WANTLIB += Xt atk-1.0 c cairo cairo-gobject enchant-2 fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gtk-3 harfbuzz harfbuzz-icu hyphen icudata
WANTLIB += icui18n icuuc intl jpeg m notify pango-1.0 pangocairo-1.0
WANTLIB += openjp2 png secret-1 soup-2.4 sqlite3 tasn1 webp
WANTLIB += webpdemux woff2dec xml2 xslt z

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

DEBUG_PACKAGES =	${BUILD_PACKAGES}

NO_TEST =		Yes
USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

BUILD_DEPENDS =		devel/bison \
			devel/gettext,-tools \
			devel/gperf \
			devel/libexecinfo \
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
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}"

# old gtk+2 plugins (flash, java, ...); mostly useful on Linux
CONFIGURE_ARGS +=	-DENABLE_PLUGIN_PROCESS_GTK2=OFF

# sync with Source/JavaScriptCore/assembler/MacroAssembler.h
.if ${MACHINE_ARCH} != "aarch64" && ${MACHINE_ARCH} != "amd64" && \
    ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "i386" && \
    ${MACHINE_ARCH} != "mips64" && ${MACHINE_ARCH} != "mips64el"
# #error "The MacroAssembler is not supported on this platform."
CONFIGURE_ARGS +=	-DENABLE_JIT=OFF
CONFIGURE_ARGS +=	-DENABLE_LLINT_C_LOOP=ON
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
CFLAGS +=		-mlongcall
CXXFLAGS +=		-mlongcall
LDFLAGS +=		-Wl,--relax
.endif

post-extract:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/cmake/WebKitCommon.cmake \
		${WRKSRC}/Source/WebKit/Shared/Plugins/unix/PluginSearchPath.cpp

.include <bsd.port.mk>
