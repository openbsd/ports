# $OpenBSD: Makefile,v 1.91 2013/08/06 19:11:30 ajacoutot Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT =	open source web browser engine for Gtk+

V =		2.0.4
DISTNAME =	webkitgtk-${V}
PKGNAME =	webkit-${V}
EPOCH =		0
CATEGORIES =	www
DPB_PROPERTIES =parallel
EXTRACT_SUFX=	.tar.xz

HOMEPAGE =	http://webkitgtk.org/
MASTER_SITES =	${HOMEPAGE}/releases/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes

VMEM_WARNING =	Yes

USE_GMAKE =	Yes

MODULES =	devel/gettext \
		textproc/intltool  \
		lang/python \
		lang/ruby

MODPY_RUNDEP =	No
MODRUBY_RUNDEP =	No
MODPY_ADJ_FILES =	Tools/gtk/generate-feature-defines-files

CONFIGURE_STYLE =	gnu
PORTHOME =	${WRKDIST}

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lX11" \
		ac_cv_path_FLEX=${LOCALBASE}/bin/gflex \
		ac_cv_path_RUBY=${RUBY}

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-static \
		--disable-gtk-doc \
		--enable-introspection \
		--enable-spellcheck

# XXX: uncomment if you want to debug the javascript engine
# this will only build the needed libs and the shell
# ALL_TARGET=jsc

.if ${MACHINE_ARCH} == "powerpc"
# Turns on -O0 globally, makes jsc work ?
CONFIGURE_ARGS +=	--enable-optimizations=no
# XXX huge hack LDFLAGS is already added a bit before
CONFIGURE_ENV +=	COVERAGE_LDFLAGS="-Wl,--relax"
.endif

# force-disable JIT/ASSEMBLER on non-jit archs otherwise build fails
.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
MAKE_FLAGS +=	JSC_CPPFLAGS="-DENABLE_YARR_JIT=0 -DENABLE_ASSEMBLER=0"
.endif

MAKE_FILE =	GNUmakefile

.if ${MACHINE_ARCH:Msparc64}
# until 1.9 is reliable on sparc64...
MODRUBY_REV =	1.8
.endif

WANTLIB =	ICE SM X11 Xcomposite Xcursor Xdamage Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c xcb-render \
		expat fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 jpeg m harfbuzz-icu \
		Xxf86vm dbus-1 dbus-glib-1 drm geoclue \
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
		devel/gperf \
		devel/gobject-introspection

FLAVORS = gtk3
FLAVOR ?=
# eases PLIST/PFRAGs
SUBST_VARS =	WEBKIT_API_VERSION GTK_API_VERSION

.if ${FLAVOR:Mgtk3}
# needs shm_open()/shm_unlink()
CONFIGURE_ARGS+=	--disable-webkit2

FULLPKGNAME =	webkit-gtk3-${V}
LIB_DEPENDS +=	x11/gtk+3,-main
WANTLIB +=	cairo-gobject gailutil-3 gdk-3 gtk-3
WANTLIB +=	atk-bridge-2.0 atspi
WEBKIT_API_VERSION =	3.0
GTK_API_VERSION =	3.0
.else
# only works with gtk+3
CONFIGURE_ARGS+=	--disable-webkit2
WANTLIB +=	gailutil gdk-x11-2.0 gtk-x11-2.0
LIB_DEPENDS +=	x11/gtk+2,-main
WEBKIT_API_VERSION =	1.0
GTK_API_VERSION =	2.0
.endif
CONFIGURE_ARGS += --with-gtk=${GTK_API_VERSION}
SHARED_LIBS += javascriptcoregtk-${WEBKIT_API_VERSION}	3.0 # 13.16
SHARED_LIBS += webkitgtk-${WEBKIT_API_VERSION}		5.0 # 18.9

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/WebCore/plugins/PluginDatabase.cpp ${WRKSRC}/configure

.if ${FLAVOR:Mgtk3}
post-install:
	mv ${PREFIX}/bin/GtkLauncher ${PREFIX}/bin/GtkLauncher-3
.endif

.include <bsd.port.mk>
