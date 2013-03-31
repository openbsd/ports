# $OpenBSD: Makefile,v 1.94 2013/03/31 10:19:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	3.8.0
REVISION=	3

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 dconf e2fs-uuid
WANTLIB += expat ffi fontconfig freetype gconf-2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc m nautilus-extension
WANTLIB += ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs util vte2_90 xcb
WANTLIB += xcb-render xcb-shm z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas
RUN_DEPENDS=	devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/gconf2 \
		devel/vte3 \
		sysutils/e2fsprogs \
		x11/gnome/nautilus

# configure checks for desktop-file-validate(1)
BUILD_DEPENDS +=devel/desktop-file-utils

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes

CONFIGURE_ARGS=	--with-nautilus-extension

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
