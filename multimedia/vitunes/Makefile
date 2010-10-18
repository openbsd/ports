# $OpenBSD: Makefile,v 1.2 2010/10/18 21:25:07 espie Exp $

COMMENT =		curses media indexer and player for vi users

DISTNAME =		vitunes-1.0.5

CATEGORIES =		multimedia

HOMEPAGE =		http://www.vitunes.org/

MAINTAINER =		Laurent Fanis <laurent@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c  m ncurses util

LIB_DEPENDS =		tag,tag_c::audio/taglib

RUN_DEPENDS =		::x11/mplayer
			
MASTER_SITES =		${HOMEPAGE}/files/

EXTRACT_SUFX =		.tgz

ALL_TARGET =		vitunes

USE_GROFF =	Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vitunes ${PREFIX}/bin
#	${INSTALL_PROGRAM} ${WRKSRC}/add_urls.sh ${PREFIX}/add_urls.sh
	${INSTALL_MAN} ${WRKSRC}/vitunes.1 ${PREFIX}/man/man1/vitunes.1

.include <bsd.port.mk>
