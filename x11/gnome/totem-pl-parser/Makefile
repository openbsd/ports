# $OpenBSD: Makefile,v 1.42 2012/02/21 08:22:44 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GObject-based parsing library

GNOME_PROJECT=	totem-pl-parser
GNOME_VERSION=	2.32.6
REVISION=	1

SHARED_LIBS +=	totem-plparser		3.0 # .17.0
SHARED_LIBS +=	totem-plparser-mini	3.0 # .17.0

CATEGORIES=	multimedia textproc

HOMEPAGE=	http://projects.gnome.org/totem/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += archive bz2 dbus-1 expat ffi gcrypt gio-2.0 glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gthread-2.0 lzma m pcre soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += xml2 z

EXTRACT_SUFX=		.tar.bz2

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
