# $OpenBSD: Makefile,v 1.4 2009/08/15 01:03:33 sthen Exp $

COMMENT=		flexible communications framework, feed component

DISTNAME=		telepathy-feed-0.13
PKGNAME=		${DISTNAME}p2

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-feed/}

WANTLIB=		c dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 pthread \
			telepathy-glib

MODULES=		devel/gettext

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		galago::net/libgalago \
			telepathy::net/telepathy/libtelepathy

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
