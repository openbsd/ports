# $OpenBSD: Makefile,v 1.1.1.1 2021/10/15 14:12:09 bcallah Exp $

V =		2.0
COMMENT =	classic word search game that you can play in your terminal
DISTNAME =	wordsearch-${V}
CATEGORIES =	games

HOMEPAGE =	https://github.com/jensenpat/wordsearch/
MAINTAINER =	Pat Jensen <patj@passpackets.com>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/jensenpat/wordsearch/releases/download/${V}/

MODULES =	lang/python

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/wordsearch ${PREFIX}/bin/wordsearch
	${INSTALL_MAN} ${WRKSRC}/man/wordsearch.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/wordsearch
	${INSTALL_DATA} ${WRKSRC}/puzzles/*.txt ${PREFIX}/share/wordsearch
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wordsearch
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/wordsearch

.include <bsd.port.mk>
