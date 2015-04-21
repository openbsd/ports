# $OpenBSD: Makefile,v 1.17 2015/04/21 18:13:09 sthen Exp $

COMMENT=		GTK+ Object Builder

GNOME_PROJECT=		gob2
GNOME_VERSION=		2.0.20
REVISION=		0

CATEGORIES=		x11 devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 m pthread

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
