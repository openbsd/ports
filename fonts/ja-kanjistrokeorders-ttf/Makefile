PKG_ARCH =		*

COMMENT =		font to view stroke order diagrams for Kanji, Kana and etc

DISTNAME =		KanjiStrokeOrders_v4.004
PKGNAME =		ja-${DISTNAME:L:S/_v/-ttf-/}
CATEGORIES =		fonts japanese x11

HOMEPAGE =		https://www.nihilist.org.uk/

# BSD
PERMIT_PACKAGE =	Yes

SITES =			https://drive.google.com/
DISTFILES =		KanjiStrokeOrders_v4.004.zip{uc?export=download&id=1snpD-IQmT6fGGQjEePHdDzE2aiwuKrz4}

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}

INST_DIR =		${PREFIX}/share/fonts/KanjiStrokeOrders

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/{*.ttf,*.txt} ${INST_DIR}

.include <bsd.port.mk>
