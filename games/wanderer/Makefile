# $OpenBSD: Makefile,v 1.6 2006/11/10 23:10:15 steven Exp $

COMMENT=	"Rogue like adventure game"

DISTNAME=	wanderer-3.2
PKGNAME=	${DISTNAME}p1

CATEGORIES=	games

HOMEPAGE=	http://www.e271.net/~marina/wanderer.html

MAINTAINER=	Marina Brown <marina@surferz.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c curses

MASTER_SITES=	http://www.e271.net/~marina/

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wanderer
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/wanderer/wandererscores
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/wanderer
	chown ${MANOWN}:${MANGRP} ${PREFIX}/man/man6/wanderer.6

.include <bsd.port.mk>
