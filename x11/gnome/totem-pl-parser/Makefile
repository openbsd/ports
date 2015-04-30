# $OpenBSD: Makefile,v 1.64 2015/04/30 11:31:42 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GObject-based parsing library

GNOME_PROJECT=		totem-pl-parser
GNOME_VERSION=		3.10.5

SHARED_LIBS +=  totem-plparser       18.1     # 19.0
SHARED_LIBS +=  totem-plparser-mini  18.0     # 19.0

CATEGORIES=		multimedia net textproc

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive bz2 c crypto curl expat ffi gcrypt gio-2.0
WANTLIB += glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 idn lua5.1 lzma lzo2 m pcre proxy pthread
WANTLIB += quvi-0.9 soup-2.4 sqlite3 ssl xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		archivers/libarchive \
			devel/libsoup \
			mail/gmime \
			net/quvi/libquvi \
			security/libgcrypt \
			textproc/libxml

MODGNOME_TOOLS=		gobject-introspection

.include <bsd.port.mk>
