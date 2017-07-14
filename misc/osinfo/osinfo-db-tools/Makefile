# $OpenBSD: Makefile,v 1.3 2017/07/14 11:43:51 ajacoutot Exp $

COMMENT=		tools to manage the libosinfo database

V=			1.1.0
DISTNAME=		osinfo-db-tools-${V}
REVISION=		0

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
