# $OpenBSD: Makefile,v 1.21 2010/09/23 14:19:10 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.10.0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-gabble/}

WANTLIB += c dbus-1 dbus-glib-1 gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnutls gobject-2.0 gthread-2.0 m pcre pthread tasn1
WANTLIB += xml2 z sqlite3 e2fs-uuid gpg-error telepathy-glib
WANTLIB += nice.>=1 soup-2.4

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::devel/py-twisted/words \
			::net/py-xmpp
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		::devel/libsoup \
			::net/libnice \
			::net/telepathy/telepathy-glib \
			::security/libgpg-error \
			::sysutils/e2fsprogs

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		UUID_LIBS="`pkg-config --libs e2fs-uuid`" \
			UUID_CFLAGS="`pkg-config --cflags e2fs-uuid`"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
