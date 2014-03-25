# $OpenBSD: Makefile,v 1.10 2014/03/25 21:20:39 espie Exp $

COMMENT =		curses media indexer and player for vi users

DISTNAME =		vitunes-2.3
REVISION =		1

CATEGORIES =		multimedia

HOMEPAGE =		http://vitunes.org/

MAINTAINER =		Laurent Fanis <laurent.fanis@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m ncursesw tag tag_c util

LIB_DEPENDS =		audio/taglib
RUN_DEPENDS =		x11/mplayer
			
MASTER_SITES =		${HOMEPAGE}/files/

ALL_TARGET =		vitunes
NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vitunes ${PREFIX}/bin
#	${INSTALL_PROGRAM} ${WRKSRC}/add_urls.sh ${PREFIX}/add_urls.sh
	${INSTALL_MAN} ${WRKSRC}/vitunes.1 ${PREFIX}/man/man1/vitunes.1

.include <bsd.port.mk>
