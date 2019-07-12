# $OpenBSD: Makefile,v 1.32 2019/07/12 20:43:31 sthen Exp $

ONLY_FOR_ARCHS = ${GCC4_ARCHS} ${CLANG_ARCHS}

COMMENT =	CALF LADSPA plugins
DISTNAME =	calf-0.0.18.6
CATEGORIES =	audio
REVISION =	4

HOMEPAGE =	https://calf-studio-gear.org/

# GPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo db expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl jack lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += xcb xcb-render xcb-shm xml2 z fribidi ${COMPILER_LIBCXX}

MASTER_SITES =		https://calf-studio-gear.org/files/

COMPILER =		base-clang ports-gcc
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/jack \
			devel/libglade2
BUILD_DEPENDS +=	audio/ladspa

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-dssi \
			--without-lv2
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
