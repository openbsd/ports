COMMENT =		readable font for Latin, Cyrillic, and Greek

MODFONT_FAMILY =	gentium
MODFONT_VERSION =	6.101
DISTNAME =		GentiumPlus-${MODFONT_VERSION}
CATEGORIES =		fonts

HOMEPAGE =		https://software.sil.org/gentium/
MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =			https://software.sil.org/downloads/r/gentium/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME}
DOCDIR =		${PREFIX}/share/doc/gentium

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
