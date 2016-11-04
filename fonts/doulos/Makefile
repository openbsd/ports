# $OpenBSD: Makefile,v 1.4 2016/11/04 15:53:59 rpe Exp $

TYPEFACE =		doulos
V =			5.000
COMMENT =		Unicode-based font for Roman and Cyrillic
DISTNAME =		DoulosSIL-$V
CATEGORIES =		fonts

HOMEPAGE =		http://software.sil.org/doulos/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software.sil.org/downloads/doulos/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME}
DOCDIR =		${PREFIX}/share/doc/doulos

do-install:
	${MODFONT_do-install}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
