# $OpenBSD: Makefile,v 1.51 2011/10/16 19:23:35 ajacoutot Exp $

COMMENT=		dialogs for GNOME

GNOME_PROJECT=		zenity
GNOME_VERSION=		3.2.0
REVISION=		0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo cairo-gobject
WANTLIB += expat fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 m
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z soup-2.4 webkitgtk-3.0

LIB_DEPENDS=		devel/libnotify>=0.7.2 \
			www/webkit,gtk3

MODGNOME_TOOLS= 	yelp
USE_LIBTOOL=		No
CONFIGURE_ARGS= 	--enable-libnotify

.include <bsd.port.mk>
