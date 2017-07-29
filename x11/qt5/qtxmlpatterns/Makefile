# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtXmlPatterns
REVISION =		0
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema

SHARED_LIBS =		Qt5XmlPatterns		2.1

MULTI_PACKAGES =	-main -examples

WANTLIB =		${COMPILER_LIBCXX} Qt5Core Qt5Network c m pthread

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
