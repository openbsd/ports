# $OpenBSD: Makefile,v 1.3 2021/05/29 08:57:52 ajacoutot Exp $

COMMENT=		building blocks for modern adaptive GNOME apps

GNOME_PROJECT=		libadwaita
GNOME_VERSION=		1.0.0alpha1

# no official release yet
COMMIT=			faa9f26a2b8a89923c0b83d42e84078f672c19ec
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
