# $OpenBSD: Makefile,v 1.12 2009/01/20 10:43:53 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.7.18
PKGNAME=		${DISTNAME}p0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-gabble/}

WANTLIB=		c crypto dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 \
			idn pcre pthread ssl

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::devel/py-twisted/words \
			::net/py-xmpp
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		loudmouth-1.>=3::net/loudmouth \
			telepathy-glib.>=3::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
