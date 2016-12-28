# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:24 zhuk Exp $

QT5NAME =		QtXmlPatterns
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema
REVISION-qch =		0
REVISION-html =		0

SHARED_LIBS =		Qt5XmlPatterns		2.0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =		Qt5Core Qt5Network c m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
