TYPEFACE =		gentium
V =			6.001
COMMENT =		readable font for Latin, Cyrillic, and Greek
DISTNAME =		GentiumPlus-$V
CATEGORIES =		fonts

HOMEPAGE =		https://software.sil.org/gentium/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/gentium/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME}
DOCDIR =		${PREFIX}/share/doc/gentium

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
