# $OpenBSD: Makefile,v 1.41 2011/09/12 12:04:20 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	remote desktop viewer for GNOME

GNOME_VERSION=	3.0.2
GNOME_PROJECT=	vinagre
REVISION=	1

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
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gmp gnome-keyring
WANTLIB += gnutls gobject-2.0 gpg-error gthread-2.0 gtk-3 gtk-vnc-2.0
WANTLIB += gvnc-1.0 hogweed m nettle pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs sasl2 tasn1 telepathy-glib util
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

RUN_DEPENDS=	misc/shared-mime-info>=0.21 \
		x11/rdesktop
LIB_DEPENDS=	devel/libpeas \
		x11/gtk-vnc \
		x11/gnome/panel \
		net/telepathy/telepathy-glib \
		net/avahi,-gtk3,no_mono,no_qt3,no_qt4

DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--with-avahi \
		--with-telepathy \
		--without-panelapplet \
		--disable-spice

# XXX console does not spawn (needs grantpt, ptsname...)
CONFIGURE_ARGS+= --enable-ssh=no

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
