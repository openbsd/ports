# $OpenBSD: Makefile,v 1.5 2017/06/11 15:22:55 jasper Exp $

COMMENT=	library of C++ classes for flexible logging

DISTNAME=	log4cpp-1.1.2
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
