COMMENT=		binary editor

GNOME_PROJECT=		ghex
GNOME_VERSION=		46.0

SHARED_LIBS += gtkhex-4                  0.0 # 1.4.0

CATEGORIES=		sysutils editors

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c cairo gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-4 intl pango-1.0 pangocairo-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		x11/gnome/libadwaita

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

# XXX
# Checking for function "mremap" : NO 
# meson.build:126:6: ERROR: Problem encountered:
# Required C function not found: mremap
CONFIGURE_ARGS +=	-Dmmap-buffer-backend=false

# XXX needs linux/fs.h
CONFIGURE_ARGS +=	-Ddirect-buffer-backend=false

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
