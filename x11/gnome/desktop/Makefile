COMMENT-main=		common API for various GNOME modules (GTK3)
COMMENT-gtk4=		common API for various GNOME modules (GTK4)
COMMENT-common=		common API for various GNOME modules (common files)

GNOME_PROJECT=		gnome-desktop
# sync with meta/gnome "V" variable
GNOME_VERSION=		42.1

PKGNAME-gtk4=		gnome-desktop4-${GNOME_VERSION}
PKGNAME-common=		gnome-desktop-common-${GNOME_VERSION}

SHARED_LIBS += gnome-desktop-4           0.0 # 1.2.1
SHARED_LIBS += gnome-bg-4                0.0 # 1.2.1
SHARED_LIBS += gnome-rr-4                0.0 # 1.2.1
SHARED_LIBS += gnome-desktop-3           2.3 # 19.3.0

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -gtk4 -common

PKG_ARCH-common=	*

MODULES=		devel/meson \
			x11/gnome

WANTLIB += cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 intl m
WANTLIB += xkbregistry

WANTLIB-main += ${WANTLIB}
WANTLIB-main += gdk-3 gtk-3

WANTLIB-gtk4 += ${WANTLIB}
WANTLIB-gtk4 += gtk-4

WANTLIB-common=		# empty

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

RUN_DEPENDS=		${BASE_PKGPATH},-common \
			devel/gsettings-desktop-schemas \
			devel/iso-codes

# https://bugzilla.redhat.com/show_bug.cgi?id=674799
# convenience dependencies for gnome-desktop consumers (gnome-shell, mutter...);
# defaults set in gsettings-desktop-schema:
#     org.gnome.desktop.background.gschema.xml
#     org.gnome.desktop.interface.gschema.xml
RUN_DEPENDS-main=	${RUN_DEPENDS}
RUN_DEPENDS-main +=	fonts/adobe-fonts/source-code-pro \
			fonts/cantarell-fonts \
			x11/gnome/backgrounds

RUN_DEPENDS-common=	# empty

LIB_DEPENDS-main=	x11/gtk+3 \
			x11/xkbcommon

LIB_DEPENDS-gtk4=	x11/gtk+4 \
			x11/xkbcommon

LIB_DEPENDS-common=	# empty

MODGNOME_TOOLS=		gobject-introspection yelp

CONFIGURE_ARGS=		-Dgnome_distributor="OpenBSD Ports" \
			-Ddebug_tools=false \
			-Ddate_in_gnome_version=false \
			-Dudev=disabled \
			-Dsystemd=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
