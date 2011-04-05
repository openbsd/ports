# $OpenBSD: Makefile,v 1.33 2011/04/05 18:55:42 jasper Exp $

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-gabble-0.10.5

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-gabble/}

WANTLIB += c dbus-1 dbus-glib-1 gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnutls gobject-2.0 gthread-2.0 m pcre pthread tasn1
WANTLIB += xml2 z sqlite3 gpg-error telepathy-glib
WANTLIB += nice>=1 soup-2.4

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		textproc/libxslt \
			devel/py-twisted/words \
			net/py-xmpp
LIB_DEPENDS=		devel/libsoup \
			net/libnice>=0.0.13 \
			net/telepathy/telepathy-glib

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ca-certificates=/etc/ssl/cert.pem \
			--disable-gtk-doc \
			--enable-plugins
CONFIGURE_ENV+=		ac_cv_prog_PYTHON="${MODPY_BIN}"
USE_GROFF=		Yes

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/lib/ext/wocky

.include <bsd.port.mk>
