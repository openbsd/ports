COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.8.7
SHARED_LIBS +=	ginac	8.0	# 12.6
CATEGORIES=	math
REVISION=	0

HOMEPAGE=	https://www.ginac.de/

MAINTAINER=	Paul Irofti <paul@irofti.net>

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		https://www.ginac.de/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	${COMPILER_LIBCXX} c cln curses gmp m readline

MODULES =	lang/python

COMPILER =	base-clang ports-gcc

CXXFLAGS_base-clang =	-std=c++14

LIB_DEPENDS=	devel/cln

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	ac_cv_path_DOXYGEN=""

TEST_TARGET=	check

.include <bsd.port.mk>
