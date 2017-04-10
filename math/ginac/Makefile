# $OpenBSD: Makefile,v 1.23 2017/04/10 11:46:22 sthen Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.6.4
SHARED_LIBS +=	ginac	5.0	# 0.5
CATEGORIES=	math

HOMEPAGE=	http://www.ginac.de/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	 ${HOMEPAGE} \
		 ftp://ftpthep.physik.uni-mainz.de/pub/GiNaC/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses readline ${LIBCXX} gmp cln

MODULES =       lang/python
BUILD_DEPENDS =	devel/doxygen
LIB_DEPENDS=	devel/cln

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

TEST_TARGET=	check

.include <bsd.port.mk>
