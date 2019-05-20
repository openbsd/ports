# $OpenBSD: Makefile,v 1.9 2019/05/20 22:15:17 naddy Exp $

COMMENT=		tools to manage the libosinfo database

DISTNAME=		osinfo-db-tools-${V}

WANTLIB += archive bz2 c crypto expat ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl json-glib-1.0 lz4 lzma m pcre
WANTLIB += pthread xml2 z zstd

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		archivers/libarchive \
			devel/json-glib \
			textproc/libxml

# XXX left-over from the split?
BUILD_DEPENDS +=	textproc/libxslt

.include <bsd.port.mk>
