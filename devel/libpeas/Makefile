PORTROACH=	limit:^1

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.36.0
REVISION=	6

# girepository: port libpeas ABI to girepository
SITES.gnome=		https://gitlab.gnome.org/GNOME/libpeas/-/commit/
PATCHFILES.gnome=	15f75945d3081672c093b7d24f9279a9f4493f9f.diff \
			4613accc2e22395bb77bdf612fcdf90bf65f230f.diff \
			73e25b6059d2fdc090a3feb8341ff902c3ec0d16.diff \
			53657c06fe31871bd3d050c6c5668611f928f8e3.diff
PATCH_DIST_STRIP=	-p1

CATEGORIES=	devel

SHARED_LIBS += peas-1.0                  401.0 # 0.3600.0
SHARED_LIBS += peas-gtk-1.0              401.0 # 0.3600.0

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
