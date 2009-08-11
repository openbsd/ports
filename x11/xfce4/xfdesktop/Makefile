# $OpenBSD: Makefile,v 1.26 2009/08/11 08:38:42 ajacoutot Exp $

COMMENT=	Xfce4 desktop manager

XFCE_PROJECT=	xfdesktop
PKGNAME=	${DISTNAME}p0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

CONFIGURE_ARGS=	--enable-thunarx \
		--enable-exo

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		thunar-vfs-1.>=4,thunarx-1.>=4::x11/xfce4/thunar \
		xfce4menu-0.1::x11/xfce4/libxfce4menu \
		xfconf-0::x11/xfce4/xfconf

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender XRes atk-1.0 c cairo dbus-1 \
		dbus-glib-1 exo-0.3 expat fam fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread rpcsvc \
		startup-notification-1 stdc++ wnck-1 xfce4panel xfce4util xml2 z \
		pthread-stubs xcb

FAKE_FLAGS=	menudir=${PREFIX}/share/examples/xfdesktop

.include <bsd.port.mk>
