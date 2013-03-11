# $OpenBSD: Makefile,v 1.26 2013/03/11 11:10:55 espie Exp $

COMMENT=		very small and pretty fast gdk/Imlib image viewer

DISTNAME=		qiv-2.2.4
CATEGORIES=		graphics

EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://spiegl.de/qiv/

MASTER_SITES=		${HOMEPAGE}/download/

LIB_DEPENDS=		devel/libmagic \
			graphics/imlib2 \
			x11/gtk+2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL Imlib2 X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 m magic pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext

USE_GMAKE=		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
