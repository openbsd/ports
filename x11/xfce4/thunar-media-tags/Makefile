# $OpenBSD: Makefile,v 1.1.1.1 2007/07/04 19:23:37 jasper Exp $

COMMENT=	media tags plugin for Thunar file manager

DISTNAME=	thunar-media-tags-plugin-0.1.2
PKGNAME=	${DISTNAME:S/-plugin//}

HOMEPAGE=	http://goodies.xfce.org/

MASTER_SITES=	${HOMEPAGE:=releases/thunar-media-tags-plugin/}
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xext Xrender Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr \
		expat atk-1.0 cairo fontconfig freetype jpeg stdc++ exo-0.3 z png \
		gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gthread-2.0 \
		gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 xfce4util startup-notification-1

MODULES=	devel/gettext

LIB_DEPENDS=	thunarx-1.>=1.4,thunar-vfs-1.>=1.4::x11/xfce4/thunar \
		tag.>=6,tag_c.>=1::audio/taglib

USE_GMAKE=	Yes

.include <bsd.port.mk>
