# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:13 sthen Exp $

TYPEFACE =		sunscreen
V =			1.0
COMMENT =		disco-inspired display face
DISTNAME =		sunscreen-$V
CATEGORIES =		fonts

EXTRACT_SUFX =		.zip

HOMEPAGE =		http://www.simon-cozens.org/fonts/sunscreen.html

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://www.simon-cozens.org/downloads/

MODULES =		font
FONTTYPES =		otf

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME}
DOCDIR =		${PREFIX}/share/doc/sunscreen

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
