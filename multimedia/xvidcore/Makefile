COMMENT=	ISO MPEG-4 compliant video codec

DISTNAME=	xvidcore-1.3.7
CATEGORIES=	multimedia
MASTER_SITES=	https://downloads.xvid.com/downloads/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	xvidcore	5.0

HOMEPAGE=	https://www.xvid.com/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	m pthread

WRKDIST=	${WRKDIR}/xvidcore
WRKBUILD=	${WRKSRC}/build/generic

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-assembly
CONFIGURE_ENV=	API_MAJOR=${LIBxvidcore_VERSION:R} \
		API_MINOR=${LIBxvidcore_VERSION:E}

NO_TEST=	Yes

do-install:
	${INSTALL_DATA} ${WRKBUILD}/=build/libxvidcore.{a,so*} ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/src/xvid.h ${PREFIX}/include

.include <bsd.port.mk>
