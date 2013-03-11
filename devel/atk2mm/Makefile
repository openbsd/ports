# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:01 espie Exp $

COMMENT=	C++ binding for the ATK library

GNOME_PROJECT=	atkmm
GNOME_VERSION=	2.22.6
REVISION=	2

PKGNAME=	atk2mm-${GNOME_VERSION}

CATEGORIES=	devel

SHARED_LIBS +=		atkmm-1.6	10.0 # .2.0

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 ffi glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre sigc-2.0 stdc++ pthread

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/glib2mm \
		devel/atk

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
