# $OpenBSD: Makefile,v 1.71 2015/05/11 20:13:24 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.18.3
REVISION=		2

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-gabble/}

WANTLIB += c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0 gmp
WANTLIB += gnutls gobject-2.0 gssdp-1.0 gthread-2.0 gupnp-1.0
WANTLIB += gupnp-igd-1.0 hogweed lzma m nettle nice p11-kit pcre pthread
WANTLIB += soup-2.4 sqlite3 tasn1 telepathy-glib xml2 z

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
