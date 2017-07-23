# $OpenBSD: Makefile,v 1.3 2017/07/23 09:26:30 espie Exp $

QT5NAME =		QtPurchasing
COMMENT-main =		in-app purchases in Qt5 and Qt5 Quick applications
REVISION =		0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5Purchasing		0.0

WANTLIB =  ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
