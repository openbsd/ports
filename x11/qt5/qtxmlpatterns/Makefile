# $OpenBSD: Makefile,v 1.9 2019/11/05 10:18:54 rsadowski Exp $

QT5NAME =		QtXmlPatterns
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema

SHARED_LIBS =		Qt5XmlPatterns		2.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network c m

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
