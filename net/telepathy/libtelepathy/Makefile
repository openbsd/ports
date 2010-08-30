# $OpenBSD: Makefile,v 1.10 2010/08/30 21:26:30 sthen Exp $

COMMENT=		flexible communications framework, main library

DISTNAME=		libtelepathy-0.3.3
REVISION=		3

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

.include <bsd.port.mk>
