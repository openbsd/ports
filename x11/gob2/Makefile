# $OpenBSD: Makefile,v 1.18 2016/08/29 09:13:36 jca Exp $

COMMENT=		GTK+ Object Builder

GNOME_PROJECT=		gob2
GNOME_VERSION=		2.0.20
REVISION=		1

CATEGORIES=		x11 devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 intl m

MODULES=		x11/gnome

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
