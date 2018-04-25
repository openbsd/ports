# $OpenBSD: Makefile,v 1.13 2018/04/25 15:31:41 naddy Exp $

COMMENT=	Rogue like adventure game

DISTNAME=	wanderer-3.2
REVISION=	4

CATEGORIES=	games

HOMEPAGE=	http://www.e271.net/~marina/wanderer.html

MAINTAINER=	Marina Brown <marina@surferz.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c curses

MASTER_SITES=	http://www.e271.net/~marina/

NO_TEST=		Yes

pre-patch:
	@rm ${WRKSRC}/Makefile.orig

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wanderer
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/wanderer/wandererscores
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/wanderer
	chown ${MANOWN}:${MANGRP} ${PREFIX}/man/man6/wanderer.6

.include <bsd.port.mk>
