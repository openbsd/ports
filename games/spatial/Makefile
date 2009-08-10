# $OpenBSD: Makefile,v 1.6 2009/08/10 06:31:42 kili Exp $

COMMENT=	3d tetris

DISTNAME=	threedee
PKGNAME=	spatial-1.0.1p1
CATEGORIES=	games

EXTRACT_SUFX=	.tar.Z

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BACKUP}

WRKBUILD=	${WRKDIST}/spatial
PIECEFILE=${PREFIX}/share/spatial/spatial.shp
SCOREFILE=${PREFIX}/share/spatial/spatial.sco
MAKE_FLAGS=CFLAGS='${CFLAGS} -DSCOREFILENAME=\"$(SCOREFILE)\" -DPIECEFILENAME=\"$(PIECEFILE)\" -I${X11BASE}/include' XLIBS="-L${X11BASE}/lib -lX11"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/spatial ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/spatial.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/spatial
	${INSTALL_DATA} ${WRKBUILD}/spatial.shp ${PREFIX}/share/spatial/spatial.shp

USE_X11=	Yes
NO_REGRESS=	Yes
WANTLIB=	X11 c m pthread-stubs xcb

.include <bsd.port.mk>
