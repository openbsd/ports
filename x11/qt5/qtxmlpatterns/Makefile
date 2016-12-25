# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:27 zhuk Exp $

QT5NAME =		QtXmlPatterns
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema
SHARED_LIBS =		Qt5XmlPatterns		2.0

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB =		Qt5Core Qt5Network c m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
