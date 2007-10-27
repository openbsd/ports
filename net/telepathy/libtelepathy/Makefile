# $OpenBSD: Makefile,v 1.1.1.1 2007/10/27 16:18:53 jasper Exp $

COMMENT=		flexible communications framework, main library

DISTNAME=		libtelepathy-0.2.0
SHARED_LIBS +=	telepathy            0.0      # .6.1

MASTER_SITES=		http://telepathy.freedesktop.org/releases/libtelepathy/

WANTLIB=		dbus-1 glib-2.0 gobject-2.0 pcre

MODULES=		devel/gettext

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		dbus-glib-1::x11/dbus-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
