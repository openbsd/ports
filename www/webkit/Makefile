# $OpenBSD: Makefile,v 1.149 2016/09/01 15:50:30 ajacoutot Exp $

USE_WXNEEDED =	Yes

PORTROACH =	limit:^2\.4

COMMENT =	open source web browser engine for Gtk+
BROKEN-alpha =	error: Compiler GCC >= 4.7 or Clang >= 3.3 is required for C compilation
BROKEN-hppa =	error: Compiler GCC >= 4.7 or Clang >= 3.3 is required for C compilation

V =		2.4.11
DISTNAME =	webkitgtk-${V}
PKGNAME =	webkit-${V}
EPOCH =		1
CATEGORIES =	www
DPB_PROPERTIES =parallel
EXTRACT_SUFX =	.tar.xz
REVISION =	0

HOMEPAGE =	http://webkitgtk.org/
MASTER_SITES =	${HOMEPAGE}/releases/

MAINTAINER =	Landry Breuil <landry@openbsd.org> \
		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS += javascriptcoregtk-${WEBKIT_API_VERSION}	5.0 # 16.19
SHARED_LIBS += webkitgtk-${WEBKIT_API_VERSION}		7.0 # 22.17

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python \
		lang/ruby \
		x11/gnome

MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++
# cant use clang = needs <chrono> header in StdLib ?
#MODULES +=		lang/clang
#MODCLANG_ARCHS =        amd64
#MODCLANG_LANGS =        c c++

MAKE_FILE =		GNUmakefile
PORTHOME =		${WRKDIST}
SUBST_VARS =		WEBKIT_API_VERSION GTK_API_VERSION

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No
MODPY_ADJ_FILES =	Tools/gtk/generate-feature-defines-files \
			Tools/gtk/generate-inspector-gresource-manifest.py

MODGNOME_CPPFLAGS =	-I${X11BASE}/include -DLOG_DISABLED=0
MODGNOME_LDFLAGS =	-L${X11BASE}/lib -lX11
MODGNOME_TOOLS +=	gobject-introspection

CONFIGURE_STYLE =	gnu
# AR_FLAGS: cf http://trac.webkit.org/changeset/163954
CONFIGURE_ENV =	AR_FLAGS="cru" \
		ac_cv_path_RUBY=${RUBY}
CONFIGURE_ARGS= --disable-static \
		--disable-webkit2 \
		--enable-spellcheck \
		--with-gtk=${GTK_API_VERSION}

# XXX: uncomment if you want to debug the javascript engine
# this will only build the needed libs and the shell
# ALL_TARGET=jsc

.if ${MACHINE_ARCH} == "powerpc"
# Turns on -O0 globally, makes jsc work ?
CONFIGURE_ARGS +=	--enable-optimizations=no
# XXX huge hack LDFLAGS is already added a bit before
CONFIGURE_ENV +=	COVERAGE_LDFLAGS="-Wl,--relax"
.endif

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += c cairo dbus-1 drm enchant expat ffi fontconfig freetype
WANTLIB += gbm gcrypt gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 harfbuzz harfbuzz-icu
WANTLIB += iconv icudata icui18n icuuc intl jpeg lzma m orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs secret-1 soup-2.4 sqlite3
WANTLIB += stdc++ webp xcb xcb-dri2 xcb-glx xcb-render xcb-shape
WANTLIB += xcb-shm xcb-xfixes xml2 xslt z

LIB_DEPENDS =	multimedia/gstreamer1/plugins-base \
		devel/harfbuzz,-icu \
		textproc/libxslt \
		textproc/enchant \
		graphics/libwebp \
		devel/glib2 \
		devel/libsoup \
		x11/gnome/libsecret

BUILD_DEPENDS =	devel/bison \
		devel/gettext-tools \
		devel/gperf \
		geo/geoclue2

RUN_DEPENDS =	geo/geoclue2

FLAVORS = gtk3
FLAVOR ?=

.if ${FLAVOR:Mgtk3}
#XXX gross, but needed to have __sync_add_and_fetch_8 on 32-bits
#what about ppc ? hppa ?
.if ${MACHINE_ARCH} == "i386"
CFLAGS +=	-march=i686
CXXFLAGS +=	-march=i686
.endif

FULLPKGNAME =	webkit-gtk3-${V}
LIB_DEPENDS +=	x11/gtk+3,-main
WANTLIB +=	cairo-gobject gdk-3 gtk-3 epoxy atk-bridge-2.0 atspi

WEBKIT_API_VERSION =	3.0
GTK_API_VERSION =	3.0
.else

WEBKIT_API_VERSION =	1.0
GTK_API_VERSION =	2.0
LIB_DEPENDS +=	x11/gtk+2,-main
WANTLIB +=	gdk-x11-2.0 gtk-x11-2.0
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/WebCore/plugins/PluginDatabase.cpp ${WRKSRC}/configure
	# this ensures gtk-doc files are installed in a versionned directory so that we can
	# install both versions alongside, see DOC_MODULE_VERSION in GNUMakefile.in
	echo ${WEBKIT_API_VERSION} > ${WRKSRC}/Documentation/webkitdomgtk/version.xml
	echo ${WEBKIT_API_VERSION} > ${WRKSRC}/Documentation/webkitgtk/version.xml

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Programs/.libs/GtkLauncher ${PREFIX}/bin/GtkLauncher
.if ${FLAVOR:Mgtk3}
	mv ${PREFIX}/bin/GtkLauncher ${PREFIX}/bin/GtkLauncher-3
.endif

.include <bsd.port.mk>
