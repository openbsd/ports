# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:03 sthen Exp $

COMMENT =	VHDL tags generator

DISTNAME =	vtags-0.10

CATEGORIES =	devel

HOMEPAGE =	http://www.peterantoine.me.uk/vtags.html

# Artistic License
PERMIT_PACKAGE =		Yes

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
