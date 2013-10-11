# $OpenBSD: Makefile,v 1.30 2013/10/11 20:39:27 naddy Exp $

COMMENT=	John Horton Conway's Game of Life

DISTNAME=	xlife-5.3
REVISION =	4
CATEGORIES=	games

HOMEPAGE=	http://www.catb.org/~esr/software.html

MASTER_SITES = ${MASTER_SITE_OPENBSD}

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c curses pthread-stubs termcap xcb

CONFIGURE_STYLE=	imake
WRKSRC=	${WRKDIST}/xlife

MAKE_FLAGS=XLIFEPATSDIR=${PREFIX}/share/xlife
FAKE_FLAGS=XLIFEPATSDIR=${TRUEPREFIX}/share/xlife

NO_TEST=	Yes
USE_GROFF =	Yes

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
