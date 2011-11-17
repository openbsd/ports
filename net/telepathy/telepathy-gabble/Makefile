# $OpenBSD: Makefile,v 1.43 2011/11/17 14:38:07 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.12.7

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-gabble/}

WANTLIB += c crypto dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m nice pcre pthread soup-2.4
WANTLIB += sqlite3 ssl telepathy-glib xml2 z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		textproc/libxslt \
			devel/py-twisted/words \
			net/py-xmpp
LIB_DEPENDS=		devel/libsoup \
			net/libnice>=0.0.13 \
			net/telepathy/telepathy-glib>=0.14.5

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ca-certificates=/etc/ssl/cert.pem \
			--disable-gtk-doc \
			--enable-plugins \
			--with-tls=openssl
CONFIGURE_ENV+=		ac_cv_prog_PYTHON="${MODPY_BIN}"

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/lib/ext/wocky

.include <bsd.port.mk>
