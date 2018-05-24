# $OpenBSD: Makefile,v 1.1.1.1 2018/05/24 15:37:12 ajacoutot Exp $

COMMENT=		thin layer of graphic data types

GH_ACCOUNT=		ebassi
GH_PROJECT=		graphene
GH_TAGNAME=		1.8.0

SHARED_LIBS += graphene-1.0              0.0 # 0.800.0

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://ebassi.github.io/graphene/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += glib-2.0 gobject-2.0 m

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		devel/glib2

CONFIGURE_ARGS +=	-Dtests=false

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	-Dsse2=false
.endif

.include <bsd.port.mk>
