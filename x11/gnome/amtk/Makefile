COMMENT=		Actions, Menus and Toolbars Kit

GNOME_PROJECT=		amtk
GNOME_VERSION=		5.6.1

CATEGORIES=		devel

SHARED_LIBS += amtk-5                    0.2 # 0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

BUILD_DEPENDS=		textproc/gtk-doc

LIB_DEPENDS=		x11/gtk+3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
