# $OpenBSD: Makefile,v 1.38 2013/06/20 18:26:26 jasper Exp $

COMMENT=		flexible communications framework, local-link component

DISTNAME=		telepathy-salut-0.8.1

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-salut/}

WANTLIB += avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += c dbus-1 dbus-glib-1 e2fs-uuid ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gthread-2.0 hogweed
WANTLIB += m nettle p11-kit pcre pthread soup-2.4 sqlite3 tasn1
WANTLIB += telepathy-glib xml2 z

MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No

BUILD_DEPENDS=		textproc/libxslt \
			devel/check
# needed for the tests
BUILD_DEPENDS +=	devel/py-twisted/words \
			net/avahi,-gui,no_mono,no_qt3,no_qt4
LIB_DEPENDS=		net/avahi \
			devel/libsoup \
			net/telepathy/telepathy-glib \
			sysutils/e2fsprogs
TEST_DEPENDS=		textproc/py-xmldiff

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/lib/ext/wocky

MODPY_ADJ_FILES=	tests/twisted/avahimock.py

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-Werror \
			--disable-avahi-tests

.include <bsd.port.mk>
