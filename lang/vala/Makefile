# $OpenBSD: Makefile,v 1.65 2014/03/24 19:40:22 ajacoutot Exp $

COMMENT=		compiler for the GObject type system

GNOME_PROJECT=		vala
GNOME_VERSION=		0.22.1

API_V=			0.22
SHARED_LIBS +=  vala-0.22            0.0      # 0.0

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
CONFIGURE_ARGS+=	--enable-vapigen

.include <bsd.port.mk>
