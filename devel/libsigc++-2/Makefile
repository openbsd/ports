# $OpenBSD: Makefile,v 1.1.1.1 2005/11/02 23:50:01 wilfried Exp $

COMMENT=		"callback framework for C++"
COMMENT-docs=		"callback framework for C++ documentation"

VERSION=		2.0.16
DISTNAME=		libsigc++-${VERSION}
PKGNAME-docs=		libsigc++-docs-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://libsigc.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libsigc++/2.0/}

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=		*
.endif

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		M4='m4 -g'

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

V=			2.0
SUBST_VARS=		V

.include <bsd.port.mk>
