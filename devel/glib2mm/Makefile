# $OpenBSD: Makefile,v 1.71 2014/04/03 17:36:18 ajacoutot Exp $

COMMENT=	C++ interface for glib2

GNOME_PROJECT=	glibmm
GNOME_VERSION=	2.39.92.1
PKGNAME=	glib2mm-${GNOME_VERSION}

V=		2.4
SUBST_VARS=	V

SHARED_LIBS +=  glibmm_generate_extra_defs-2.4 12.0     # 4.0
SHARED_LIBS +=  glibmm-2.4           12.0     # 4.0
SHARED_LIBS +=  giomm-2.4            12.0     # 4.0

CATEGORIES=	devel

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += pthread sigc-2.0 stdc++ z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libsigc++-2 \
		devel/glib2>=2.40.0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	M4='m4 -g' \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	--enable-static

# XXX rm at next release
# git checkout (2014-04-03 09:40:54) + and togen.sh run
MASTER_SITES=	https://distfiles.bsdfrog.org/
CONFIGURE_ARGS += --disable-documentation

.include <bsd.port.mk>
