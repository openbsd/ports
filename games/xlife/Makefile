# $OpenBSD: Makefile,v 1.35 2019/07/12 20:46:27 sthen Exp $

COMMENT=	John Horton Conway's Game of Life

DISTNAME=	xlife-5.3
REVISION =	7
CATEGORIES=	games

HOMEPAGE=	http://www.catb.org/~esr/software.html

MASTER_SITES=	https://www.distfiles.pl/

PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xau Xdmcp Xext c curses xcb

CONFIGURE_STYLE=	imake
WRKSRC=	${WRKDIST}/xlife

MAKE_FLAGS=XLIFEPATSDIR=${PREFIX}/share/xlife
FAKE_FLAGS=XLIFEPATSDIR=${TRUEPREFIX}/share/xlife

NO_TEST=	Yes

post-build:
	cd ${WRKDIST}/lifesrc-3.5 && ${MAKE} CFLAGS="${CFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xlife
	# XXX ESR is a slob, use PLIST to trim idiotic stuff
	cp -r ${WRKDIST}/patterns ${PREFIX}/share/xlife
	${INSTALL_PROGRAM} ${WRKDIST}/lifesrc-3.5/lifesrc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/lifesrc-3.5/lifesrcdumb ${PREFIX}/bin
	cd ${PREFIX}/man/man6 && ln -f xlife.6 lifeconv.6
#pre-install:
#	@cd ${WRKSRC}; ${MAKE} install.patterns

.include <bsd.port.mk>
