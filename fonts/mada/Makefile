# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:12 sthen Exp $

COMMENT =	modernist Arabic typeface

V =		1.3
DISTNAME =	mada-${V}

CATEGORIES =	fonts

MAINTAINER =	George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/alif-type/mada/releases/download/v${V}/

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

FONTDIR =	${PREFIX}/share/fonts/mada
DOCDIR =	${PREFIX}/share/doc/mada
WRKDIST =	${WRKDIR}/Mada-${V}

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/README.txt ${DOCDIR}

.include <bsd.port.mk>
