# $OpenBSD: Makefile,v 1.2 2007/07/05 06:46:57 steven Exp $

COMMENT=	media tags plugin for Thunar file manager

V=		0.1.2
DISTNAME=	thunar-media-tags-plugin-${V}
PKGNAME=	thunar-media-tags-${V}p0

HOMEPAGE=	http://goodies.xfce.org/projects/thunar-plugins/thunar-media-tags-plugin

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/thunar-media-tags-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

WANTLIB=	ICE SM X11 Xext Xrender Xau Xcursor Xdmcp Xfixes Xi Xinerama \
		Xrandr expat atk-1.0 cairo fontconfig freetype jpeg stdc++ \
		exo-0.3 m z png gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gthread-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 xfce4util startup-notification-1

LIB_DEPENDS=	thunarx-1.>=4,thunar-vfs-1.>=4::x11/xfce4/thunar \
		tag.>=6,tag_c.>=1::audio/taglib

.include <bsd.port.mk>
