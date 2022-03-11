COMMENT =		tool for isolation, routing, and drilling of PCBs
V =			2.4.0

GH_ACCOUNT =		pcb2gcode
GH_PROJECT =		pcb2gcode
GH_TAGNAME =		v${V}

CATEGORIES =		cad

MAINTAINER =		Tracey Emery <tracey@openbsd.org>

#GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 boost_program_options-mt
WANTLIB += c cairo expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 geos gerbv gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gtk-x11-2.0 harfbuzz iconv intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png xcb xcb-render xcb-shm z

COMPILER =		base-clang ports-gcc

# librsvg/gdkmm only used in gerberimporter_tests.cpp, not packaged
BUILD_DEPENDS =         x11/gnome/librsvg \
                        x11/gtk2mm
LIB_DEPENDS =		cad/gerbv \
			devel/boost \
			devel/atk \
			devel/fribidi \
			devel/libffi \
			geo/geos \
			graphics/cairo

MAKE_FLAGS =		GIT_VERSION="${V}"

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

.include <bsd.port.mk>
