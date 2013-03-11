# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:12 espie Exp $

COMMENT=		GTK+ Object Builder

GNOME_PROJECT=		gob2
GNOME_VERSION=		2.0.19

CATEGORIES=		x11 devel

HOMEPAGE=		http://www.gnome.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=		c m glib-2.0

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
