# $OpenBSD: Makefile,v 1.6 2008/07/14 06:02:30 brad Exp $

COMMENT=	ISO MPEG-4 compliant video codec

DISTNAME=	xvidcore-1.1.3
CATEGORIES=	multimedia
SHARED_LIBS=	xvidcore	4.1

HOMEPAGE=	http://www.xvid.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	m

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+= :yasm-*:devel/yasm
.endif

MASTER_SITES=	http://downloads.xvid.org/downloads/

WRKBUILD=	${WRKSRC}/build/generic
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	API_MAJOR=${LIBxvidcore_VERSION:R} \
		API_MINOR=${LIBxvidcore_VERSION:E}

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-assembly
.endif

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA} ${WRKBUILD}/=build/libxvidcore.* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/src/xvid.h ${PREFIX}/include

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "yes"
MAKE_FLAGS+=	SHARED_LIB=""
.endif
