# $OpenBSD: Makefile,v 1.12 2015/09/23 09:44:55 dcoppa Exp $

COMMENT =	network traffic monitor and statistics

GH_VERSION =	0.4.3
GH_ACCOUNT =	mattthias
GH_PROJECT =	slurm
GH_TAGNAME =	upstream/${GH_VERSION}
DISTNAME =	${GH_PROJECT}-${GH_VERSION}
CATEGORIES =	net

HOMEPAGE =	http://github.com/mattthias/slurm/wiki/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c ncurses

MODULES =	devel/cmake

WRKDIST =	${WRKDIR}/${GH_PROJECT}-upstream-${GH_VERSION}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/theme.c ${WRKSRC}/slurm.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slurm/
.for i in COPYRIGHT FAQ THANKS COPYING
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/slurm/
.endfor
	${INSTALL_MAN} ${WRKSRC}/slurm.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
