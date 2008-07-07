# $OpenBSD: Makefile,v 1.5 2008/07/07 12:08:15 landry Exp $

COMMENT=	gnome-like places plugin for the xfce4 panel

XFCE_VERSION=	1.1.0
XFCE_PLUGIN=	places
PKGNAME=	${DISTNAME}p0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	thunar-vfs-1.>=4::x11/xfce4/thunar

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo exo-0.3 \
		expat fam fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread rpcsvc startup-notification-1 \
		stdc++ xfce4util xfcegui4 z

.include <bsd.port.mk>
