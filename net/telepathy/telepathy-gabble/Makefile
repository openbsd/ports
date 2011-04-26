# $OpenBSD: Makefile,v 1.35 2011/04/26 06:59:11 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.12.0

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-gabble/}

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0 gmp
WANTLIB += gnutls gobject-2.0 gthread-2.0 hogweed m nettle nice
WANTLIB += pcre pthread soup-2.4 sqlite3 tasn1 telepathy-glib
WANTLIB += xml2 z

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
			--enable-plugins
CONFIGURE_ENV+=		ac_cv_prog_PYTHON="${MODPY_BIN}"
USE_GROFF=		Yes

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/lib/ext/wocky

.include <bsd.port.mk>
