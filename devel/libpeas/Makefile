PORTROACH=	limit:^1

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.38.1

CATEGORIES=	devel

SHARED_LIBS += peas-1.0                  401.0 # 1.3800.1
SHARED_LIBS += peas-gtk-1.0              401.0 # 1.3800.1

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 girepository-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 intl ${MODPY_WANTLIB}

MODULES=	devel/meson \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/py-gobject3

RUN_DEPENDS=	devel/py-gobject3

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		x11/gtk+3

MODGNOME_TOOLS=		gtk-update-icon-cache

CONFIGURE_ARGS=		-Dglade_catalog=false\
			-Dlua51=false \
			-Dpython2=false

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
