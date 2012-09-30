# $OpenBSD: Makefile,v 1.4 2012/09/30 08:38:20 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GnuPG extension for nautilus(1)

GNOME_PROJECT=	seahorse-nautilus
GNOME_VERSION=	3.6.0

CATEGORIES=	security

HOMEPAGE=	http://projects.gnome.org/seahorse/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm assuan atk-1.0 c
WANTLIB += cairo cairo-gobject cryptui dbus-1 dbus-glib-1 drm
WANTLIB += expat ffi fontconfig freetype gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gpgme gthread-2.0 gtk-3 m nautilus-extension
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += ICE SM atk-bridge-2.0 atspi harfbuzz icudata icule
WANTLIB += icuuc p11-kit z

LIB_DEPENDS=	x11/gnome/nautilus>=3.6.0 \
		x11/gnome/libcryptui

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.la
# https://bugzilla.gnome.org/show_bug.cgi?id=685124
	rm ${PREFIX}/share/glib-2.0/schemas/org.gnome.seahorse.nautilus.window.gschema.xml

.include <bsd.port.mk>
