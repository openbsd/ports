# $OpenBSD: Makefile,v 1.10 2009/09/18 10:22:24 ajacoutot Exp $

COMMENT-main=		callback framework for C++
COMMENT-docs=		callback framework for C++ documentation

VERSION=		2.2.4
DISTNAME=		libsigc++-${VERSION}
PKGNAME-main=		${DISTNAME}
PKGNAME-docs=		libsigc++-docs-${VERSION}
V=			2.0
SUBST_VARS=		V
SHARED_LIBS=		sigc-2.0 2.0
CATEGORIES=		devel

HOMEPAGE=		http://libsigc.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libsigc++/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

MULTI_PACKAGES=		-main -docs

PKG_ARCH-docs=		*

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		M4='m4 -g' \
			MAKE=${MAKE_PROGRAM}

.include <bsd.port.mk>
