# $OpenBSD: Makefile,v 1.75 2017/06/21 14:56:28 ajacoutot Exp $

COMMENT=		GObject-based parsing library

GNOME_PROJECT=		totem-pl-parser
GNOME_VERSION=		3.10.8

SHARED_LIBS +=  totem-plparser       18.2     # 19.0
SHARED_LIBS +=  totem-plparser-mini  18.0     # 19.0

CATEGORIES=		multimedia net textproc

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive assuan bz2 c crypto curl expat ffi gcrypt gio-2.0
WANTLIB += glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gpgme-pthread gthread-2.0 iconv intl lua5.1 lz4 lzma
WANTLIB += m nghttp2 pcre proxy pthread quvi-0.9 soup-2.4 sqlite3
WANTLIB += ssl xml2 z

MODULES=		x11/gnome

LIB_DEPENDS=		archivers/libarchive \
			devel/libsoup \
			mail/gmime \
			net/quvi/libquvi \
			security/libgcrypt \
			textproc/libxml

MODGNOME_TOOLS=		gobject-introspection

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
