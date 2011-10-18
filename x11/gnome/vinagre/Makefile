# $OpenBSD: Makefile,v 1.53 2011/10/18 16:09:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	remote desktop viewer for GNOME

GNOME_VERSION=	3.2.1
GNOME_PROJECT=	vinagre
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	http://projects.gnome.org/vinagre/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 avahi-client
WANTLIB += avahi-common avahi-glib avahi-gobject avahi-ui-gtk3
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm expat
WANTLIB += ffi fontconfig freetype gcrypt gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnome-keyring gnutls
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-3 gtk-vnc-2.0
WANTLIB += gvnc-1.0 hogweed m ncurses nettle p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sasl2 tasn1 telepathy-glib util vte2_90
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

RUN_DEPENDS=	misc/shared-mime-info>=0.21 \
		x11/rdesktop
LIB_DEPENDS=	x11/gtk-vnc \
		net/telepathy/telepathy-glib \
		net/avahi,-gtk3,no_mono,no_qt3,no_qt4 \
		devel/vte3

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ARGS=	--with-avahi \
		--with-telepathy \
		--disable-spice

post-extract:
	cp ${FILESDIR}/vinagre-utils.h ${WRKSRC}/vinagre/

.include <bsd.port.mk>
