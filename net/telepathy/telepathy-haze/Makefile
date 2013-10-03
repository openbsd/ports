# $OpenBSD: Makefile,v 1.23 2013/10/03 11:35:57 jasper Exp $

COMMENT=		flexible communications framework, libpurple component

DISTNAME=		telepathy-haze-0.8.0

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-haze/}

MODULES=		devel/gettext \
			lang/python

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pthread util xml2 z purple telepathy-glib
WANTLIB += ffi idn

BUILD_DEPENDS=		devel/py-twisted/words \
			net/py-xmpp \
			textproc/libxslt
LIB_DEPENDS=		net/pidgin,-libpurple \
			net/telepathy/telepathy-glib

MODPY_RUNDEP=		No

.include <bsd.port.mk>
