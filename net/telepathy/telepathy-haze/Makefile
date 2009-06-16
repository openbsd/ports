# $OpenBSD: Makefile,v 1.1.1.1 2009/06/16 17:31:07 jasper Exp $

COMMENT=		flexible communications framework, libpurple component

DISTNAME=		telepathy-haze-0.3.0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-haze/}

MODULES=		devel/gettext

WANTLIB += c dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m ncurses pcre pthread xml2 z

BUILD_DEPENDS=		::devel/py-twisted/words \
			::net/py-xmpp
LIB_DEPENDS=		purple::net/pidgin,-libpurple \
			telepathy-glib::net/telepathy/telepathy-glib

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
