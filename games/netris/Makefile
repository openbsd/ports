# $OpenBSD: Makefile,v 1.25 2018/03/08 17:19:20 fcambus Exp $

COMMENT=	network head-to-head version of T*tris

DISTNAME=	netris-0.52
REVISION=	2
CATEGORIES=	games

MASTER_SITES=	https://www.distfiles.pl/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses termcap

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure
CONFIGURE_ARGS=		--cc "${CC}" --copt "${CFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/netris ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/sr ${PREFIX}/bin/sample-robot
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
