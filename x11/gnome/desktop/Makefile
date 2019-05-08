# $OpenBSD: Makefile,v 1.163 2019/05/08 01:31:29 ajacoutot Exp $

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=590059
#RUN_DEPENDS +=		misc/hwdata

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
# sync with meta/gnome "V" variable
GNOME_VERSION=		3.32.2

SHARED_LIBS +=  gnome-desktop-3      2.2      # 17.0.6

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl m pango-1.0
WANTLIB += pangocairo-1.0

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

# https://bugzilla.redhat.com/show_bug.cgi?id=674799
# convenience dependencies for gnome-desktop consumers (gnome-shell, mutter...);
# defaults set in gsettings-desktop-schema:
#     org.gnome.desktop.background.gschema.xml
#     org.gnome.desktop.interface.gschema.xml
RUN_DEPENDS +=		fonts/adobe-fonts/source-code-pro \
			fonts/cantarell-fonts \
			x11/gnome/backgrounds

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection yelp

CONFIGURE_ARGS=		-Dgnome_distributor="OpenBSD Ports" \
			-Dudev=disabled

.include <bsd.port.mk>
