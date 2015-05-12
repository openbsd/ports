# $OpenBSD: Makefile,v 1.140 2015/05/12 06:22:02 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
# sync with meta/gnome "V" variable
GNOME_VERSION=		3.16.2

SHARED_LIBS +=  gnome-desktop-3      2.0      # 10.0

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			misc/hwdata

# https://bugzilla.redhat.com/show_bug.cgi?id=674799
# convenience dependency for gnome-desktop consumers (gnome-shell, mutter...);
# defaults set in gsettings-desktop-schema:
#     org.gnome.desktop.background.gschema.xml
#     org.gnome.desktop.interface.gschema.xml
RUN_DEPENDS +=		x11/gnome/backgrounds \
			x11/gnome/themes-standard

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection yelp

CONFIGURE_ARGS=		--with-gnome-distributor="OpenBSD Ports" \
			--with-pnp-ids-path=${LOCALBASE}/share/hwdata

.include <bsd.port.mk>
