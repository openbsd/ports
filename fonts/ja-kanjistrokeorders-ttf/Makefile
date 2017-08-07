# $OpenBSD: Makefile,v 1.10 2017/08/07 19:38:42 rsadowski Exp $

PKG_ARCH =		*

COMMENT =		font to view stroke order diagrams for Kanji, Kana and etc

DISTNAME =		KanjiStrokeOrders_v4.001
PKGNAME =		ja-${DISTNAME:L:S/_v/-ttf-/}
CATEGORIES =		fonts japanese x11

HOMEPAGE =		http://www.nihilist.org.uk/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.nihilist.org.uk/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}

INST_DIR =		${PREFIX}/share/fonts/KanjiStrokeOrders

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/{*.ttf,*.txt} ${INST_DIR}

.include <bsd.port.mk>
