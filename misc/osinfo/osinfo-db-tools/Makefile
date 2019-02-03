# $OpenBSD: Makefile,v 1.7 2019/02/03 08:24:32 ajacoutot Exp $

COMMENT=		tools to manage the libosinfo database

DISTNAME=		osinfo-db-tools-${V}

WANTLIB += archive bz2 c crypto expat ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl json-glib-1.0 lz4 lzma m pcre
WANTLIB += pthread xml2 z zstd

MODULES=		textproc/intltool

LIB_DEPENDS=		archivers/libarchive \
			devel/json-glib \
			textproc/libxml

# XXX left-over from the split?
BUILD_DEPENDS +=	textproc/libxslt

.include <bsd.port.mk>
