# $OpenBSD: Makefile,v 1.1.1.1 2010/10/23 15:40:19 landry Exp $

COMMENT =	GPS track manager

DISTNAME =	viking-0.9.96

CATEGORIES =	geo x11

HOMEPAGE =	http://viking.sourceforge.net/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=viking/}

MODULES =	devel/gettext x11/gnome

CONFIGURE_STYLE =	gnu
DESKTOP_FILES =		Yes
MODGNOME_HELP_FILES =	Yes

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

LIB_DEPENDS =	::misc/gpsd \
		::net/curl \
		::devel/libidn \
		::x11/gtk+2

WANTLIB = gps curl idn gdk-x11-2.0 gtk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs ssl
WANTLIB += GL Xxf86vm drm xcb-shm xcb xcb-render z

.include <bsd.port.mk>
