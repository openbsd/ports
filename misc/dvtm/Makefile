# $OpenBSD: Makefile,v 1.18 2019/05/17 16:19:39 sthen Exp $

COMMENT=		tiling window management for the console

DISTNAME=		dvtm-0.15
CATEGORIES=		misc
REVISION=		0

HOMEPAGE=		http://www.brain-dump.org/projects/dvtm/

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses util

MASTER_SITES=		${HOMEPAGE}

NO_TEST=     		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dvtm ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dvtm-status ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dvtm.1 ${PREFIX}/man/man1
	tic -s -o ${PREFIX}/share/terminfo ${WRKSRC}/dvtm.info

.include <bsd.port.mk>
