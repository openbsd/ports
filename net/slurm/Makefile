# $OpenBSD: Makefile,v 1.11 2015/09/17 13:38:39 dcoppa Exp $

COMMENT =	network traffic monitor and statistics

GH_VERSION =	0.3.3
GH_ACCOUNT =	mattthias
GH_PROJECT =	slurm
GH_TAGNAME =	upstream/${GH_VERSION}
DISTNAME =	${GH_PROJECT}-${GH_VERSION}
REVISION =	4
CATEGORIES =	net

HOMEPAGE =	http://github.com/mattthias/slurm/wiki/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c ncurses

CONFIGURE_STYLE =	gnu

WRKDIST =	${WRKDIR}/${GH_PROJECT}-upstream-${GH_VERSION}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/theme.c ${WRKSRC}/slurm.1

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/slurm ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slurm/
	${INSTALL_DATA_DIR} ${PREFIX}/share/slurm/
.for i in COPYRIGHT FAQ THANKS COPYING
	${INSTALL_DATA} ${WRKBUILD}/$i ${PREFIX}/share/doc/slurm/
.endfor
	${INSTALL_DATA} ${WRKBUILD}/themes/*.theme ${PREFIX}/share/slurm/
	${INSTALL_MAN} ${WRKBUILD}/slurm.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
