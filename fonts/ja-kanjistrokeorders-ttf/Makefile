# $OpenBSD: Makefile,v 1.13 2020/05/25 07:26:32 bentley Exp $

PKG_ARCH =		*

COMMENT =		font to view stroke order diagrams for Kanji, Kana and etc

DISTNAME =		KanjiStrokeOrders_v4.003
PKGNAME =		ja-${DISTNAME:L:S/_v/-ttf-/}
CATEGORIES =		fonts japanese x11

HOMEPAGE =		https://www.nihilist.org.uk/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://drive.google.com/
DISTFILES =		KanjiStrokeOrders_v4.003.zip{"uc?export=download&id=1gd5vUzwgfUSggn8ZbEG2m03x3bbwYPfL"}

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}

INST_DIR =		${PREFIX}/share/fonts/KanjiStrokeOrders

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/{*.ttf,*.txt} ${INST_DIR}

.include <bsd.port.mk>
