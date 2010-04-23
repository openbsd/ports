# $OpenBSD: Makefile,v 1.16 2010/04/23 12:41:16 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.9.10

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-gabble/}

WANTLIB += c dbus-1 dbus-glib-1 gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnutls gobject-2.0 gthread-2.0 m pcre pthread tasn1
WANTLIB += xml2 z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::devel/py-twisted/words \
			::net/py-xmpp
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		soup-2.4::devel/libsoup \
			telepathy-glib.>=5::net/telepathy/telepathy-glib \
			gpg-error::security/libgpg-error

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
