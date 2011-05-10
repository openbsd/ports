# $OpenBSD: Makefile,v 1.33 2011/05/10 17:11:43 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GObject-based parsing library

GNOME_PROJECT=	totem-pl-parser
GNOME_VERSION=	2.32.5

SHARED_LIBS +=	totem-plparser		3.0 # .17.0
SHARED_LIBS +=	totem-plparser-mini	3.0 # .17.0

CATEGORIES=	multimedia textproc

HOMEPAGE=	http://projects.gnome.org/totem/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += archive bz2 dbus-1 expat gcrypt gio-2.0 glib-2.0 gmime-2.4
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gthread-2.0
WANTLIB += lzma m pcre soup-2.4 soup-gnome-2.4 sqlite3 xml2 z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	gmime->=2.4,<2.6:mail/gmime24 \
		textproc/libxml \
		devel/libsoup,-gnome \
		archivers/libarchive

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-quvi \
		--enable-libarchive \
		--enable-introspection

.include <bsd.port.mk>
