# $OpenBSD: Makefile,v 1.13 2007/04/25 10:38:15 wilfried Exp $

COMMENT-main=		"C++ interface for glib2"
COMMENT-docs=		"C++ interface for glib2 documentation"

VERSION=		2.12.8
V=			2.4
DISTNAME=		glibmm-${VERSION}
PKGNAME-main=		glib2mm-${VERSION}
PKGNAME-docs=		glib2mm-docs-${VERSION}
SHARED_LIBS +=	glibmm_generate_extra_defs-2.4 5.0      # .1.24
SHARED_LIBS +=	glibmm-2.4           5.0      # .1.24

CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glibmm/2.12/}

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext
LIB_DEPENDS=		sigc-2.0:libsigc++-2.*:devel/libsigc++-2 \
			glib-2.0,gmodule-2.0,gobject-2.0:glib2->=2.9:devel/glib2 
PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--disable-dependency-tracking
CONFIGURE_ENV=		M4='m4 -g'

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts
SUBST_VARS=		V

.include <bsd.port.mk>
