# $OpenBSD: Makefile,v 1.5 2010/07/25 08:15:33 ajacoutot Exp $

COMMENT=	library for gnome keyring integration

GNOME_PROJECT=	libgnome-keyring
GNOME_VERSION=	2.30.1

REVISION=	0

SHARED_LIBS +=  gnome-keyring        6.0      # .1.1

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error pcre gthread-2.0 z gcrypt eggdbus-1

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	::security/libgcrypt \
		::devel/eggdbus

# There is no sense in providing the keyring library without the daemon.
RUN_DEPENDS=	::x11/gnome/keyring

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-gtk-doc=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
