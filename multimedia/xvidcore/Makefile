# $OpenBSD: Makefile,v 1.19 2015/10/13 07:11:29 ajacoutot Exp $

COMMENT=	ISO MPEG-4 compliant video codec

DISTNAME=	xvidcore-1.3.4
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.xvid.org/downloads/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	xvidcore	4.4

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
