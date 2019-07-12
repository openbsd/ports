# $OpenBSD: Makefile,v 1.19 2019/07/12 20:47:49 sthen Exp $

COMMENT=		tiling window management for the console

DISTNAME=		dvtm-0.15
CATEGORIES=		misc
REVISION=		0

HOMEPAGE=		http://www.brain-dump.org/projects/dvtm/

# MIT/X
PERMIT_PACKAGE=	Yes

WANTLIB += c curses util

MASTER_SITES=		${HOMEPAGE}

NO_TEST=     		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dvtm ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dvtm-status ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dvtm.1 ${PREFIX}/man/man1
	tic -s -o ${PREFIX}/share/terminfo ${WRKSRC}/dvtm.info

.include <bsd.port.mk>
