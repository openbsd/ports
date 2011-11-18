# $OpenBSD: Makefile,v 1.2 2011/11/18 11:16:23 espie Exp $

COMMENT=	simple C Library for entropy measurement

DISTNAME=	libdisorder-0.0.2

SHARED_LIBS=	disorder 0.0

CATEGORIES=	devel 

HOMEPAGE=	http://libdisorder.freshdefense.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

MASTER_SITES=	${HOMEPAGE}/releases/

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBdisorder_VERSION:R} \
		SHLIB_MINOR=${LIBdisorder_VERSION:E}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
CFLAGS+=	-I${WRKSRC}/include

NO_REGRESS=	Yes

post-build:
	cd ${WRKSRC}/tool \
	&& ${CC} ${CFLAGS} -o ropy ropy.c -L${WRKBUILD} -ldisorder

post-install:
	${INSTALL_DATA} ${WRKSRC}/include/disorder.h ${PREFIX}/include
	${INSTALL_PROGRAM} ${WRKSRC}/tool/ropy ${PREFIX}/bin

.include <bsd.port.mk>
