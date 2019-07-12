# $OpenBSD: Makefile,v 1.27 2019/07/12 20:46:21 sthen Exp $

COMMENT=	network head-to-head version of T*tris

DISTNAME=	netris-0.52
REVISION=	3
CATEGORIES=	games

MASTER_SITES=	https://www.distfiles.pl/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure
CONFIGURE_ARGS=		--cc "${CC}" --copt "${CFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/netris ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/sr ${PREFIX}/bin/sample-robot
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
