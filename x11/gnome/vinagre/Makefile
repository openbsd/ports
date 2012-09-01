# $OpenBSD: Makefile,v 1.64 2012/09/01 14:37:00 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	remote desktop viewer for GNOME

GNOME_PROJECT=	vinagre
GNOME_VERSION=	3.4.2
REVISION=	1

CATEGORIES=	net

HOMEPAGE=	http://projects.gnome.org/vinagre/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xrender atk-1.0 avahi-client avahi-common avahi-glib
WANTLIB += avahi-gobject avahi-ui-gtk3 c cairo cairo-gobject dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnome-keyring gobject-2.0 gthread-2.0
WANTLIB += gtk-3 gtk-vnc-2.0 gvnc-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs telepathy-glib
WANTLIB += util vte2_90 xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

RUN_DEPENDS=	misc/shared-mime-info>=0.21 \
		x11/rdesktop
LIB_DEPENDS=	x11/gtk-vnc \
		net/telepathy/telepathy-glib \
		net/avahi,-gtk3,no_mono,no_qt3,no_qt4 \
		devel/vte3 \
		x11/gnome/libgnome-keyring

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ARGS=	--with-avahi \
		--with-telepathy \
		--disable-spice

.include <bsd.port.mk>
