# $OpenBSD: Makefile,v 1.3 2007/12/30 22:49:28 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.7.1

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-gabble/}

WANTLIB=		c crypto dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 \
			idn pcre pthread ssl

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODPY_EXPAT_DEPENDS} \
			::textproc/libxslt
LIB_DEPENDS=		loudmouth-1::net/loudmouth \
			telepathy-glib::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

# needs a running instance of dbus-daemon
REGRESS_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
