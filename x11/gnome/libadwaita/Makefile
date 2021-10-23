# $OpenBSD: Makefile,v 1.5 2021/10/03 19:52:04 ajacoutot Exp $

COMMENT=		building blocks for modern adaptive GNOME apps

GNOME_PROJECT=		libadwaita
GNOME_VERSION=		1.0.0alpha3

# no official release yet
COMMIT=			40c19ab2591763a482ebc79c82f1da32eea3bab6
MASTER_SITES=		https://gitlab.gnome.org/GNOME/${GNOME_PROJECT}/-/archive/${COMMIT}/
WRKDIST=		${WRKDIR}/${GNOME_PROJECT}-${COMMIT}
EXTRACT_SUFX=		.tar.gz

SHARED_LIBS += adwaita-1                 1.0 # 0
SHARED_LIBS += adwaita-inspector-module1 0.0 # 0

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo fribidi gio-2.0 glib-2.0 gobject-2.0 graphene-1.0
WANTLIB += gtk-4 intl m pango-1.0

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		www/sassc

LIB_DEPENDS=		x11/gtk+4

DEBUG_PACKAGES=		${BUILD_PACKAGES}

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
