# $OpenBSD: Makefile,v 1.26 2017/07/27 14:06:31 sthen Exp $

ONLY_FOR_ARCHS = ${GCC4_ARCHS} ${CLANG_ARCHS}

COMMENT =	CALF LADSPA plugins
DISTNAME =	calf-0.0.18.6
CATEGORIES =	audio

HOMEPAGE =	http://calf-studio-gear.org/

# GPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo db expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz jack lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xml2 z ${COMPILER_LIBCXX}

MASTER_SITES =		http://calf-studio-gear.org/files/

COMPILER =		gcc
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/jack \
			devel/libglade2
BUILD_DEPENDS +=	audio/ladspa

MODULES +=		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-dssi \
			--without-lv2
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
