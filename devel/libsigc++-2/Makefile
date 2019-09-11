# $OpenBSD: Makefile,v 1.44 2019/09/11 17:53:53 ajacoutot Exp $

PORTROACH=		limitw:2,even

COMMENT=		callback framework for C++

GNOME_VERSION=		2.10.2
GNOME_PROJECT=		libsigc++

CATEGORIES=		devel

SHARED_LIBS +=  sigc-2.0             4.2      # 0.0

API_V=			2.0
SUBST_VARS=		API_V

HOMEPAGE=		http://libsigc.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES=		x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		M4='m4 -g' \
			ac_cv_path_DOT= \
			ac_cv_path_DOXYGEN=

.include <bsd.port.mk>
