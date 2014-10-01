# $OpenBSD: Makefile,v 1.68 2014/10/01 08:53:44 jasper Exp $

COMMENT=		compiler for the GObject type system

GNOME_PROJECT=		vala
GNOME_VERSION=		0.26.0

API_V=			0.26
SHARED_LIBS +=  vala-0.26            0.0      # 0.0

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

USE_GROFF=		Yes

SUBST_VARS+=		API_V

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
