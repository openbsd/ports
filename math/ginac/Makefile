# $OpenBSD: Makefile,v 1.30 2018/05/04 11:11:39 pirofti Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.7.4
SHARED_LIBS +=	ginac	7.0	# 8.0
CATEGORIES=	math

HOMEPAGE=	https://www.ginac.de/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses readline ${LIBCXX} gmp cln

MODULES =	lang/python

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	devel/cln

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	ac_cv_path_DOXYGEN=""

TEST_TARGET=	check

.include <bsd.port.mk>
