# $OpenBSD: Makefile,v 1.5 2009/06/03 16:40:06 ajacoutot Exp $

COMMENT=		flexible communications framework, local-link component

DISTNAME=		telepathy-salut-0.3.9

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-salut/}

WANTLIB += c crypto dbus-1 dbus-glib-1 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += m pcre pthread ssl tasn1 xml2 z

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		avahi-client,avahi-common,avahi-glib,avahi-gobject::net/avahi \
			soup-2.4.>=1::devel/libsoup \
			telepathy-glib.>=4::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBSSL_LIBS="-L/usr/lib -lssl -lcrypto" \
			LIBSSL_CFLAGS="-I/usr/include"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-ssl

REGRESS_DEPENDS=	::devel/check

.include <bsd.port.mk>
