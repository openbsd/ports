# $OpenBSD: Makefile,v 1.2 2007/12/30 22:47:16 jasper Exp $

COMMENT=		flexible communications framework, main library

DISTNAME=		libtelepathy-0.3.1
SHARED_LIBS +=	telepathy            2.0      # .8.0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=libtelepathy/}

WANTLIB=		dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 pcre

MODULES=		devel/gettext

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/libxslt

LIB_DEPENDS=		telepathy-glib.>=1::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
