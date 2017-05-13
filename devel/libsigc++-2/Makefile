# $OpenBSD: Makefile,v 1.37 2017/05/13 09:49:50 espie Exp $

COMMENT=		callback framework for C++

GNOME_VERSION=		2.10.0
GNOME_PROJECT=		libsigc++
CATEGORIES=		devel

SHARED_LIBS +=  sigc-2.0             4.2      # 0.0

API_V=			2.0
SUBST_VARS=		API_V

HOMEPAGE=		http://libsigc.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m

MODULES=		x11/gnome

# c++11
WANT_CXX =	base gcc

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		M4='m4 -g'

.include <bsd.port.mk>
