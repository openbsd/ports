# $OpenBSD: Makefile,v 1.9 2009/01/19 08:57:37 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.7.17
PKGNAME=		${DISTNAME}p1

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-gabble/}

WANTLIB=	c dbus-1 dbus-glib-1 gcrypt glib-2.0 gobject-2.0 gnutls \
		gpg-error idn pcre pthread z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::devel/py-twisted/words \
			::net/py-xmpp
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		loudmouth-1.>=2::net/loudmouth \
			telepathy-glib.>=3::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
