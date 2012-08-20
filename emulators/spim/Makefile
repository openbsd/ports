# $OpenBSD: Makefile,v 1.22 2012/08/20 15:08:44 ajacoutot Exp $

COMMENT=	MIPS R2000/R3000 simulator

DISTNAME=	spim-8.0
CATEGORIES=	emulators

HOMEPAGE=	http://www.cs.wisc.edu/~larus/spim.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# homegrown, to be changed in next release
PERMIT_PACKAGE_CDROM=   may not sell
PERMIT_PACKAGE_FTP=     may not bundle with commercial product
PERMIT_DISTFILES_CDROM= may not sell
PERMIT_DISTFILES_FTP=   may not bundle with commercial product

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c m

MASTER_SITES=	http://www.cs.wisc.edu/~larus/SPIM/

BUILD_DEPENDS=	devel/bison

XMKMF=		xmkmf

MAKE_FLAGS=	PREFIX="${PREFIX}"

NO_REGRESS=	Yes

do-build:
	(cd ${WRKSRC}/spim; ./Configure && ${MAKE_PROGRAM} ${MAKE_FLAGS})
	(cd ${WRKSRC}/xspim; ${XMKMF} && ${MAKE_PROGRAM} ${MAKE_FLAGS})

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/spim
	${INSTALL_PROGRAM} ${WRKSRC}/spim/spim ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/xspim/xspim ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/CPU/exceptions.s ${PREFIX}/share/spim
	${INSTALL_MAN} ${WRKSRC}/Documentation/spim.man ${PREFIX}/man/man1/spim.1
	${INSTALL_MAN} ${WRKSRC}/Documentation/xspim.man ${PREFIX}/man/man1/xspim.1

.include <bsd.port.mk>
