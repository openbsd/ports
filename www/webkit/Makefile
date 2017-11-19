# $OpenBSD: Makefile,v 1.158 2017/11/19 13:23:18 ajacoutot Exp $

USE_WXNEEDED =		Yes

PORTROACH =		limit:^2\.4

COMMENT =		open source web browser engine for Gtk+
BROKEN-alpha =		error: Compiler GCC >= 4.7 or Clang >= 3.3 is required for C compilation
BROKEN-hppa =		error: Compiler GCC >= 4.7 or Clang >= 3.3 is required for C compilation

V =			2.4.11
DISTNAME =		webkitgtk-${V}
PKGNAME =		webkit-${V}
EPOCH =			1
CATEGORIES =		www
DPB_PROPERTIES =	parallel
EXTRACT_SUFX =		.tar.xz
REVISION =		5

HOMEPAGE =		http://webkitgtk.org/
MASTER_SITES =		http://webkitgtk.org/releases/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS += javascriptcoregtk-1.0	5.0 # 16.19
SHARED_LIBS += webkitgtk-1.0		7.0 # 22.17

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt Xxf86vm atk-1.0 c cairo drm enchant expat ffi fontconfig
WANTLIB += freetype gbm gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz harfbuzz-icu iconv icudata icui18n icuuc intl
WANTLIB += jpeg lzma m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png secret-1 soup-2.4 sqlite3 webp xcb
WANTLIB += xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes xml2
WANTLIB += xslt z

MODULES =		lang/python \
			lang/ruby \
			x11/gnome

# cant use clang = needs <chrono> header in StdLib ?
COMPILER =		base-clang ports-gcc

MAKE_FILE =		GNUmakefile
PORTHOME =		${WRKDIST}

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No
MODPY_ADJ_FILES =	Tools/gtk/generate-feature-defines-files \
			Tools/gtk/generate-inspector-gresource-manifest.py

MODGNOME_CPPFLAGS =	-I${X11BASE}/include -DLOG_DISABLED=0
MODGNOME_LDFLAGS =	-L${X11BASE}/lib -lX11
MODGNOME_TOOLS=		gobject-introspection

CONFIGURE_STYLE =	gnu
# AR_FLAGS: cf http://trac.webkit.org/changeset/163954
CONFIGURE_ENV =		AR_FLAGS="cru" \
			ac_cv_path_RUBY=${RUBY}

CONFIGURE_ARGS =	--disable-static \
			--disable-webkit2 \
			--enable-spellcheck \
			--with-gtk=2.0

.if ${MACHINE_ARCH} == "powerpc"
# Turns on -O0 globally, makes jsc work ?
CONFIGURE_ARGS +=	--enable-optimizations=no
# XXX huge hack LDFLAGS is already added a bit before
CONFIGURE_ENV +=	COVERAGE_LDFLAGS="-Wl,--relax"
.endif

LIB_DEPENDS =		multimedia/gstreamer1/plugins-base \
			devel/harfbuzz,-icu \
			textproc/libxslt \
			textproc/enchant \
			graphics/libwebp \
			devel/glib2 \
			devel/libsoup \
			x11/gnome/libsecret \
			x11/gtk+2

BUILD_DEPENDS =		devel/bison \
			devel/gettext-tools \
			devel/gperf \
			geo/geoclue2

RUN_DEPENDS =		geo/geoclue2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/WebCore/plugins/PluginDatabase.cpp

.include <bsd.port.mk>
