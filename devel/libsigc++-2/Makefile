# $OpenBSD: Makefile,v 1.25 2012/09/24 03:20:51 ajacoutot Exp $

COMMENT-main=		callback framework for C++
COMMENT-docs=		callback framework for C++ documentation

VERSION=		2.2.11
DISTNAME=		libsigc++-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGSPEC-main =		libsigc++->=2,<3
PKGNAME-docs=		libsigc++-docs-${VERSION}
V=			2.0
SUBST_VARS=		V
SHARED_LIBS=		sigc-2.0 2.0
CATEGORIES=		devel

WANTLIB-main=		m stdc++

HOMEPAGE=		http://libsigc.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.xz
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libsigc++/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

MULTI_PACKAGES=		-main -docs

PKG_ARCH-docs=		*

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		M4='m4 -g'

.include <bsd.port.mk>
