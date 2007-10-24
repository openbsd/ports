# $OpenBSD: Makefile,v 1.8 2007/10/24 08:51:57 wilfried Exp $

COMMENT-main=		callback framework for C++
COMMENT-docs=		callback framework for C++ documentation

VERSION=		2.0.18
DISTNAME=		libsigc++-${VERSION}
PKGNAME-docs=		libsigc++-docs-${VERSION}
V=			2.0
SUBST_VARS=		V
SHARED_LIBS=		sigc-2.0 1.1
MODGNU_SHARED_LIBS=	sigc-2.0 ''
LIBsigc-2.0_ALIAS=	sigc_2_0
CATEGORIES=		devel

HOMEPAGE=		http://libsigc.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libsigc++/2.0/}

MULTI_PACKAGES=		-main -docs

PKG_ARCH-docs=		*

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		M4='m4 -g'

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

.include <bsd.port.mk>
