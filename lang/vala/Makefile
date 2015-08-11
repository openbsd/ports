# $OpenBSD: Makefile,v 1.74 2015/08/11 21:41:27 jasper Exp $

COMMENT=		compiler for the GObject type system

GNOME_PROJECT=		vala
GNOME_VERSION=		0.28.1

# XXX API_V is used by x11/gnome/libgda
API_V=			0.28
SHARED_LIBS +=  vala-0.28            0.0      # 0.0

CATEGORIES=		lang

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcre pthread ffi glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		textproc/libxslt
LIB_DEPENDS=		devel/glib2
TEST_DEPENDS=		shells/bash

SUBST_VARS+=		API_V

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
