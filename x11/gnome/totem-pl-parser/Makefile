# $OpenBSD: Makefile,v 1.59 2014/04/01 15:31:47 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GObject-based parsing library

GNOME_PROJECT=	totem-pl-parser
GNOME_VERSION=	3.10.2

SHARED_LIBS +=  totem-plparser       18.1     # 19.0
SHARED_LIBS +=  totem-plparser-mini  18.0     # 19.0

CATEGORIES=	multimedia textproc

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive bz2 c crypto curl expat ffi gcrypt gio-2.0
WANTLIB += glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 idn lua5.1 lzma m pcre proxy pthread quvi-0.9
WANTLIB += soup-2.4 sqlite3 ssl xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	mail/gmime \
		textproc/libxml \
		devel/libsoup \
		archivers/libarchive \
		net/quvi/libquvi>=0.9.3 \
		security/libgcrypt

MODGNOME_TOOLS= gobject-introspection

.include <bsd.port.mk>
