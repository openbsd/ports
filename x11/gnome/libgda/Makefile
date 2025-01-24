COMMENT=		database access library

GNOME_PROJECT=		libgda
GNOME_VERSION=		6.0.0
EPOCH=			2

REVISION=		2

CATEGORIES=		databases

SHARED_LIBS += gda-6.0                   0.0 # 6

HOMEPAGE=		https://gnome.pages.gitlab.gnome.org/libgda/

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl sqlite3
WANTLIB += xml2

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome

# until upstream moves to gettext-tools
MODULES +=		textproc/intltool

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		databases/sqlite3 \
			devel/glib2 \
			textproc/libxml

TEST_DEPENDS=		devel/check

CONFIGURE_ARGS=		-Dlibsoup=false

# jsonglib_dep is unused
CONFIGURE_ARGS +=	-Djson=false

.include <bsd.port.mk>
