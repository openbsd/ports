# $OpenBSD: Makefile,v 1.45 2015/04/21 18:51:26 sthen Exp $

COMMENT=		flexible communications framework, local-link component

DISTNAME=		telepathy-salut-0.8.1
REVISION=		5

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-salut/}

WANTLIB += avahi-client avahi-common avahi-glib avahi-gobject c dbus-1
WANTLIB += dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 gthread-2.0 hogweed lzma m nettle p11-kit pcre
WANTLIB += pthread soup-2.4 sqlite3 tasn1 telepathy-glib uuid xml2 z

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/check \
			textproc/libxslt
LIB_DEPENDS=		devel/libsoup \
			net/avahi \
			net/telepathy/telepathy-glib \
			sysutils/e2fsprogs

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/lib/ext/wocky

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-Werror \
			--disable-avahi-tests

.include <bsd.port.mk>
