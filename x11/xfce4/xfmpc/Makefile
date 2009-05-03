# $OpenBSD: Makefile,v 1.1.1.1 2009/05/03 19:20:14 landry Exp $

COMMENT=	Xfce4 Music Player Daemon client

XFCE_VERSION=	0.1.0
XFCE_GOODIE=	xfmpc

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

DESKTOP_FILES=	Yes
MODULES=	x11/xfce4

LIB_DEPENDS=	mpd.>=2::audio/libmpd \
		xfcegui4.>=4::x11/xfce4/libxfcegui4

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png startup-notification-1 xfce4util z

.include <bsd.port.mk>
