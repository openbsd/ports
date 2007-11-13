# $OpenBSD: Makefile,v 1.16 2007/11/13 14:06:21 steven Exp $

COMMENT-main=		C++ interface for glib2
COMMENT-docs=		C++ interface for glib2 documentation

GNOME_PROJECT=		glibmm
GNOME_VERSION=		2.14.1
V=			2.4
PKGNAME-main=		glib2mm-${VERSION}p0
PKGNAME-docs=		glib2mm-docs-${VERSION}
SHARED_LIBS +=	glibmm_generate_extra_defs-2.4 6.0      # .1.24
SHARED_LIBS +=	glibmm-2.4           6.0      # .1.24

CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext \
			x11/gnome
LIB_DEPENDS=		sigc-2.0:libsigc++-2.*:devel/libsigc++-2 \
			glib-2.0,gmodule-2.0,gobject-2.0:glib2->=2.9:devel/glib2
WANTLIB-main=		pcre
PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--disable-dependency-tracking
CONFIGURE_ENV=		M4='m4 -g'

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts
SUBST_VARS=		V

.include <bsd.port.mk>
