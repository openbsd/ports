# $OpenBSD: Makefile,v 1.2 2021/05/16 17:13:19 kmos Exp $

COMMENT=		building blocks for modern adaptive GNOME apps

GNOME_PROJECT=		libadwaita
GNOME_VERSION=		0.0.1

# no official release yet
COMMIT=			a1e8587d623791d3c992a934c5feb46ba209432a
MASTER_SITES=		https://gitlab.gnome.org/GNOME/${GNOME_PROJECT}/-/archive/${COMMIT}/
WRKDIST=		${WRKDIR}/${GNOME_PROJECT}-${COMMIT}
EXTRACT_SUFX=		.tar.gz

SHARED_LIBS += adwaita-1                 0.0 # 0

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += c cairo fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += graphene-1.0 gtk-4 intl m pango-1.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		www/sassc

LIB_DEPENDS=		x11/gtk+4

DEBUG_PACKAGES=		${BUILD_PACKAGES}

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
