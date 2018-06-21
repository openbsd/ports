# $OpenBSD: Makefile,v 1.5 2018/06/21 11:21:57 ajacoutot Exp $

COMMENT=		tools to manage the libosinfo database

DISTNAME=		osinfo-db-tools-${V}

WANTLIB += archive bz2 c crypto expat ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl lz4 lzma m pcre pthread
WANTLIB += xml2 z

MODULES=		textproc/intltool

LIB_DEPENDS=		archivers/libarchive \
			devel/glib2 \
			textproc/libxml

# XXX left-over from the split?
BUILD_DEPENDS +=	textproc/libxslt

.include <bsd.port.mk>
