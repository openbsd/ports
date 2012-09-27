# $OpenBSD: Makefile,v 1.56 2012/09/27 08:00:06 jasper Exp $

COMMENT=		dialogs for GNOME

GNOME_PROJECT=		zenity
GNOME_VERSION=		3.6.0

HOMEPAGE=		https://live.gnome.org/Zenity

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 javascriptcoregtk-3.0 m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 webkitgtk-3.0 xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libnotify>=0.7.2 \
			www/webkit,gtk3

MODGNOME_TOOLS= 	yelp
USE_LIBTOOL=		No
CONFIGURE_ARGS= 	--enable-libnotify

.include <bsd.port.mk>
