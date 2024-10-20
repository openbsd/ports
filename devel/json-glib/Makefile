COMMENT=		JSON parser for GLib-based libraries and applications

GNOME_PROJECT=		json-glib
GNOME_VERSION=		1.10.0

SHARED_LIBS += json-glib-1.0             6.2 # 0.1000.0

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl

MODULES=		devel/meson \
			x11/gnome

# rst2html5, rts2man
MODULES +=		lang/python
MODPY_RUNDEP=		No
BUILD_DEPENDS +=	textproc/py-docutils${MODPY_FLAVOR}

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS= 	docbook gi-docgen gobject-introspection

# Remove installed tests which only make sense in a CI environment
post-install:
	rm -r ${PREFIX}/{libexec,share}/installed-tests/

.include <bsd.port.mk>
