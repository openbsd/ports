# $OpenBSD: Makefile,v 1.1.1.1 2010/04/22 12:27:34 jasper Exp $

COMMENT=		flexible communications framework, farsight2 component

DISTNAME=		telepathy-farsight-0.0.13
SHARED_LIBS +=  telepathy-farsight   0.0      # .0.4

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-farsight/}

WANTLIB += dbus-1 dbus-glib-1 ffi glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstbase-0.10 gstreamer-0.10 gthread-2.0 m pcre xml2
WANTLIB += z

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		gstfarsight-0.10::net/farsight2 \
			telepathy-glib.>=5::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
