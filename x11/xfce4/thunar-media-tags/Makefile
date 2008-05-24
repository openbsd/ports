# $OpenBSD: Makefile,v 1.4 2008/05/24 01:24:31 fgsch Exp $

COMMENT=	media tags plugin for Thunar file manager

V=		0.1.2
DISTNAME=	thunar-media-tags-plugin-${V}
PKGNAME=	thunar-media-tags-${V}p2

HOMEPAGE=	http://goodies.xfce.org/projects/thunar-plugins/thunar-media-tags-plugin

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/thunar-media-tags-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo exo-0.3 \
		expat fam fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png rpcsvc startup-notification-1 stdc++ \
		xfce4util z

LIB_DEPENDS=	thunarx-1.>=4,thunar-vfs-1.>=4::x11/xfce4/thunar \
		tag.>=6,tag_c.>=1::audio/taglib

.include <bsd.port.mk>
