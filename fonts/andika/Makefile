# $OpenBSD: Makefile,v 1.4 2016/11/04 15:53:59 rpe Exp $

TYPEFACE =		andika
V =			5.000
COMMENT =		clear sans serif, Unicode-compliant font
DISTNAME =		Andika-$V
CATEGORIES =		fonts

HOMEPAGE =		http://software.sil.org/andika/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software.sil.org/downloads/andika/

MODULES +=		font

NO_BUILD =		Yes
NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/andika

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${MODFONT_do-install}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
