# $OpenBSD: Makefile,v 1.4 2006/01/08 12:48:36 bernd Exp $

COMMENT=		"C++ interface for glib2"
COMMENT-docs=		"C++ interface for glib2 documentation"

VERSION=		2.6.1
V=			2.4
DISTNAME=		glibmm-${VERSION}
PKGNAME=		glib2mm-${VERSION}p2
PKGNAME-docs=		glib2mm-docs-${VERSION}
SHARED_LIBS=		glibmm-2.4 			1.13 \
			glibmm_generate_extra_defs-2.4	1.13

CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glibmm/2.6/}

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=		*
.else
MODULES=		gettext
LIB_DEPENDS=		sigc-2.0.0.0:libsigc++-2.*:devel/libsigc++-2 \
			glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0:glib2->=2.6:devel/glib2 
.endif

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static
CONFIGURE_ENV=		M4='m4 -g'

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts
SUBST_VARS=		V

.include <bsd.port.mk>
