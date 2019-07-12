# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:11 sthen Exp $

TYPEFACE =		gentium
V =			5.000
COMMENT =		readable font for Latin, Cyrillic, and Greek
DISTNAME =		GentiumPlus-$V
CATEGORIES =		fonts
REVISION =		0

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
