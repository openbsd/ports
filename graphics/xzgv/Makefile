# $OpenBSD: Makefile,v 1.17 2015/02/15 13:05:11 naddy Exp $

COMMENT=	picture viewer for X, with thumbnail-based file selector
DISTNAME=	xzgv-0.9
REVISION=	4
CATEGORIES=	graphics

HOMEPAGE=	http://xzgv.sourceforge.net/

MAINTAINER=	Julian Leyh <julian@vgai.de>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xzgv/}

MODULES=	devel/gettext

LIB_DEPENDS+=   x11/gtk+2

WANTLIB+=	X11 Xcomposite Xcursor Xdamage Xext Xfixes 
WANTLIB +=	gdk_pixbuf-2.0 gdk-x11-2.0>=0.11 gtk-x11-2.0>=0.11
WANTLIB+=	Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB+=	freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pango-1.0
WANTLIB+=	pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs xcb z
WANTLIB += GL gthread-2.0 pthread xcb-render xcb-shm

NO_TEST=	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/doc/xzgv.1 ${WRKSRC}/doc/xzgv.texi

.include <bsd.port.mk>
