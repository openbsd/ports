# $OpenBSD: Makefile,v 1.23 2010/07/27 12:58:43 landry Exp $

COMMENT=	Xfce4 volume mixer

XFCE_GOODIE=	xfce4-mixer
XFCE_VERSION=	4.6.1
REVISION=	4
HOMEPAGE=	http://www.xfce.org/projects/xfce4-mixer

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	::x11/xfce4/libxfcegui4 \
		::multimedia/gstreamer-0.10/core \
		::multimedia/gstreamer-0.10/plugins-base \
		::x11/xfce4/xfconf \
		::x11/xfce4/xfce4-panel

# needed for libgstossaudio..
RUN_DEPENDS=	::multimedia/gstreamer-0.10/plugins-good

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m xfce4panel \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 xfcegui4 \
		png pthread startup-notification-1 xfce4util xml2 z pthread-stubs xcb \
		execinfo xcb-atom xcb-aux xcb-event xcb-render xcb-render-util \
		xfconf-0 gstbase-0.10 gstreamer-0.10 gstaudio-0.10 gstinterfaces-0.10

.include <bsd.port.mk>
