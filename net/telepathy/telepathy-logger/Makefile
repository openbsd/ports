COMMENT=	flexible communications framework, logger component

DISTNAME=	telepathy-logger-0.8.2
REVISION=	10

SHARED_LIBS +=  telepathy-logger     4.1      # 6.0

HOMEPAGE=	${HOMEPAGE_TP:=Logger}

SITES=		${SITES_TP:=telepathy-logger/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB =  c dbus-1 dbus-glib-1 execinfo ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv intl lzma m pcre2-8 pthread
WANTLIB += sqlite3 telepathy-glib xml2 z

MODULES=	devel/dconf \
		lang/python \
		textproc/intltool

MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gobject-introspection \
		devel/py-twisted${MODPY_FLAVOR} \
		textproc/libxslt
LIB_DEPENDS=	databases/sqlite3 \
		net/telepathy/telepathy-glib \
		textproc/libxml \
		x11/dbus-glib

MODGCONF2_SCHEMAS_DIR=	telepathy-logger

TEST_IS_INTERACTIVE=x11

.include <bsd.port.mk>
