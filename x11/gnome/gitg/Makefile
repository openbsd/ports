# $OpenBSD: Makefile,v 1.19 2013/03/29 17:57:26 jasper Exp $

BROKEN=			Invalid object type `GitgWindow'

SHARED_ONLY=		Yes

COMMENT=		git repository viewer for gtk+/GNOME

GNOME_PROJECT=		gitg
GNOME_VERSION=		0.2.6

SHARED_LIBS +=  gitg-1.0                  0.0 # 0.0

CATEGORIES=		devel

HOMEPAGE=		https://live.gnome.org/Gitg

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz
WANTLIB += icudata icule icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z

LIBTOOL_FLAGS+= 	--tag=disable-static

LIB_DEPENDS=		x11/gtksourceview3>=3.2.0
BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/git \
			devel/gsettings-desktop-schemas

MODGNOME_DESKTOP_FILE=	Yes

CONFIGURE_ARGS=		--disable-static

.include <bsd.port.mk>
