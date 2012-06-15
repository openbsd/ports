# $OpenBSD: Makefile,v 1.3 2012/06/15 08:30:20 ajacoutot Exp $

COMMENT=		system log viewer for GNOME

GNOME_PROJECT=		gnome-system-log
GNOME_VERSION=		3.4.1
REVISION=		0

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

LIB_DEPENDS=		x11/gtk+3

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
