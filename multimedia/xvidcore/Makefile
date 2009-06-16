# $OpenBSD: Makefile,v 1.8 2009/06/16 20:38:50 naddy Exp $

COMMENT=	ISO MPEG-4 compliant video codec

DISTNAME=	xvidcore-1.2.2
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.xvid.org/downloads/

SHARED_LIBS=	xvidcore	4.2

HOMEPAGE=	http://www.xvid.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	m

WRKDIST=	${WRKDIR}/xvidcore
WRKBUILD=	${WRKSRC}/build/generic

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-assembly
CONFIGURE_ENV=	API_MAJOR=${LIBxvidcore_VERSION:R} \
		API_MINOR=${LIBxvidcore_VERSION:E}

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA} ${WRKBUILD}/=build/libxvidcore.* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/src/xvid.h ${PREFIX}/include

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "yes"
MAKE_FLAGS+=	SHARED_LIB=""
.endif
