# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:14 sthen Exp $

COMMENT =	terminal version of the 2048 sliding block puzzle game
CATEGORIES =	games

GH_ACCOUNT =	tiehuis
GH_PROJECT =	2048-cli
GH_TAGNAME =	v0.9.1

MAINTAINER =	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c curses

USE_GMAKE =	Yes
ALL_TARGET =	curses

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/2048 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/man/2048.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
