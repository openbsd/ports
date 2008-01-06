# $OpenBSD: Makefile,v 1.3 2008/01/06 17:36:26 jasper Exp $

COMMENT=		flexible communications framework, main library

DISTNAME=		libtelepathy-0.3.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	telepathy            2.0      # .8.0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=libtelepathy/}

WANTLIB=		dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 pcre

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/libxslt

LIB_DEPENDS=		telepathy-glib.>=1::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
