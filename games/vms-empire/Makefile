# $OpenBSD: Makefile,v 1.2 2014/03/10 01:33:22 bentley Exp $

COMMENT =		turn-based empire game

DISTNAME =		vms-empire-1.11

CATEGORIES =		games

HOMEPAGE =		http://www.catb.org/~esr/vms-empire/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncurses

MASTER_SITES =		http://www.catb.org/~esr/vms-empire/

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

# docbook-generated lists using \h
USE_GROFF =		Yes

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/vms-empire ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man6
	${INSTALL_MAN} ${WRKDIST}/empire.6 ${PREFIX}/man/man6/vms-empire.6

.include <bsd.port.mk>
