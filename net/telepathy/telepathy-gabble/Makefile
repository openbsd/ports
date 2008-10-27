# $OpenBSD: Makefile,v 1.4 2008/10/27 00:05:59 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.7.12

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-gabble/}

WANTLIB=		c crypto dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 \
			idn pcre pthread ssl

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::devel/py-twisted/words \
			::net/py-xmpp
RUN_DEPENDS=		${MODPY_EXPAT_DEPENDS} \
			::textproc/libxslt
LIB_DEPENDS=		loudmouth-1::net/loudmouth \
			telepathy-glib::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

SUBST_VARS=		MODPY_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
