# $OpenBSD: Makefile,v 1.32 2019/07/12 20:47:41 sthen Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.7.4
SHARED_LIBS +=	ginac	7.0	# 8.0
CATEGORIES=	math
REVISION=	0

HOMEPAGE=	https://www.ginac.de/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	${COMPILER_LIBCXX} c cln curses gmp m readline

MODULES =	lang/python

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	devel/cln

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	ac_cv_path_DOXYGEN=""

TEST_TARGET=	check

.include <bsd.port.mk>
