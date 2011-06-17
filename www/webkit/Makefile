# $OpenBSD: Makefile,v 1.51 2011/06/17 22:10:40 landry Exp $

COMMENT =	open source web browser engine for Gtk+

V =		1.4.1
DISTNAME =	webkit-${V}
EPOCH =		0
CATEGORIES =	www

HOMEPAGE =	http://webkitgtk.org/
MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Landry Breuil <gaston@gcu.info>

# XXX should be handled in .if FLAVOR block
SHARED_LIBS +=  webkitgtk-1.0 0.1                # .7.0
SHARED_LIBS +=  webkitgtk-3.0 0.1                # .7.0

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

VMEM_WARNING =	Yes

USE_GMAKE =	Yes
# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL =	gnu

MODULES =	devel/gettext \
		textproc/intltool  \
		lang/python \
		devel/dconf

MODPY_RUNDEP =	No

.include <bsd.own.mk>
.if ${COMPILER_VERSION:L:Mgcc4*}
STDCPPLIB = stdc++
.else
MODULES += 	gcc4
MODGCC4_ARCHES =*
MODGCC4_LANGS =	c c++
STDCPPLIB = estdc++
.endif

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lX11" \
		ac_cv_path_FLEX=${LOCALBASE}/bin/gflex
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--enable-introspection \
		--enable-spellcheck

MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	STDCPPLIB=${STDCPPLIB}

RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-bad \
		multimedia/gstreamer-0.10/plugins-good

WANTLIB =	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c xcb-render \
		expat fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 jpeg m gstinterfaces-0.10 \
		gdk_pixbuf-2.0 \
		gstreamer-0.10 gstbase-0.10 gstvideo-0.10 gstapp-0.10 gstpbutils-0.10 \
		icudata icui18n icuuc sqlite3 xslt enchant soup-2.4 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pthread GL Xxf86vm drm xcb-shm \
		z cairo pixman-1 png pthread-stubs xcb xml2 ${STDCPPLIB}

LIB_DEPENDS =	multimedia/gstreamer-0.10/core \
		multimedia/gstreamer-0.10/plugins-base \
		textproc/icu4c>=4.4 \
		databases/sqlite3 \
		textproc/libxslt \
		textproc/enchant \
		devel/libsoup>=2.34

BUILD_DEPENDS =	devel/bison \
		devel/flex \
		devel/gperf \
		devel/gobject-introspection

FLAVORS = gtk3
FLAVOR ?=

.if ${FLAVOR:L:Mgtk3}
FULLPKGNAME =	webkit-gtk3-${V}
LIB_DEPENDS +=	x11/gtk+3,-main
WANTLIB +=	cairo-gobject gailutil-3 gdk-3 gtk-3
CONFIGURE_ARGS += --with-gtk=3.0
.else
WANTLIB +=	gailutil gdk-x11-2.0 gtk-x11-2.0
LIB_DEPENDS +=	x11/gtk+2,-main
CONFIGURE_ARGS += --with-gtk=2.0
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/WebCore/plugins/PluginDatabase.cpp

.if ${FLAVOR:L:Mgtk3}
post-install:
	mv ${PREFIX}/bin/GtkLauncher ${PREFIX}/bin/GtkLauncher-3
.endif

.include <bsd.port.mk>
