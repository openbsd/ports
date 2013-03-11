# $OpenBSD: Makefile,v 1.95 2013/03/11 11:46:10 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
# sync with meta/gnome "V" variable
GNOME_VERSION=		3.6.2

SHARED_LIBS +=  gnome-desktop-3      2.0      # 4.0

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z stdc++
WANTLIB += ICE SM atk-bridge-2.0 atspi c dbus-1 harfbuzz icudata
WANTLIB += icule icuuc pthread xkbfile

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas>=3.6.0
RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.6.0
LIB_DEPENDS=		x11/gtk+3>=3.6.0

MODGNOME_TOOLS= 	goi yelp

CONFIGURE_ARGS=		--with-gnome-distributor="OpenBSD Ports"

.include <bsd.port.mk>
