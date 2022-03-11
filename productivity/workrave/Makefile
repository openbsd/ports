COMMENT=		RSI prevention tool

V=			1.10.44
DISTNAME=		workrave-${V}
REVISION=		0

SHARED_LIBS +=  workrave-private-1.0 1.0      # unknown

CATEGORIES=		productivity x11

HOMEPAGE=		http://www.workrave.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xss Xtst atk-1.0
WANTLIB += atk-bridge-2.0 atkmm-1.6 c cairo cairo-gobject cairomm-1.0
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstreamer-1.0 gthread-2.0 gtk-3
WANTLIB += gtkmm-3.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png sigc-2.0
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=		https://github.com/rcaelers/workrave/releases/download/v${V:S/./_/g}/

MODULES=		lang/python \
			textproc/intltool

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/boost \
			devel/gobject-introspection \
			www/py-jinja2${MODPY_FLAVOR}

LIB_DEPENDS=		multimedia/gstreamer1/core \
			x11/gtk3mm

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

# c++11
COMPILER=		base-clang ports-gcc

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

CONFIGURE_ARGS=		--disable-gconf \
			--disable-xml \
			--disable-pulse

# could be enabled if requested (needs testing)
CONFIGURE_ARGS +=	--disable-gsettings \
			--disable-gnome3 \
			--disable-indicator \
			--disable-xfce \
			--disable-mate \
			--disable-distribution

# /usr/include/c++/v1/__locale:62:3: error: unknown type name 'locale_t'
pre-configure:
	find ${WRKDIST} -name Makefile.in -exec \
		sed -i 's/-D_XOPEN_SOURCE=600/-D_XOPEN_SOURCE=700 -D_BSD_SOURCE/' '{}' \+

# disabled in CONFIGURE_ARGS
post-install:
	rm -rf ${PREFIX}/share/{cinnamon,gnome-shell}

.include <bsd.port.mk>
