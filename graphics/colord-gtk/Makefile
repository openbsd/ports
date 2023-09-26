COMMENT=	Gtk helper library for colord

V=		0.3.0
DISTNAME=	colord-gtk-${V}
PKGNAME=	colord-gtk4-${V}

SHARED_LIBS +=	colord-gtk4               0.0 # 0.0

CATEGORIES=	graphics print

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += cairo colord gio-2.0 glib-2.0 gobject-2.0 gtk-4

SITES=		https://www.freedesktop.org/software/colord/releases/
EXTRACT_SUFX=	.tar.xz

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/gobject-introspection \
		lang/vala

LIB_DEPENDS=	graphics/colord \
		x11/gtk+4

CONFIGURE_ARGS=	-Ddocs=false \
		-Dvapi=true

# until proven useful;
# for now it's only used by x11/gnome/control-center (gtk+4)
CONFIGURE_ARGS +=	-Dgtk3=false

# XXX require docbook-xsl-nsl
CONFIGURE_ARGS +=	-Dman=false

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"
.endif

.include <bsd.port.mk>
