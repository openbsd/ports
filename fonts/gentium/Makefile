# $OpenBSD: Makefile,v 1.1.1.1 2016/08/11 08:17:30 bentley Exp $

TYPEFACE =		gentium
V =			5.000
COMMENT =		readable font for Latin, Cyrillic, and Greek
DISTNAME =		GentiumPlus-$V
CATEGORIES =		fonts

HOMEPAGE =		http://software.sil.org/gentium/

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software.sil.org/downloads/gentium/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME}
DOCDIR =		${PREFIX}/share/doc/gentium

do-install:
	${MODFONT_do-install}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
