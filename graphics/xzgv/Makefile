# $OpenBSD: Makefile,v 1.22 2019/07/12 20:47:12 sthen Exp $

COMMENT=	picture viewer for X, with thumbnail-based file selector
DISTNAME=	xzgv-0.9
REVISION=	7
CATEGORIES=	graphics
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://xzgv.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0>=0.11 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0>=0.11 iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xzgv/}

LIB_DEPENDS+=   x11/gtk+2


NO_TEST=	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/doc/xzgv.1 ${WRKSRC}/doc/xzgv.texi

.include <bsd.port.mk>
