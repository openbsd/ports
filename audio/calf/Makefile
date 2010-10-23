# $OpenBSD: Makefile,v 1.1.1.1 2010/10/23 21:52:00 jakemsr Exp $

SHARED_ONLY =		Yes

COMMENT =		CALF LADSPA plugins
DISTNAME =		calf-0.0.18.5

CATEGORIES =		audio

HOMEPAGE =		http://tap-plugins.sourceforge.net/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c \
		cairo drm expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 gthread-2.0 iconv intl m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		pthread-stubs xcb xcb-render xcb-shm xml2 z \
		jack glade-2.0

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=calf/}

MODULES =		gcc4
MODGCC4_ARCHES =	*
MODGCC4_LANGS =		c c++

RUN_DEPENDS =		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =		::audio/jack \
			::devel/libglade2

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-dssi \
			--without-lv2
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS =		Yes

.include <bsd.port.mk>
