# $OpenBSD: Makefile,v 1.56 2022/02/18 15:36:29 kmos Exp $

COMMENT=		GObject based collection library

GNOME_PROJECT=		libgee
GNOME_VERSION=		0.20.5

SHARED_LIBS +=  gee-0.8              3.1      # 8.1

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl pcre pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
