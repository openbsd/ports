# $OpenBSD: Makefile,v 1.63 2013/03/11 10:50:04 espie Exp $

COMMENT=	C++ interface for glib2

GNOME_PROJECT=	glibmm
GNOME_VERSION=	2.34.1
PKGNAME=	glib2mm-${GNOME_VERSION}
REVISION=	0

V=		2.4
SUBST_VARS=	V

SHARED_LIBS +=  glibmm_generate_extra_defs-2.4 12.0     # 4.0
SHARED_LIBS +=  glibmm-2.4           12.0     # 4.0
SHARED_LIBS +=  giomm-2.4            12.0     # 4.0

CATEGORIES=	devel

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread sigc-2.0 stdc++ z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libsigc++-2 \
		devel/glib2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	M4='m4 -g' \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
