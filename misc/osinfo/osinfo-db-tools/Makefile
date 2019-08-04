# $OpenBSD: Makefile,v 1.10 2019/08/04 09:01:55 ajacoutot Exp $

COMMENT=		tools to manage the libosinfo database

DISTNAME=		osinfo-db-tools-${V}

WANTLIB += archive b2 bz2 c charset crypto expat ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv idn2 intl json-glib-1.0
WANTLIB += lz4 lzma m pcre psl pthread soup-2.4 sqlite3 unistring
WANTLIB += xml2 z zstd

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		archivers/libarchive \
			devel/json-glib \
			devel/libsoup

# XXX left-over from the split?
BUILD_DEPENDS +=	textproc/libxslt

MODULES +=		lang/python
MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
TEST_DEPENDS=		${MODPY_RUN_DEPENDS}

.include <bsd.port.mk>
