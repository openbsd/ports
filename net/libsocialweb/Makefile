# $OpenBSD: Makefile,v 1.1.1.1 2011/04/28 10:50:46 jasper Exp $

COMMENT=		social web services integration framework

GNOME_PROJECT=		libsocialweb
GNOME_VERSION=		0.25.15

SHARED_LIBS +=  socialweb-client     2.0      # 2.0
SHARED_LIBS +=  socialweb-keyfob          0.0 # 0.0
SHARED_LIBS +=  socialweb-keystore        0.0 # 0.0
SHARED_LIBS +=  socialweb                 0.0 # 0.0

CATEGORIES=		net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ORBit-2 c dbus-1 dbus-glib-1 gconf-2 gcrypt gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gthread-2.0 json-glib-1.0 m pcre pthread rest-0.7 rest-extras-0.7
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 xml2 z

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		devel/json-glib \
			net/librest

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection \
			--enable-all-services \
			--with-online=always # Other choices are ConnMan and NM

.include <bsd.port.mk>
