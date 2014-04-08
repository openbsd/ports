# $OpenBSD: Makefile,v 1.79 2014/04/08 17:23:41 ajacoutot Exp $

COMMENT=		GObject Introspection

GNOME_VERSION=		1.40.0
GNOME_PROJECT=		gobject-introspection
REVISION=		0

CATEGORIES=		devel

SHARED_LIBS +=  girepository-1.0     3.0      # 1.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# Library: LGPLv2+
# Tools: GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre pthread z

LIB_DEPENDS=		devel/glib2

BUILD_DEPENDS=		devel/bison \
			graphics/cairo \
			www/py-mako

RUN_DEPENDS=		graphics/cairo \
			www/py-mako

YACC=			bison

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/gobject-introspection/giscanner/*.{a,la}

.include <bsd.port.mk>
