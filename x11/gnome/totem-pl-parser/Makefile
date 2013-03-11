# $OpenBSD: Makefile,v 1.50 2013/03/11 11:46:12 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	GObject-based parsing library

GNOME_PROJECT=	totem-pl-parser
GNOME_VERSION=	3.4.3

SHARED_LIBS +=  totem-plparser       17.2      # 17.2
SHARED_LIBS +=  totem-plparser-mini  17.2      # 17.2

CATEGORIES=	multimedia textproc

HOMEPAGE=	http://projects.gnome.org/totem/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive bz2 crypto curl dbus-1 expat ffi gcrypt gio-2.0
WANTLIB += glib-2.0 gmime-2.6 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gthread-2.0 idn lua5.1 lzma m pcre pthread
WANTLIB += quvi soup-2.4 soup-gnome-2.4 sqlite3 ssl xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	mail/gmime>=2.6.0 \
		textproc/libxml \
		devel/libsoup,-gnome \
		archivers/libarchive \
		net/quvi/libquvi

MODGNOME_TOOLS= goi

CONFIGURE_ARGS=	--enable-quvi \
		--enable-libarchive \
		--enable-libgcrypt

.include <bsd.port.mk>
