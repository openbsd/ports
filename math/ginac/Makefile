# $OpenBSD: Makefile,v 1.34 2020/04/06 08:48:06 pirofti Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.7.4
SHARED_LIBS +=	ginac	7.0	# 8.0
CATEGORIES=	math
REVISION=	1

HOMEPAGE=	https://www.ginac.de/

MAINTAINER=	Paul Irofti <paul@irofti.net>

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
