# $OpenBSD: Makefile,v 1.13 2011/10/26 12:26:15 ajacoutot Exp $

COMMENT=	C++ binding for the ATK library

GNOME_PROJECT=	atkmm
GNOME_VERSION=	2.22.6

PKGNAME=	atk2mm-${GNOME_VERSION}

CATEGORIES=	devel

SHARED_LIBS +=		atkmm-1.6	10.0 # .2.0

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += atk-1.0 ffi glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre sigc-2.0 stdc++

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/glib2mm \
		devel/atk

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
