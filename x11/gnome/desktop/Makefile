# $OpenBSD: Makefile,v 1.96 2013/03/16 20:04:18 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
# sync with meta/gnome "V" variable
GNOME_VERSION=		3.6.3

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

BUILD_DEPENDS=		devel/gsettings-desktop-schemas>=3.6.0
RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.6.0
LIB_DEPENDS=		x11/gtk+3>=3.6.0

MODGNOME_TOOLS= 	goi yelp

CONFIGURE_ARGS=		--with-gnome-distributor="OpenBSD Ports"

.include <bsd.port.mk>
