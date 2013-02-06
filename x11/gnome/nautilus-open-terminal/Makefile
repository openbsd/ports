# $OpenBSD: Makefile,v 1.27 2013/02/06 14:23:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	open terminal from a nautilus folder

GNOME_PROJECT=	nautilus-open-terminal
GNOME_VERSION=	0.19
REVISION=	6

CATEGORIES=	sysutils

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 cairo cairo-gobject drm expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gobject-2.0 gthread-2.0 gtk-3 m nautilus-extension
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb xcb-render xcb-shm z ffi
WANTLIB += dbus-1 dbus-glib-1 stdc++

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gnome/nautilus

MODGCONF2_SCHEMAS_DIR= nautilus-open-terminal

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.la

.include <bsd.port.mk>
