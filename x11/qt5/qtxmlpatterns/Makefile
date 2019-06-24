# $OpenBSD: Makefile,v 1.8 2019/06/24 20:56:46 sthen Exp $

QT5NAME =		QtXmlPatterns
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema
REVISION-main =		1

SHARED_LIBS =		Qt5XmlPatterns		2.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network c m

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
