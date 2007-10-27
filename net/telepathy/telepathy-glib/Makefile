# $OpenBSD: Makefile,v 1.1.1.1 2007/10/27 16:18:53 jasper Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.6.0
SHARED_LIBS +=	telepathy-glib       0.0      # .3.1
SHARED_LIBS +=	telepathy-glib-unstable 0.0      # .0.0

MASTER_SITES=		http://telepathy.freedesktop.org/releases/telepathy-glib/

WANTLIB=		dbus-1 glib-2.0 gobject-2.0 pcre

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		dbus-glib-1::x11/dbus-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu autoconf
AUTOCONF_VERSION=	2.61

.include <bsd.port.mk>
