# $OpenBSD: Makefile,v 1.5 2019/05/09 13:00:43 ajacoutot Exp $

COMMENT=		thin layer of graphic data types

GNOME_PROJECT=		graphene
GNOME_VERSION=		1.9.1

# development version needed by x11/gtk+4
DISTFILES=		graphene-5a4531baca.tar.gz
MASTER_SITES=		https://distfiles.bsdfrog.org/
WRKDIST=		${WRKDIR}/graphene-5a4531baca5a97587449df5a4e82d79c69501971

SHARED_LIBS += graphene-1.0              1.0 # 0.901.0

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
