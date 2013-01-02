# $OpenBSD: Makefile,v 1.34 2013/01/02 17:12:22 landry Exp $

COMMENT=	Xfce4 volume mixer

XFCE_GOODIE=	xfce4-mixer
XFCE_VERSION=	4.8.0
REVISION=	4
HOMEPAGE=	http://www.xfce.org/projects/xfce4-mixer

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		multimedia/gstreamer-0.10/core \
		multimedia/gstreamer-0.10/plugins-base \
		x11/xfce4/xfconf \
		x11/xfce4/xfce4-panel

# needed for libgstossaudio..
RUN_DEPENDS=	multimedia/gstreamer-0.10/plugins-good
CONFIGURE_ARGS+=	--disable-linker-opts

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstaudio-0.10 gstbase-0.10
WANTLIB += gstinterfaces-0.10 gstreamer-0.10 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-aux xcb-render xcb-shm xfce4panel-1.0 xfce4ui-1
WANTLIB += xfce4util xfconf-0 xml2 z gstpbutils-0.10 stdc++
WANTLIB += harfbuzz icudata icule icuuc

.include <bsd.port.mk>
