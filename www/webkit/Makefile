# $OpenBSD: Makefile,v 1.68 2012/09/01 14:36:58 ajacoutot Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT =	open source web browser engine for Gtk+

V =		1.8.3
DISTNAME =	webkit-${V}
EPOCH =		0
CATEGORIES =	www
EXTRACT_SUFX=	.tar.xz
REVISION=	0

HOMEPAGE =	http://webkitgtk.org/
MASTER_SITES =	${HOMEPAGE}/releases/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

VMEM_WARNING =	Yes

USE_LIBTOOL =	Yes
USE_GMAKE =	Yes

MODULES =	devel/gettext \
		textproc/intltool  \
		lang/python \
		devel/dconf

MODPY_RUNDEP =	No

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lX11" \
		ac_cv_path_FLEX=${LOCALBASE}/bin/gflex

LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-static \
		--disable-gtk-doc \
		--enable-introspection \
		--enable-spellcheck

MAKE_FILE =	GNUmakefile

# Fix incorrect GCC output which was caused by over optimization
# when compiling Source/JavaScriptCore/runtime/NumberPrototype.cpp
# as it was emitting a fdtox %r8, %r7 call, whose second operand isn't even and thus invalid.
.if ${MACHINE_ARCH:Msparc64}
MAKE_FLAGS=	EXTRA_FLAGS="-O0"
.endif

RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-bad \
		multimedia/gstreamer-0.10/plugins-good

WANTLIB =	ICE SM X11 Xcomposite Xcursor Xdamage Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c xcb-render \
		expat fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 jpeg m gstinterfaces-0.10 \
		Xau Xdmcp Xxf86vm dbus-1 dbus-glib-1 drm geoclue \
		gstaudio-0.10 gstfft-0.10 gdk_pixbuf-2.0 orc-0.4 \
		gstreamer-0.10 gstbase-0.10 gstvideo-0.10 gstapp-0.10 gstpbutils-0.10 \
		icudata icui18n icuuc sqlite3 xslt enchant soup-2.4 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pthread GL xcb-shm \
		z cairo pixman-1 png pthread-stubs xcb xml2 stdc++ ffi

LIB_DEPENDS =	multimedia/gstreamer-0.10/core \
		multimedia/gstreamer-0.10/plugins-base \
		textproc/icu4c>=4.4 \
		textproc/libxslt \
		textproc/enchant \
		geo/geoclue \
		devel/glib2>=2.31.2 \
		devel/libsoup>=2.37.92

BUILD_DEPENDS =	devel/bison \
		devel/flex \
		devel/gperf \
		devel/gobject-introspection

FLAVORS = gtk3
FLAVOR ?=
# eases PLIST/PFRAGs
SUBST_VARS =	WEBKIT_API_VERSION GTK_API_VERSION

.if ${FLAVOR:L:Mgtk3}
FULLPKGNAME =	webkit-gtk3-${V}
LIB_DEPENDS +=	x11/gtk+3,-main
WANTLIB +=	cairo-gobject gailutil-3 gdk-3 gtk-3
WEBKIT_API_VERSION =	3.0
GTK_API_VERSION =	3.0
.else
WANTLIB +=	gailutil gdk-x11-2.0 gtk-x11-2.0
LIB_DEPENDS +=	x11/gtk+2,-main
WEBKIT_API_VERSION =	1.0
GTK_API_VERSION =	2.0
.endif
CONFIGURE_ARGS += --with-gtk=${GTK_API_VERSION}
SHARED_LIBS += javascriptcoregtk-${WEBKIT_API_VERSION}	2.0 #.13.2
SHARED_LIBS += webkitgtk-${WEBKIT_API_VERSION}		4.0 #.13.2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/WebCore/plugins/PluginDatabase.cpp

.if ${FLAVOR:L:Mgtk3}
post-install:
	mv ${PREFIX}/bin/GtkLauncher ${PREFIX}/bin/GtkLauncher-3
.endif

.include <bsd.port.mk>
