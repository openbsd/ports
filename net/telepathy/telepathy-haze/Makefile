# $OpenBSD: Makefile,v 1.8 2010/09/07 07:06:34 ajacoutot Exp $

COMMENT=		flexible communications framework, libpurple component

DISTNAME=		telepathy-haze-0.3.4
REVISION=		1

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-haze/}

MODULES=		devel/gettext \
			lang/python

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pthread util xml2 z

BUILD_DEPENDS=		::devel/py-twisted/words \
			::net/py-xmpp \
			::textproc/libxslt
LIB_DEPENDS=		purple::net/pidgin,-libpurple \
			telepathy-glib::net/telepathy/telepathy-glib

USE_GMAKE=		Yes
MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
