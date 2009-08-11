# $OpenBSD: Makefile,v 1.10 2009/08/11 08:38:41 ajacoutot Exp $

COMMENT=	Xfce4 dictionary application

XFCE_VERSION=	0.4.1
XFCE_GOODIE=	xfce4-dict
PKGNAME=	${DISTNAME}p1

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	xfce4panel.>=2.2::x11/xfce4/xfce4-panel

WANTLIB=	ICE SM X11 Xdmcp Xrender Xdamage Xau fontconfig freetype \
		Xcursor Xext Xfixes Xi Xinerama Xcomposite Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 m z c \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pcre \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png pthread \
		startup-notification-1 xfce4util pixman-1 gthread-2.0 \
		xfcegui4 pthread-stubs xcb

.include <bsd.port.mk>
