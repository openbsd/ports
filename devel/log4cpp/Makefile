COMMENT=	library of C++ classes for flexible logging

DISTNAME=	log4cpp-1.1.4
WRKDIST=	${WRKDIR}/log4cpp

SHARED_LIBS +=	log4cpp              1.0      # 5.6

CATEGORIES=	devel

HOMEPAGE=	https://log4cpp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SITES=		${SITE_SOURCEFORGE:=log4cpp/}

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --with-pthreads \
		--disable-doxygen
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
