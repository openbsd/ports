COMMENT-main=		Document Viewer
COMMENT-nautilus=	Papers extension for Nautilus

GNOME_PROJECT=		papers
GNOME_VERSION=		49.3
PKGNAME-nautilus=	papers-nautilus-${GNOME_VERSION}

SHARED_LIBS += ppsdocument-4.0           0.0 # 6.0.0
SHARED_LIBS += ppsview-4.0               0.0 # 5.0.0

CATEGORIES=		graphics print

HOMEPAGE=		https://apps.gnome.org/en/Papers/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB-main += ${MODCARGO_WANTLIB} adwaita-1 archive cairo djvulibre
WANTLIB-main += exempi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB-main += gobject-2.0 graphene-1.0 gtk-4 gtksourceview-5 intl
WANTLIB-main += m pango-1.0 poppler-glib spelling-1 tiff

WANTLIB-nautilus += gio-2.0 glib-2.0 gobject-2.0 nautilus-extension ppsdocument-4.0

MULTI_PACKAGES=		-main -nautilus

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c

MODULES=		devel/cargo \
			devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection gi-docgen \
			gtk-update-icon-cache yelp

MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No

MAKE_ENV +=		${MODCARGO_ENV}
MAKE_FLAGS +=		V=1

BUILD_DEPENDS=		devel/appstream \
			x11/blueprint-compiler

LIB_DEPENDS-main=	archivers/libarchive \
			graphics/djvulibre \
			print/poppler \
			textproc/exempi \
			textproc/libspelling \
			x11/gnome/libadwaita \
			x11/gtksourceview5

LIB_DEPENDS-nautilus=	${BASE_PKGPATH},-main \
			x11/gnome/nautilus

RUN_DEPENDS-nautilus=	# empty

CONFIGURE_ARGS=		-Dsysprof=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	@${MODCARGO_configure}

.include "crates.inc"

.include <bsd.port.mk>
