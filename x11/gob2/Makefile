# $OpenBSD: Makefile,v 1.16 2013/12/15 08:07:28 ajacoutot Exp $

COMMENT=		GTK+ Object Builder

GNOME_PROJECT=		gob2
GNOME_VERSION=		2.0.20

CATEGORIES=		x11 devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 m

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
