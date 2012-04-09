# $OpenBSD: Makefile,v 1.3 2012/04/09 08:59:08 ajacoutot Exp $

COMMENT=		flexible communications framework, farstream component

DISTNAME=		telepathy-farstream-0.2.3
REVISION=		1

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

SHARED_LIBS +=  telepathy-farstream       0.0 # 2.1

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-farstream/}

WANTLIB += dbus-1 dbus-glib-1 farstream-0.1 ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstbase-0.10 gstreamer-0.10
WANTLIB += gthread-2.0 m pcre telepathy-glib xml2 z

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		net/farstream \
			net/telepathy/telepathy-glib>=0.17.5

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-python

.include <bsd.port.mk>
