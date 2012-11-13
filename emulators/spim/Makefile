# $OpenBSD: Makefile,v 1.23 2012/11/13 16:31:40 bentley Exp $

COMMENT=	MIPS R2000/R3000 simulator

DISTNAME=	spim-8.0
REVISION=	0
CATEGORIES=	emulators

HOMEPAGE=	http://www.cs.wisc.edu/~larus/spim.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c m

MASTER_SITES=	http://www.cs.wisc.edu/~larus/SPIM/

BUILD_DEPENDS=	devel/bison

WRKSRC=			${WRKDIST}/xspim
CONFIGURE_STYLE=	imake

MAKE_FLAGS=	PREFIX="${PREFIX}" \
		CC="${CC}"

NO_REGRESS=	Yes

do-build:
	(cd ${WRKDIST}/spim; ./Configure && ${MAKE_PROGRAM} ${MAKE_FLAGS})
	(cd ${WRKDIST}/xspim; ${XMKMF} && ${MAKE_PROGRAM} ${MAKE_FLAGS})

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/spim
	${INSTALL_PROGRAM} ${WRKDIST}/spim/spim ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/xspim/xspim ${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIST}/CPU/exceptions.s ${PREFIX}/share/spim
	${INSTALL_MAN} ${WRKDIST}/Documentation/spim.man ${PREFIX}/man/man1/spim.1
	${INSTALL_MAN} ${WRKDIST}/Documentation/xspim.man ${PREFIX}/man/man1/xspim.1

.include <bsd.port.mk>
