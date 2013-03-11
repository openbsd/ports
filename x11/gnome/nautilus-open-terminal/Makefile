# $OpenBSD: Makefile,v 1.29 2013/03/11 11:46:11 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	open terminal from a nautilus folder

GNOME_PROJECT=	nautilus-open-terminal
GNOME_VERSION=	0.20

CATEGORIES=	sysutils

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 harfbuzz icudata icule
WANTLIB += icuuc m nautilus-extension pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

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
