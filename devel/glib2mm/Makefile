# $OpenBSD: Makefile,v 1.42 2011/03/28 06:20:26 ajacoutot Exp $

COMMENT=	C++ interface for glib2

GNOME_PROJECT=	glibmm
GNOME_VERSION=	2.27.99.1

V=		2.4
SUBST_VARS=	V

PKGNAME=	glib2mm-${GNOME_VERSION}

SHARED_LIBS +=	glibmm_generate_extra_defs-2.4 10.0      # 4.0
SHARED_LIBS +=	glibmm-2.4           10.0      # 4.0
SHARED_LIBS +=  giomm-2.4            10.0      # 4.0

CATEGORIES=	devel

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pcre z m stdc++ sigc-2.0 glib-2.0>=1803 gmodule-2.0 gobject-2.0
WANTLIB += gio-2.0 gthread-2.0


MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libsigc++-2 \
		devel/glib2>=2.24.0


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	M4='m4 -g' \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
