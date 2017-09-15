# $OpenBSD: Makefile,v 1.65 2017/09/15 07:43:42 ajacoutot Exp $

# patches/patch-Source_JavaScriptCore_javascriptcoregtk_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk-web-extension_pc_in
# patches/patch-Source_WebKit_gtk_webkit2gtk_pc_in
USE_WXNEEDED =		Yes

BROKEN-alpha =		error: Compiler GCC >= 4.7 or Clang >= 3.3 is required for C compilation
BROKEN-hppa =		error: Compiler GCC >= 4.7 or Clang >= 3.3 is required for C compilation

PORTROACH =		limitw:1,even

COMMENT =		GTK+ port of the WebKit rendering engine

V =			2.18.0
DISTNAME =		webkitgtk-${V}
PKGNAME =		webkitgtk4-${V}
EXTRACT_SUFX =		.tar.xz
API =			4.0
SUBST_VARS =		API
DPB_PROPERTIES =	parallel

SHARED_LIBS +=  javascriptcoregtk-${API}     2.3 # 18.6
SHARED_LIBS +=  webkit2gtk-${API}            2.3 # 37.24

CATEGORIES =		www

HOMEPAGE =		http://webkitgtk.org/

MAINTAINER =		Landry Breuil <landry@openbsd.org> \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += EGL GL X11 Xcomposite Xdamage Xrender Xt atk-1.0 c
WANTLIB += cairo cairo-gobject enchant fontconfig freetype gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gtk-3 harfbuzz harfbuzz-icu hyphen icudata icui18n
WANTLIB += icuuc intl jpeg m notify pango-1.0 pangocairo-1.0 png
WANTLIB += secret-1 soup-2.4 sqlite3 tasn1 webp xml2 xslt z
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		http://webkitgtk.org/releases/

MODULES =		devel/cmake \
			lang/python \
			lang/ruby \
			x11/gnome

COMPILER =		gcc

MODRUBY_RUNDEP =	No
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	Tools/gtk/generate-inspector-gresource-manifest.py
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

LIB_DEPENDS =		devel/harfbuzz,-icu \
			devel/libnotify \
			devel/libsoup \
			graphics/libwebp \
			multimedia/gstreamer1/plugins-bad \
			textproc/enchant \
			textproc/hyphen \
			textproc/libxslt \
			x11/gnome/libsecret \
			x11/gtk+3

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS =		-L${X11BASE}/lib -L${LOCALBASE}/lib

CONFIGURE_ARGS =	-DPORT=GTK \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}"

# old gtk+2 plugins (flash, java, ...); mostly usefull on Linux
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
