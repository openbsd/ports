PORTROACH=	limit:^1

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.36.0
REVISION=	4

CATEGORIES=	devel

SHARED_LIBS += peas-1.0                  400.3 # 0.3600.0
SHARED_LIBS += peas-gtk-1.0              400.3 # 0.3600.0

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 intl

MODULES=	devel/meson \
		x11/gnome

BUILD_DEPENDS=	devel/py-gobject3

RUN_DEPENDS=	devel/py-gobject3

LIB_DEPENDS=	devel/gobject-introspection \
		x11/gtk+3

MODGNOME_TOOLS=		gtk-update-icon-cache

CONFIGURE_ARGS=		-Dglade_catalog=false\
			-Dlua51=false \
			-Dpython2=false

# XXX unbreak at least audio/rhythmbox; should be fixed for GNOME 49.
# https://gedit-text-editor.org/blog/2025-04-30-no-more-pythons-in-gedit.html
# https://gitlab.gnome.org/GNOME/libpeas/-/issues/58
CONFIGURE_ARGS +=	-Dpython3=false

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
