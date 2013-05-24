# $OpenBSD: Makefile,v 1.2 2013/05/24 19:17:59 jasper Exp $

COMMENT =		Commodore tape image cleaning utility
DISTNAME =		tapclean-20130522
CATEGORIES =		misc

HOMEPAGE =		http://sourceforge.net/projects/tapclean/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

# the software authors do not make source release tarballs
MASTER_SITES =		http://theunixzoo.co.uk/distfiles/

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/tapclean
WRKBUILD =		${WRKDIST}/src

USE_GMAKE =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tapclean ${PREFIX}/bin

.include <bsd.port.mk>
