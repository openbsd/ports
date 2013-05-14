# $OpenBSD: Makefile,v 1.102 2013/05/14 07:21:16 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
# sync with meta/gnome "V" variable
GNOME_VERSION=		3.8.2

SHARED_LIBS +=  gnome-desktop-3      2.0      # 4.0

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz icudata icule
WANTLIB += icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xkbfile z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes
LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS= 	gi yelp

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

CONFIGURE_ARGS=		--with-gnome-distributor="OpenBSD Ports"

# we lack /usr/lib/locale/locale-archive
CONFIGURE_ARGS +=	--with-incomplete-locales

.include <bsd.port.mk>
