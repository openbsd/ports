# $OpenBSD: Makefile,v 1.25 2010/04/22 19:56:27 ajacoutot Exp $

COMMENT-main=		C++ interface for glib2
COMMENT-docs=		C++ interface for glib2 documentation

GNOME_PROJECT=		glibmm
GNOME_VERSION=		2.24.1
V=			2.4

PKGNAME-main=		glib2mm-${GNOME_VERSION}
PKGNAME-docs=		glib2mm-docs-${GNOME_VERSION}

SHARED_LIBS +=	glibmm_generate_extra_defs-2.4 9.0      # .3.0
SHARED_LIBS +=	glibmm-2.4           9.0      # .3.0
SHARED_LIBS +=  giomm-2.4            9.0      # .3.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext \
			x11/gnome
LIB_DEPENDS=		sigc-2.0:libsigc++->=2,<3:devel/libsigc++-2 \
			glib-2.0.>=1803,gmodule-2.0,gobject-2.0,gio-2.0,gthread-2.0:glib2->=2.24.0:devel/glib2
WANTLIB-main=		pcre z
PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--disable-dependency-tracking
CONFIGURE_ENV=		M4='m4 -g' \
			MAKE=${MAKE_PROGRAM}

SUBST_VARS=		V

.include <bsd.port.mk>
