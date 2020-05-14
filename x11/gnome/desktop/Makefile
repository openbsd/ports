# $OpenBSD: Makefile,v 1.171 2020/05/14 14:57:00 ajacoutot Exp $

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=590059
#RUN_DEPENDS +=		misc/hwdata

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
# sync with meta/gnome "V" variable
GNOME_VERSION=		3.36.2

SHARED_LIBS += gnome-desktop-3           2.2 # 19.0.2

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl m

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
			-Dudev=disabled \
			-Dsystemd=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
