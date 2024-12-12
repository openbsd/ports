COMMENT=		program for drawing structured diagrams

DIST_TUPLE=		gnome GNOME dia 78c75625dffcec345c776c35914a2de0380058cc .
PKGNAME=		dia-0.98.0alpha20241027

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphene-1.0 gtk-3
WANTLIB += intl m pango-1.0 pangocairo-1.0 poppler python3.11
WANTLIB += xml2 xpm-pixbuf xslt z

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		graphics/graphene \
			graphics/xpm-pixbuf \
			print/poppler \
			textproc/libxslt \
			x11/gtk+3

RUN_DEPENDS=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils docbook gtk-update-icon-cache

.include <bsd.port.mk>
