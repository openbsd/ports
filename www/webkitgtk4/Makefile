# $OpenBSD: Makefile,v 1.88 2018/09/22 08:07:37 ajacoutot Exp $

# patches/patch-Source_JavaScriptCore_javascriptcoregtk_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk-web-extension_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk_pc_in
USE_WXNEEDED =		Yes

BROKEN-alpha =		GCC 5.0.0 is required to build WebKitGTK+, use a newer GCC version or clang
BROKEN-hppa =		GCC 5.0.0 is required to build WebKitGTK+, use a newer GCC version or clang

PORTROACH =		limitw:1,even

COMMENT =		GTK+ port of the WebKit rendering engine

V =			2.22.2
DISTNAME =		webkitgtk-${V}
PKGNAME =		webkitgtk4-${V}
EXTRACT_SUFX =		.tar.xz
API =			4.0
SUBST_VARS =		API
DPB_PROPERTIES =	parallel

SHARED_LIBS +=  javascriptcoregtk-${API}     2.5 # 18.6
SHARED_LIBS +=  webkit2gtk-${API}            2.5 # 37.24

CATEGORIES =		www

HOMEPAGE =		http://webkitgtk.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL X11 Xcomposite Xdamage Xrender
WANTLIB += Xt atk-1.0 c cairo cairo-gobject enchant-2 fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gtk-3 harfbuzz harfbuzz-icu hyphen icudata
WANTLIB += icui18n icuuc intl jpeg m notify pango-1.0 pangocairo-1.0
WANTLIB += png secret-1 soup-2.4 sqlite3 tasn1 webp webpdemux
WANTLIB += woff2dec xml2 xslt z

MASTER_SITES =		http://webkitgtk.org/releases/

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

NO_TEST =		Yes
USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

BUILD_DEPENDS =		devel/bison \
			devel/gettext-tools \
			devel/gperf \
			devel/libexecinfo \
			geo/geoclue2

RUN_DEPENDS =		geo/geoclue2

LIB_DEPENDS =		archivers/woff2 \
			devel/harfbuzz,-icu \
			devel/libnotify \
			devel/libsoup \
			graphics/libwebp \
			multimedia/gstreamer1/plugins-base \
			textproc/enchant2 \
			textproc/hyphen \
			textproc/libxslt \
			x11/gnome/libsecret \
			x11/gtk+3

CONFIGURE_ARGS =	-DPORT=GTK \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}"

# old gtk+2 plugins (flash, java, ...); mostly useful on Linux
CONFIGURE_ARGS +=	-DENABLE_PLUGIN_PROCESS_GTK2=OFF

# sync with Source/JavaScriptCore/assembler/MacroAssembler.h
.if ${MACHINE_ARCH} != "aarch64" && ${MACHINE_ARCH} != "amd64" && \
    ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "i386" && \
    ${MACHINE_ARCH} != "mips64" && ${MACHINE_ARCH} != "mips64el" && \
    ${MACHINE_ARCH} != "sh"
# #error "The MacroAssembler is not supported on this platform."
CONFIGURE_ARGS +=	-DENABLE_JIT=OFF
CONFIGURE_ARGS +=	-DENABLE_LLINT_C_LOOP=ON
.endif

.include <bsd.port.arch.mk>

# ld.lld does not have this option
# save memory on 32bit arches
.if !${PROPERTIES:Mlld} && ${MACHINE_ARCH} != "amd64"
LDFLAGS +=		-Wl,--no-keep-memory
.endif

# __sync_add_and_fetch_8
.if ${MACHINE_ARCH} == "i386"
CFLAGS +=		-march=i686
CXXFLAGS +=		-march=i686
.endif

post-extract:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/cmake/WebKitCommon.cmake \
		${WRKSRC}/Source/WebKit/Shared/Plugins/unix/PluginSearchPath.cpp

.include <bsd.port.mk>
