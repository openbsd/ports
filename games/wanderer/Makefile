# $OpenBSD: Makefile,v 1.10 2013/03/11 11:07:41 espie Exp $

COMMENT=	Rogue like adventure game

DISTNAME=	wanderer-3.2
REVISION =	1

CATEGORIES=	games

HOMEPAGE=	http://www.e271.net/~marina/wanderer.html

MAINTAINER=	Marina Brown <marina@surferz.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c curses

MASTER_SITES=	http://www.e271.net/~marina/

USE_GROFF =		Yes
NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wanderer
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/wanderer/wandererscores
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/wanderer
	chown ${MANOWN}:${MANGRP} ${PREFIX}/man/man6/wanderer.6

.include <bsd.port.mk>
