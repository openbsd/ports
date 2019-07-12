# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:41 sthen Exp $

COMMENT=	library of C++ classes for flexible logging

DISTNAME=	log4cpp-1.1.3
WRKDIST=	${WRKDIR}/log4cpp
REVISION=	1

SHARED_LIBS +=	log4cpp              0.0      # 5.6

CATEGORIES=	devel

HOMEPAGE=	http://log4cpp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=log4cpp/}

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --with-pthreads \
		--disable-doxygen
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
