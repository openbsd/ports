# $OpenBSD: Makefile,v 1.8 2010/09/23 14:24:22 jasper Exp $

COMMENT=	flexible communications framework, logger component

DISTNAME=	telepathy-logger-0.1.1
REVISION=	3

SHARED_LIBS=	telepathy-logger 0.0

MASTER_SITES=	${MASTER_SITES_TELEPATHY:=telepathy-logger/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gconf2 \
		devel/gettext \
		lang/python

WANTLIB += ORBit-2 c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pcre pthread xml2 z telepathy-glib

BUILD_DEPENDS=	::devel/py-twisted/words \
		::x11/gnome/doc-utils
LIB_DEPENDS=	::net/telepathy/telepathy-glib

MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	telepathy-logger
MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-silent-rules \
			--enable-gtk-doc=no \
			--enable-shave

.include <bsd.port.mk>
