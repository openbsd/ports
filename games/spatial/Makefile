# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:24 sthen Exp $

COMMENT=	3d tetris

DISTNAME=	threedee
PKGNAME=	spatial-1.0.1
REVISION =	2
CATEGORIES=	games

EXTRACT_SUFX=	.tar.Z

# BSD
PERMIT_PACKAGE=	Yes

WRKBUILD=	${WRKDIST}/spatial
PIECEFILE=${PREFIX}/share/spatial/spatial.shp
SCOREFILE=${PREFIX}/share/spatial/spatial.sco
MAKE_FLAGS=CFLAGS='${CFLAGS} -DSCOREFILENAME=\"$(SCOREFILE)\" -DPIECEFILENAME=\"$(PIECEFILE)\" -I${X11BASE}/include' XLIBS="-L${X11BASE}/lib -lX11"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/spatial ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/spatial.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/spatial
	${INSTALL_DATA} ${WRKBUILD}/spatial.shp ${PREFIX}/share/spatial/spatial.shp

NO_TEST=	Yes
WANTLIB=	X11 c m xcb

.include <bsd.port.mk>
