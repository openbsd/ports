# $OpenBSD: Makefile,v 1.19 2019/07/12 20:51:11 sthen Exp $

COMMENT=		GTK+ Object Builder

GNOME_PROJECT=		gob2
GNOME_VERSION=		2.0.20
REVISION=		1

CATEGORIES=		x11 devel

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c glib-2.0 intl m

MODULES=		x11/gnome

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
