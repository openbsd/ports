# $OpenBSD: Makefile,v 1.5 2009/01/20 10:43:53 jasper Exp $

COMMENT=		flexible communications framework, main library

DISTNAME=		libtelepathy-0.3.3
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	telepathy            3.0      # .9.1

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=libtelepathy/}

WANTLIB=		dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 pcre

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		::textproc/libxslt

LIB_DEPENDS=		telepathy-glib.>=1::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
