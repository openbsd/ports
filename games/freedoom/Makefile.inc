# $OpenBSD: Makefile.inc,v 1.2 2019/07/13 10:59:26 sthen Exp $

COMMENT =	free content game based on the Doom engine

V ?=		0.11.3
DISTNAME ?=	${DOOM_PROJECT}-$V

CATEGORIES ?=	games

HOMEPAGE ?=	https://freedoom.github.io/

# BSD 3-clause
PERMIT_PACKAGE ?=	Yes

#WANTLIB =		???

MASTER_SITES =		https://github.com/freedoom/freedoom/releases/download/v$V/

EXTRACT_SUFX ?=		.zip

NO_BUILD ?=		Yes
NO_TEST ?=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${DOOM_PROJECT}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${WRKDIST}/*.html \
		${PREFIX}/share/doc/${DOOM_PROJECT}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom
	${INSTALL_DATA} ${WRKDIST}/*.wad ${PREFIX}/share/doom
