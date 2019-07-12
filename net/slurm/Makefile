# $OpenBSD: Makefile,v 1.14 2019/07/12 20:48:49 sthen Exp $

COMMENT =	network traffic monitor and statistics

GH_VERSION =	0.4.3
GH_ACCOUNT =	mattthias
GH_PROJECT =	slurm
GH_TAGNAME =	upstream/${GH_VERSION}
DISTNAME =	${GH_PROJECT}-${GH_VERSION}
CATEGORIES =	net
REVISION =	0

HOMEPAGE =	http://github.com/mattthias/slurm/wiki/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c curses

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
