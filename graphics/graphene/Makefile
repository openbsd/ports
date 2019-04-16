# $OpenBSD: Makefile,v 1.4 2019/04/16 08:12:00 ajacoutot Exp $

COMMENT=		thin layer of graphic data types

GNOME_PROJECT=		graphene
GNOME_VERSION=		1.8.6

SHARED_LIBS += graphene-1.0              0.1 # 0.800.6

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += glib-2.0 gobject-2.0 intl m pthread

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2

CONFIGURE_ARGS +=	-Dtests=false

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	-Dsse2=false
.endif

.include <bsd.port.mk>
