# $OpenBSD: Makefile,v 1.41 2019/07/12 20:44:36 sthen Exp $

COMMENT=		JSON parser for GLib-based libraries and applications

GNOME_PROJECT=		json-glib
GNOME_VERSION=		1.4.4

SHARED_LIBS +=  json-glib-1.0        6.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS += 	docbook gobject-introspection

# Remove installed tests which only make sense in a CI environment
post-install:
	rm -r ${PREFIX}/{libexec,share}/installed-tests/

.include <bsd.port.mk>
