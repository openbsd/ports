# $OpenBSD: Makefile,v 1.17 2013/03/11 11:35:45 espie Exp $

COMMENT=	ISO MPEG-4 compliant video codec

DISTNAME=	xvidcore-1.3.2
REVISION=	2
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.xvid.org/downloads/

SHARED_LIBS=	xvidcore	4.3

HOMEPAGE=	http://www.xvid.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m pthread

WRKDIST=	${WRKDIR}/xvidcore
WRKBUILD=	${WRKSRC}/build/generic

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

.if ${NO_SHARED_LIBS:L} == "yes"
MAKE_FLAGS+=	SHARED_LIB=""
.endif
