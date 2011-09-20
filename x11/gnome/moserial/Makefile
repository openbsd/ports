# $OpenBSD: Makefile,v 1.7 2011/09/20 20:52:46 jasper Exp $

COMMENT=		serial terminal for GNOME

GNOME_PROJECT=		moserial
GNOME_VERSION=		3.0.1
REVISION=	0

CATEGORIES=		comms

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

LIB_DEPENDS=		x11/gtk+3

MODGNOME_DESKTOP_FILE=		Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include " \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
