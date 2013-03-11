# $OpenBSD: Makefile,v 1.5 2013/03/11 11:06:05 espie Exp $

COMMENT =	font to view stroke order diagrams for Kanji, Kana and etc

DISTNAME =	KanjiStrokeOrders_v3.000
PKGNAME =	ja-${DISTNAME:L:S/_v/-ttf-/}
CATEGORIES =	fonts japanese x11

HOMEPAGE =	http://sites.google.com/site/nihilistorguk/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}

EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}

INST_DIR =      ${PREFIX}/lib/X11/fonts/KanjiStrokeOrders

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/{*.ttf,*.txt} ${INST_DIR}

.include <bsd.port.mk>
