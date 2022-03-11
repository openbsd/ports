COMMENT=		cabinet file library and tool

GNOME_PROJECT=		gcab
GNOME_VERSION=		1.4

SHARED_LIBS += gcab-1.0                  1.1 # 0.1.0

CATEGORIES=		archivers devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl z

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2

# XXX ERROR: 'gtkdoc-mkhtml' failed with status 245
CONFIGURE_ARGS +=	-Ddocs=false
#BUILD_DEPENDS=		textproc/gtk-doc

.include <bsd.port.mk>
