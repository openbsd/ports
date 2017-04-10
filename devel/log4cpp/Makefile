# $OpenBSD: Makefile,v 1.4 2017/04/10 11:45:26 sthen Exp $

COMMENT=	library of C++ classes for flexible logging

DISTNAME=	log4cpp-1.1.1
REVISION=	0
WRKDIST=	${WRKDIR}/log4cpp

SHARED_LIBS +=	log4cpp              0.0      # 5.6

CATEGORIES=	devel

HOMEPAGE=	http://log4cpp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread ${LIBCXX}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=log4cpp/}

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --with-pthreads \
		--disable-doxygen
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
