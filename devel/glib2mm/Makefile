# $OpenBSD: Makefile,v 1.58 2012/09/25 22:45:32 ajacoutot Exp $

COMMENT=	C++ interface for glib2

GNOME_PROJECT=	glibmm
GNOME_VERSION=	2.33.13
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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread sigc-2.0 stdc++ z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libsigc++-2 \
		devel/glib2>=2.32.0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	M4='m4 -g' \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
