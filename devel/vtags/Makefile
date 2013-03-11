# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:31 espie Exp $

COMMENT =	VHDL tags generator

DISTNAME =	vtags-0.10

CATEGORIES =	devel

HOMEPAGE =	http://www.peterantoine.me.uk/vtags.html

# Artistic License
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://www.peterantoine.me.uk/downloads/
TAR =		${LOCALBASE}/bin/gtar

BUILD_DEPENDS = archivers/gtar

MAKE_FILE =	makefile
USE_GMAKE =	Yes

ALL_TARGET =	vtags
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/vtags

WANTLIB +=	c

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/vtags ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/docs/vtags.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
