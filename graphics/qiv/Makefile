# $OpenBSD: Makefile,v 1.23 2011/09/16 10:02:38 espie Exp $

COMMENT=		very small and pretty fast gdk/Imlib image viewer

DISTNAME=		qiv-2.2.2
REVISION=		4
CATEGORIES=		graphics

EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://spiegl.de/qiv/

MASTER_SITES=		${HOMEPAGE}/download/

LIB_DEPENDS=		devel/libmagic \
			graphics/imlib2 \
			graphics/libexif \
			x11/gtk+2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL Imlib2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm c cairo
WANTLIB += drm exif expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m magic pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MODULES=		devel/gettext

USE_GMAKE=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
