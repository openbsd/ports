# $OpenBSD: Makefile,v 1.7 2009/06/23 19:53:03 landry Exp $

COMMENT=	Thunar media tags plugin

XFCE_VERSION=	0.1.2
XFCE_GOODIE=	thunar-media-tags-plugin
PKGNAME=	${DISTNAME:S/-plugin//}p5

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo exo-0.3 \
		expat fam fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png rpcsvc startup-notification-1 stdc++ \
		xfce4util z

LIB_DEPENDS=	thunarx-1.>=4,thunar-vfs-1.>=4::x11/xfce4/thunar \
		tag.>=6,tag_c.>=1::audio/taglib

.include <bsd.port.mk>
