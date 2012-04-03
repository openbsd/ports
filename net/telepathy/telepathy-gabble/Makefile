# $OpenBSD: Makefile,v 1.46 2012/04/03 07:13:00 ajacoutot Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.16.0

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-gabble/}

SHARED_LIBS +=  wocky                0.0      # unknown
SHARED_LIBS +=  gabble-plugins       0.0      # unknown
SHARED_LIBS +=  test                 0.0      # unknown
SHARED_LIBS +=  console              0.0      # unknown
SHARED_LIBS +=  gateways             0.0      # unknown

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
			net/telepathy/telepathy-glib>=0.18.0

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ca-certificates=/etc/ssl/cert.pem \
			--disable-gtk-doc \
			--disable-Werror \
			--enable-plugins \
			--with-tls=openssl

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/lib/ext/wocky

.include <bsd.port.mk>
