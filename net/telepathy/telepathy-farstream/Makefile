# $OpenBSD: Makefile,v 1.11 2015/04/04 09:21:03 ajacoutot Exp $

COMMENT=		flexible communications framework, farstream component

DISTNAME=		telepathy-farstream-0.6.2
REVISION=		0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

SHARED_LIBS +=  telepathy-farstream       1.0 # 3.1

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-farstream/}

WANTLIB += dbus-1 dbus-glib-1 farstream-0.2 ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstbase-1.0 gstreamer-1.0 gthread-2.0
WANTLIB += m pcre pthread telepathy-glib z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		net/farstream>=0.2.0 \
			net/telepathy/telepathy-glib>=0.19.9

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-introspection

.include <bsd.port.mk>
