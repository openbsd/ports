# $OpenBSD: Makefile,v 1.124 2014/09/05 14:45:02 jasper Exp $

PORTROACH =	limitw:1,even

COMMENT =	open source web browser engine for Gtk+

V =		2.4.5
DISTNAME =	webkitgtk-${V}
PKGNAME =	webkit-${V}
EPOCH =		1
CATEGORIES =	www
DPB_PROPERTIES =parallel
EXTRACT_SUFX =	.tar.xz

HOMEPAGE =	http://webkitgtk.org/
MASTER_SITES =	${HOMEPAGE}/releases/

MAINTAINER =	Landry Breuil <landry@openbsd.org> \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext \
		lang/python \
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

MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No
MODPY_ADJ_FILES =	Tools/gtk/generate-feature-defines-files \
			Tools/gtk/generate-inspector-gresource-manifest.py

MODGNOME_CPPFLAGS =	-I${X11BASE}/include -DLOG_DISABLED=0
MODGNOME_LDFLAGS =	-L${X11BASE}/lib -lX11
MODGNOME_TOOLS +=	gobject-introspection

# XXX TODO switch to cmake ?
CONFIGURE_STYLE =	gnu
# breaks because of missing webkit2/ headers dir ?
#SEPARATE_BUILD =	Yes
#AR_FLAGS,  cf http://trac.webkit.org/changeset/163954

CONFIGURE_ENV =	ac_cv_path_FLEX=${LOCALBASE}/bin/gflex \
		AR_FLAGS="cru" \
		ac_cv_path_RUBY=${RUBY}

LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_ARGS= --disable-static \
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

WANTLIB =	ICE SM X11 Xcomposite Xcursor Xdamage Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c xcb-render \
		EGL X11-xcb Xau Xdmcp glapi xcb-dri2 xcb-glx xcb-shape xcb-xfixes \
		expat fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 jpeg m harfbuzz-icu \
		Xxf86vm dbus-1 dbus-glib-1 drm geoclue gbm \
		gstaudio-1.0 gstfft-1.0 gdk_pixbuf-2.0 orc-0.4 \
		gstreamer-1.0 gstbase-1.0 gstvideo-1.0 gstapp-1.0 gstpbutils-1.0 \
		icudata icui18n icuuc sqlite3 xslt enchant soup-2.4 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pthread GL xcb-shm \
		z cairo pixman-1 png pthread-stubs xcb xml2 stdc++ ffi \
		harfbuzz graphite2 gcrypt gpg-error gsttag-1.0 secret-1 webp

LIB_DEPENDS =	multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base \
		devel/harfbuzz,-icu \
		textproc/libxslt \
		textproc/enchant \
		geo/geoclue \
		graphics/libwebp \
		devel/glib2>=2.36.0 \
		devel/libsoup>=2.42.0 \
		x11/gnome/libsecret

BUILD_DEPENDS =	devel/bison \
		devel/flex \
		devel/gperf

# WebKitPluginProcess links against gtk2 for flash plugin, even with gtk3 ?
LIB_DEPENDS +=	x11/gtk+2,-main
WANTLIB +=	gdk-x11-2.0 gtk-x11-2.0

FLAVORS = gtk3
FLAVOR ?=

.if ${FLAVOR:Mgtk3}
#XXX gross, but needed to have __sync_add_and_fetch_8 on 32-bits
#what about ppc ? hppa ?
.if ${MACHINE_ARCH} == "i386"
CFLAGS+=-march=i686
.endif

FULLPKGNAME =	webkit-gtk3-${V}
LIB_DEPENDS +=	x11/gtk+3,-main
WANTLIB +=	cairo-gobject gdk-3 gtk-3
WANTLIB +=	atk-bridge-2.0 atspi

WEBKIT_API_VERSION =	3.0
GTK_API_VERSION =	3.0
SHARED_LIBS += webkit2gtk-${WEBKIT_API_VERSION}		1.0 # 35.8
.else
# only works with gtk+3
CONFIGURE_ARGS+=	--disable-webkit2
WEBKIT_API_VERSION =	1.0
GTK_API_VERSION =	2.0
.endif

SHARED_LIBS += javascriptcoregtk-${WEBKIT_API_VERSION}	5.0 # 16.3
SHARED_LIBS += webkitgtk-${WEBKIT_API_VERSION}		7.0 # 22.11

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
	${INSTALL_PROGRAM} ${WRKSRC}/Programs/.libs/MiniBrowser ${PREFIX}/bin/MiniBrowser
.endif

.include <bsd.port.mk>
