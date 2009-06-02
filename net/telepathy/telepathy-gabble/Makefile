# $OpenBSD: Makefile,v 1.15 2009/06/02 17:10:42 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.7.27
PKGNAME=		${DISTNAME}p0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-gabble/}

WANTLIB += c crypto dbus-1 dbus-glib-1 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += idn m pcre pthread ssl tasn1 xml2 z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::devel/py-twisted/words \
			::net/py-xmpp
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		loudmouth-1.>=3::net/loudmouth \
			telepathy-glib.>=4::net/telepathy/telepathy-glib \
			soup-2.4::devel/libsoup

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
