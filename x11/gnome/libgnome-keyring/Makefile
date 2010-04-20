# $OpenBSD: Makefile,v 1.1.1.1 2010/04/20 14:27:01 ajacoutot Exp $

COMMENT=	library for gnome keyring integration

GNOME_PROJECT=	libgnome-keyring
GNOME_VERSION=	2.30.0

SHARED_LIBS +=  gnome-keyring        6.0      # .1.1

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error pcre

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	gcrypt::security/libgcrypt \
		eggdbus-1::devel/eggdbus

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-gtk-doc=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
