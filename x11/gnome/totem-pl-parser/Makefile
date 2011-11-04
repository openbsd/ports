# $OpenBSD: Makefile,v 1.41 2011/11/04 09:56:29 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GObject-based parsing library

GNOME_PROJECT=	totem-pl-parser
GNOME_VERSION=	2.32.6
REVISION=	0

SHARED_LIBS +=	totem-plparser		3.0 # .17.0
SHARED_LIBS +=	totem-plparser-mini	3.0 # .17.0

CATEGORIES=	multimedia textproc

HOMEPAGE=	http://projects.gnome.org/totem/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += archive bz2 dbus-1 expat gcrypt gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gthread-2.0
WANTLIB += lzma m pcre soup-2.4 soup-gnome-2.4 sqlite3 xml2 z assuan
WANTLIB += gpgme-pthread ffi

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	mail/gmime>=2.6.0 \
		textproc/libxml \
		devel/libsoup,-gnome \
		archivers/libarchive

MODGNOME_TOOLS= goi

CONFIGURE_ARGS=	--disable-quvi \
		--enable-libarchive

.include <bsd.port.mk>
