# $OpenBSD: Makefile,v 1.7 2019/03/08 20:00:39 cwen Exp $

QT5NAME =		QtXmlPatterns
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema
REVISION-main =		0

SHARED_LIBS =		Qt5XmlPatterns		2.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network c m

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
