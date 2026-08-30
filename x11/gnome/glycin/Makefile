COMMENT=		sandboxed and extendable image loading and editing

GNOME_PROJECT=		glycin
GNOME_VERSION=		2.2.beta.1
PKGNAME=		${GNOME_PROJECT}-2.2beta1
REVISION=		0

CATEGORIES=		graphics

SHARED_LIBS += glycin-2                  0.0 # 0
SHARED_LIBS += glycin-gtk4-2             0.0 # 0

# MPL-2.0 OR LGPL-2.1-or-later
PERMIT_PACKAGE=		Yes

WANTLIB += ${MODCARGO_WANTLIB} gio-2.0 glib-2.0 gobject-2.0 gtk-4
WANTLIB += m

MODULES=		devel/meson \
			devel/cargo \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

MAKE_FLAGS +=		V=1

LIB_DEPENDS=		x11/gtk+4

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include "crates.inc"

.include <bsd.port.mk>
