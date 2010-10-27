# $OpenBSD: Makefile,v 1.1.1.1 2010/10/27 20:41:25 fgsch Exp $

COMMENT =	font to view stroke order diagrams for Kanji, Kana and etc

DISTNAME =	KanjiStrokeOrders_v2.015
PKGNAME =	${DISTNAME:L:S/_v/-ttf-/}
CATEGORIES =	japanese x11

HOMEPAGE =	http://sites.google.com/site/nihilistorguk/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}Home/

EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_REGRESS =	Yes

WRKDIST =	${WRKDIR}                                                   

INST_DIR =      ${PREFIX}/lib/X11/fonts/KanjiStrokeOrders

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/{*.ttf,*.txt} ${INST_DIR}

.include <bsd.port.mk>
