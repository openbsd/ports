# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:53 rsadowski Exp $

QT5NAME =		QtXmlPatterns
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema

SHARED_LIBS +=  Qt5XmlPatterns               3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network c m

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
