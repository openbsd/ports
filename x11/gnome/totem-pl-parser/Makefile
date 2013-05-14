# $OpenBSD: Makefile,v 1.54 2013/05/14 12:16:10 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GObject-based parsing library

GNOME_PROJECT=	totem-pl-parser
GNOME_VERSION=	3.4.5

SHARED_LIBS +=  totem-plparser       17.3     # 17.4
SHARED_LIBS +=  totem-plparser-mini  17.3     # 17.4

CATEGORIES=	multimedia textproc

HOMEPAGE=	http://projects.gnome.org/totem/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive bz2 crypto curl expat ffi gcrypt gio-2.0 glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error gthread-2.0
WANTLIB += idn lua5.1 lzma m pcre pthread quvi soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 ssl xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	mail/gmime \
		textproc/libxml \
		devel/libsoup,-gnome \
		archivers/libarchive \
		net/quvi/libquvi \
		security/libgcrypt

MODGNOME_TOOLS= gi

CONFIGURE_ARGS=	--enable-quvi \
		--enable-libarchive \
		--enable-libgcrypt

.include <bsd.port.mk>
