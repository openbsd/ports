# $OpenBSD: Makefile,v 1.21 2011/09/21 13:25:08 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.10.1

SHARED_LIBS +=  gdata                4.0      # .14.1

CATEGORIES=		devel net

HOMEPAGE=		http://live.gnome.org/libgdata

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += crypto curl dbus-1 gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gthread-2.0 idn
WANTLIB += m nspr4 nss3 oauth pcre plc4 plds4 smime3 softokn3
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 ssl ssl3 xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libsoup,-gnome \
			net/liboauth

FAKE_FLAGS+=		DATADIRNAME="share"

MODGNOME_TOOLS= 	goi

LIBTOOL_FLAGS+= 	--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-gnome

.include <bsd.port.mk>
