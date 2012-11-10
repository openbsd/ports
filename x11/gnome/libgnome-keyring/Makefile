# $OpenBSD: Makefile,v 1.23 2012/11/10 10:15:34 ajacoutot Exp $

COMMENT=	library for gnome keyring integration

GNOME_PROJECT=	libgnome-keyring
GNOME_VERSION=	3.6.0
REVISION=	2

SHARED_LIBS +=  gnome-keyring        7.0      # 2.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += dbus-1 ffi gcrypt glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gthread-2.0 pcre pthread

MODGNOME_TOOLS=	goi vala

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	security/libgcrypt \
		x11/dbus \
		devel/glib2

.include <bsd.port.mk>
