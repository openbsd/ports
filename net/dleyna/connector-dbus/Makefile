# $OpenBSD: Makefile,v 1.6 2021/05/15 16:41:45 ajacoutot Exp $

COMMENT=		dLeyna dbus connector

GH_PROJECT=		dleyna-connector-dbus
GH_TAGNAME=		v0.4.0

BUILD_DEPENDS=		net/dleyna/core

RUN_DEPENDS=		net/dleyna/core \
			x11/dbus

LIB_DEPENDS=		devel/glib2

WANTLIB += gio-2.0 glib-2.0 gobject-2.0

.include <bsd.port.mk>
