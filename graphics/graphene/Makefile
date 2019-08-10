# $OpenBSD: Makefile,v 1.11 2019/08/10 20:23:12 ajacoutot Exp $

COMMENT=		thin layer of graphic data types

GNOME_PROJECT=		graphene
GNOME_VERSION=		1.9.6

SHARED_LIBS += graphene-1.0              2.0 # 0.906.0

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
