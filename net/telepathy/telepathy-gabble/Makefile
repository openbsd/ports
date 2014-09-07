# $OpenBSD: Makefile,v 1.68 2014/09/07 18:24:56 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.18.3

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-gabble/}

WANTLIB += c dbus-1 dbus-glib-1 uuid ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gssdp-1.0 gthread-2.0
WANTLIB += gupnp-1.0 gupnp-igd-1.0 hogweed m nettle nice p11-kit
WANTLIB += pcre pthread soup-2.4 sqlite3 tasn1 telepathy-glib
WANTLIB += xml2 z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		textproc/libxslt
# needed for the tests
BUILD_DEPENDS +=	devel/py-twisted/words \
			x11/dbus-python
LIB_DEPENDS=		devel/libsoup \
			net/libnice>=0.1.2 \
			net/telepathy/telepathy-glib>=0.18.0

# bin/telepathy-gabble-xmpp-console
RUN_DEPENDS +=		devel/py-gobject3

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

MODPY_ADJ_FILES=	plugins/telepathy-gabble-xmpp-console

CONFIGURE_ARGS=		--with-ca-certificates=/etc/ssl/cert.pem \
			--disable-Werror \
			--enable-plugins

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/lib/ext/wocky

post-install:
	rm ${PREFIX}/lib/telepathy/gabble-0/*/*.{a,la}

.include <bsd.port.mk>
