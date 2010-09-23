# $OpenBSD: Makefile,v 1.11 2010/09/23 14:19:10 jasper Exp $

COMMENT=		flexible communications framework, libpurple component

DISTNAME=		telepathy-haze-0.4.0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-haze/}

MODULES=		devel/gettext \
			lang/python

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pthread util xml2 z purple telepathy-glib

BUILD_DEPENDS=		::devel/py-twisted/words \
			::net/py-xmpp \
			::textproc/libxslt
LIB_DEPENDS=		::net/pidgin,-libpurple \
			::net/telepathy/telepathy-glib

MODPY_RUNDEP=		No
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
