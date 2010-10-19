# $OpenBSD: Makefile,v 1.31 2010/10/19 15:21:03 ajacoutot Exp $

COMMENT=	C++ interface for glib2

GNOME_PROJECT=	glibmm
GNOME_VERSION=	2.24.2
V=		2.4

SUBST_VARS=	V

PKGNAME=	glib2mm-${GNOME_VERSION}

REVISION=	1

SHARED_LIBS +=	glibmm_generate_extra_defs-2.4 9.0      # .3.0
SHARED_LIBS +=	glibmm-2.4           9.0      # .3.0
SHARED_LIBS +=  giomm-2.4            9.0      # .3.0

CATEGORIES=	devel

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pcre z m stdc++

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	sigc-2.0:libsigc++->=2,<3:devel/libsigc++-2 \
		glib-2.0.>=1803,gmodule-2.0,gobject-2.0,gio-2.0,gthread-2.0:glib2->=2.24.0:devel/glib2


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	M4='m4 -g'
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--disable-dependency-tracking

.include <bsd.port.mk>
