# $OpenBSD: Makefile,v 1.41 2017/11/16 23:20:38 naddy Exp $

COMMENT=		callback framework for C++

GNOME_VERSION=		2.10.0
REVISION=		1
GNOME_PROJECT=		libsigc++
CATEGORIES=		devel

SHARED_LIBS +=  sigc-2.0             4.2      # 0.0

API_V=			2.0
SUBST_VARS=		API_V

HOMEPAGE=		http://libsigc.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES=		x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		M4='m4 -g'

.include <bsd.port.mk>
