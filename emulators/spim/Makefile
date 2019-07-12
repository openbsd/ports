# $OpenBSD: Makefile,v 1.27 2019/07/12 20:46:10 sthen Exp $

COMMENT=	MIPS R2000/R3000 simulator

DISTNAME=	spim-8.0
REVISION=	1
CATEGORIES=	emulators

HOMEPAGE=	http://www.cs.wisc.edu/~larus/spim.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c m

MASTER_SITES=	http://www.cs.wisc.edu/~larus/SPIM/

BUILD_DEPENDS=	devel/bison

WRKSRC=			${WRKDIST}/xspim
CONFIGURE_STYLE=	imake

MAKE_FLAGS=	PREFIX="${PREFIX}" \
		CC="${CC}"

NO_TEST=	Yes

post-configure:
	cd ${WRKDIST}/spim && ./Configure
	cd ${WRKDIST}/xspim && ${MAKE_ENV} ${XMKMF}

pre-build:
	cd ${WRKDIST}/spim && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/spim
	${INSTALL_PROGRAM} ${WRKDIST}/spim/spim ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/xspim/xspim ${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIST}/CPU/exceptions.s ${PREFIX}/share/spim
	${INSTALL_MAN} ${WRKDIST}/Documentation/spim.man ${PREFIX}/man/man1/spim.1
	${INSTALL_MAN} ${WRKDIST}/Documentation/xspim.man ${PREFIX}/man/man1/xspim.1

.include <bsd.port.mk>
