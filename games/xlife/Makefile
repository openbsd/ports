# $OpenBSD: Makefile,v 1.15 2002/03/21 20:57:08 espie Exp $

COMMENT=	"John Horton Conway's Game of Life"

DISTNAME=	xlife-5.3
CATEGORIES=	games
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.ccil.org/pub/esr/
HOMEPAGE=	http://tuxedo.org/~esr/software.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake
WRKSRC=	${WRKDIST}/xlife

MAKE_FLAGS=XLIFEPATSDIR=${PREFIX}/share/xlife
FAKE_FLAGS=XLIFEPATSDIR=${TRUEPREFIX}/share/xlife

post-build:
	cd ${WRKDIST}/lifesrc-3.5 && ${MAKE} CFLAGS="${CFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xlife
	# XXX ESR is a slob, use PLIST to trim idiotic stuff
	cp -r ${WRKDIST}/patterns ${PREFIX}/share/xlife
	${INSTALL_PROGRAM} ${WRKDIST}/lifesrc-3.5/lifesrc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/lifesrc-3.5/lifesrcdumb ${PREFIX}/bin
	cd ${PREFIX}/man/cat6 && ln -f xlife.0 lifeconv.0
#pre-install:
#	@cd ${WRKSRC}; ${MAKE} install.patterns

.include <bsd.port.mk>
