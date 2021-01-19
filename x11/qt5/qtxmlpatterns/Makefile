# $OpenBSD: Makefile,v 1.11 2021/01/19 06:16:36 rsadowski Exp $

QT5NAME =		QtXmlPatterns
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema

SHARED_LIBS +=  Qt5XmlPatterns               3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml c m

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

.include <bsd.port.mk>
