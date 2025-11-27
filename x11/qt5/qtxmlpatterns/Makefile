QT5NAME =		QtXmlPatterns
COMMENT-main =		Qt5 support for XPath, XQuery, XSLT and XML Schema

KDE_COMMIT =		0b644263abca66503db1ce8a4e126cf358a34685
KDE_VERSION =		0

SHARED_LIBS +=  Qt5XmlPatterns               3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml c m

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
