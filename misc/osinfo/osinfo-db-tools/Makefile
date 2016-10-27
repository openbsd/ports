# $OpenBSD: Makefile,v 1.2 2016/10/27 08:59:58 ajacoutot Exp $

COMMENT=		tools to manage the libosinfo database

V=			1.1.0
DISTNAME=		osinfo-db-tools-${V}

WANTLIB += archive bz2 c crypto expat ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl lz4 lzma lzo2 m pcre pthread
WANTLIB += xml2 z

MODULES=		textproc/intltool

LIB_DEPENDS=		archivers/libarchive \
			devel/glib2 \
			textproc/libxml

# XXX left-over from the split?
BUILD_DEPENDS +=	textproc/libxslt

.include <bsd.port.mk>
