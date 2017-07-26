# $OpenBSD: Makefile,v 1.4 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtXmlPatterns
REVISION =		0
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema

SHARED_LIBS =		Qt5XmlPatterns		2.1

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =		${COMPILER_LIBCXX} Qt5Core Qt5Network c m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
