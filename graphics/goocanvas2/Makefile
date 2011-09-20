# $OpenBSD: Makefile,v 1.4 2011/09/20 21:04:24 jasper Exp $

COMMENT=		canvas widget for GTK+ based on Cairo

GNOME_PROJECT=		goocanvas
GNOME_VERSION=		2.0.0
PKGNAME=		goocanvas2-${GNOME_VERSION}
REVISION=		0

SHARED_LIBS +=  goocanvas-2.0             0.0 # 10.1
CATEGORIES=		graphics

EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://live.gnome.org/GooCanvas

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
