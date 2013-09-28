# $OpenBSD: Makefile,v 1.15 2013/09/28 08:50:37 ajacoutot Exp $

COMMENT=		GTK+ Object Builder

GNOME_PROJECT=		gob2
GNOME_VERSION=		2.0.19
REVISION=		0

CATEGORIES=		x11 devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=		c m glib-2.0

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
