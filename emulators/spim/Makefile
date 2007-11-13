# $OpenBSD: Makefile,v 1.15 2007/11/13 14:54:30 steven Exp $

COMMENT=	MIPS R2000/R3000 simulator

DISTNAME=	spim-7.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	emulators

HOMEPAGE=	http://www.cs.wisc.edu/~larus/spim.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# homegrown, to be changed in next release
PERMIT_PACKAGE_CDROM=   may not sell
PERMIT_PACKAGE_FTP=     may not bundle with commercial product
PERMIT_DISTFILES_CDROM= may not sell
PERMIT_DISTFILES_FTP=   may not bundle with commercial product

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c m

MASTER_SITES=	http://www.cs.wisc.edu/~larus/SPIM/

BUILD_DEPENDS=	:bison-*:devel/bison

XMKMF=		xmkmf

FAKE_FLAGS=	PREFIX="${PREFIX}"

USE_X11=	Yes

do-build:
	(cd ${WRKSRC}/spim; ./Configure && ${MAKE})
	(cd ${WRKSRC}/xspim; ${XMKMF} && ${MAKE})

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/spim
	${INSTALL_PROGRAM} ${WRKSRC}/spim/spim ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/xspim/xspim ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/CPU/exceptions.s ${PREFIX}/share/spim
	${INSTALL_MAN} ${WRKSRC}/Documentation/spim.man ${PREFIX}/man/man1/spim.1
	${INSTALL_MAN} ${WRKSRC}/Documentation/xspim.man ${PREFIX}/man/man1/xspim.1

.include <bsd.port.mk>
