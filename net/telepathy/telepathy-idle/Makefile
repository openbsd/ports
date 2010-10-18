# $OpenBSD: Makefile,v 1.21 2010/10/18 21:50:39 sthen Exp $

COMMENT=		flexible communications framework, IRC component

DISTNAME=		telepathy-idle-0.1.6
REVISION=		2

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-idle/}

WANTLIB += c crypto dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 pcre pthread ssl

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::devel/py-twisted/words
RUN_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		telepathy-glib::net/telepathy/telepathy-glib

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-silent-rules
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			OPENSSL_LIBS="-L/usr/lib -lssl -lcrypto" \
			OPENSSL_CFLAGS="-I/usr/include"
USE_GROFF =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
