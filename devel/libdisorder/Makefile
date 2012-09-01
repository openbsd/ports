# $OpenBSD: Makefile,v 1.3 2012/09/01 12:02:26 naddy Exp $

COMMENT=	simple C Library for entropy measurement

DISTNAME=	libdisorder-0.0.2
REVISION=	0

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
