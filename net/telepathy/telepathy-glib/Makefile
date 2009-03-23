# $OpenBSD: Makefile,v 1.13 2009/03/23 16:22:34 jasper Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.7.22
PKGNAME=		${DISTNAME}p1
SHARED_LIBS +=	telepathy-glib       3.2      # .20.0

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
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
