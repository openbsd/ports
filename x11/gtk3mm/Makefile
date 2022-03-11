PORTROACH=		limit:^3\.24

COMMENT=		C++ interface for gtk3+

GNOME_PROJECT=		gtkmm
GNOME_VERSION=		3.24.5
PKGNAME=		gtk3mm-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS += gdkmm-3.0                 4.5 # 1.1.0
SHARED_LIBS += gtkmm-3.0                 4.5 # 1.1.0

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} atkmm-1.6 cairomm-1.0 gdk-3 gdk_pixbuf-2.0
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-3 m pangomm-1.4
WANTLIB += sigc-2.0

MODULES=		devel/meson \
			x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/atk2mm \
			devel/pangomm \
			x11/gtk+3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
