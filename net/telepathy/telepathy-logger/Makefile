# $OpenBSD: Makefile,v 1.10 2010/09/30 12:45:21 jasper Exp $

COMMENT=	flexible communications framework, logger component

DISTNAME=	telepathy-logger-0.1.5
REVISION=	0

SHARED_LIBS +=  telepathy-logger     1.0      # 1.0

MASTER_SITES=	${MASTER_SITES_TELEPATHY:=telepathy-logger/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		lang/python

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pcre pthread z telepathy-glib
WANTLIB += xml2 sqlite3

BUILD_DEPENDS=	::devel/py-twisted/words \
		::x11/gnome/doc-utils
LIB_DEPENDS=	::databases/sqlite3 \
		::net/telepathy/telepathy-glib \
		::textproc/libxml

MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	telepathy-logger
MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-silent-rules \
			--enable-gtk-doc=no \
			--enable-shave

REGRESS_IS_INTERACTIVE=x11

.include <bsd.port.mk>
