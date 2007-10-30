# $OpenBSD: Makefile,v 1.2 2007/10/30 13:07:03 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.6.0
PKGNAME=		${DISTNAME}p0

MASTER_SITES=		http://telepathy.freedesktop.org/releases/telepathy-gabble/

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
