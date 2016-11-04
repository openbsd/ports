# $OpenBSD: Makefile,v 1.73 2016/11/04 11:35:21 sthen Exp $

COMMENT=		GObject-based parsing library

GNOME_PROJECT=		totem-pl-parser
GNOME_VERSION=		3.10.7
REVISION=		0

SHARED_LIBS +=  totem-plparser       18.1     # 19.0
SHARED_LIBS +=  totem-plparser-mini  18.0     # 19.0

CATEGORIES=		multimedia net textproc

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive bz2 c crypto curl expat ffi gcrypt gio-2.0 glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error gthread-2.0 iconv
WANTLIB += intl lua5.1 lz4 lzma lzo2 m nghttp2 pcre proxy pthread
WANTLIB += quvi-0.9 soup-2.4 sqlite3 ssl xml2 z

MODULES=		x11/gnome

LIB_DEPENDS=		archivers/libarchive \
			devel/libsoup \
			mail/gmime \
			net/quvi/libquvi \
			security/libgcrypt \
			textproc/libxml

MODGNOME_TOOLS=		gobject-introspection

.include <bsd.port.mk>
