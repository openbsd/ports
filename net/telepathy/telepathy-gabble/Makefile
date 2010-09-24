# $OpenBSD: Makefile,v 1.23 2010/09/24 10:06:19 ajacoutot Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.10.0
REVISION=		0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-gabble/}

WANTLIB += c dbus-1 dbus-glib-1 gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnutls gobject-2.0 gthread-2.0 m pcre pthread tasn1
WANTLIB += xml2 z sqlite3 e2fs-uuid gpg-error telepathy-glib
WANTLIB += nice.>=1 soup-2.4 crypto ssl

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		::textproc/libxslt \
			::devel/py-twisted/words \
			::net/py-xmpp
LIB_DEPENDS=		::devel/libsoup \
			:libnice->=0.0.13:net/libnice \
			::net/telepathy/telepathy-glib \
			::sysutils/e2fsprogs

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ca-certificates=/etc/ssl/cert.pem \
			--with-tls=openssl \
			--disable-gtk-doc
CONFIGURE_ENV=		UUID_LIBS="`pkg-config --libs e2fs-uuid`" \
			UUID_CFLAGS="`pkg-config --cflags e2fs-uuid`" \
			TLS_CFLAGS="-I/usr/include" \
			TLS_LIBS="-L/usr/lib -lssl -lcrypto"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
