# $OpenBSD: Makefile,v 1.15 2009/06/02 04:44:22 jasper Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.7.31
SHARED_LIBS +=	telepathy-glib       4.0      # .25.0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-glib/}

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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure \
		${WRKSRC}/tests/all-errors-documented.py

.include <bsd.port.mk>
