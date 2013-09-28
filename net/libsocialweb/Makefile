# $OpenBSD: Makefile,v 1.22 2013/09/28 08:50:35 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		social web services integration framework

GNOME_PROJECT=		libsocialweb
GNOME_VERSION=		0.25.21
REVISION=		2

SHARED_LIBS +=  socialweb-client          2.0 # 2.0
SHARED_LIBS +=  socialweb-keyfob          0.0 # 0.0
SHARED_LIBS +=  socialweb-keystore        0.0 # 0.0
SHARED_LIBS +=  socialweb                 0.0 # 0.0

CATEGORIES=		net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dbus-1 dbus-glib-1 ffi gconf-2 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gthread-2.0
WANTLIB += json-glib-1.0 m pcre pthread rest-0.7 rest-extras-0.7
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 xml2 z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS= 	gi vala
BUILD_DEPENDS=		textproc/libxslt
LIB_DEPENDS=		devel/json-glib \
			net/librest \
			devel/gconf2 \
			x11/dbus-glib \
			x11/gnome/libgnome-keyring

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-static \
			--enable-all-services \
			--with-online=always # Other choices are ConnMan and NM

post-install:
	rm ${PREFIX}/lib/libsocialweb/services/*.la

.include <bsd.port.mk>
