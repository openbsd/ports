# $OpenBSD: Makefile,v 1.15 2013/05/31 15:34:39 ajacoutot Exp $

SHARED_ONLY =		Yes

ONLY_FOR_ARCHS =	${GCC4_ARCHS}

COMMENT =		CALF LADSPA plugins
DISTNAME =		calf-0.0.18.5
REVISION =		8
CATEGORIES =		audio

HOMEPAGE =		http://tap-plugins.sourceforge.net/

# GPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c \
		cairo drm expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 gthread-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		pthread-stubs xcb xcb-render xcb-shm xml2 z \
		jack glade-2.0 ffi stdc++ harfbuzz

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=calf/}

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
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
