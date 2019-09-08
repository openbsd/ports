# $OpenBSD: Makefile,v 1.12 2019/09/08 16:48:59 ajacoutot Exp $

COMMENT=		thin layer of graphic data types

GNOME_PROJECT=		graphene
GNOME_VERSION=		1.10.0

SHARED_LIBS += graphene-1.0              2.1 # 0.1000.0

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += glib-2.0 gobject-2.0 m

MASTER_SITES=		https://github.com/ebassi/graphene/releases/download/${GNOME_VERSION}/

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2

CONFIGURE_ARGS +=	-Dinstalled_tests=false

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	-Dsse2=false
.endif

.include <bsd.port.mk>
