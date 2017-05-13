# $OpenBSD: Makefile,v 1.25 2017/05/13 09:49:50 espie Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.7.2
SHARED_LIBS +=	ginac	6.0	# 0.5
CATEGORIES=	math

HOMEPAGE=	https://www.ginac.de/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses readline ${LIBCXX} gmp cln

MODULES =	lang/python

WANT_CXX =	base gcc

LIB_DEPENDS=	devel/cln

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	ac_cv_path_DOXYGEN=""

TEST_TARGET=	check

.include <bsd.port.mk>
