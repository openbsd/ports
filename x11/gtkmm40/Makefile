# $OpenBSD: Makefile,v 1.6 2022/02/10 08:28:56 ajacoutot Exp $

COMMENT=		C++ bindings for GTK+

GNOME_PROJECT=		gtkmm
GNOME_VERSION=		4.6.0
PKGNAME=		gtkmm40-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS += gtkmm-4.0                 0.2 # 0.0.0

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} cairo-gobject cairomm-1.16 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.68 glib-2.0 glibmm-2.68 gobject-2.0
WANTLIB += graphene-1.0 gtk-4 pangomm-2.48 sigc-3.0

MODULES=		devel/meson \
			x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/pangomm248 \
			x11/gtk+4

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
