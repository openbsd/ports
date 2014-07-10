# $OpenBSD: Makefile,v 1.7 2014/07/10 19:55:26 zhuk Exp $

CATEGORIES =	devel
COMMENT =	introspective wrappers around Qt
DISTNAME =	smokeqt-${MODKDE4_VERSION}
REVISION =	0

WANTLIB = m
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtGui lib/qt4/QtHelp lib/qt4/QtMultimedia
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtScript
WANTLIB += lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += ${KDE4LIB}/smokebase
WANTLIB += qimageblitz qscintilla2 qwt

SHARED_LIBS =	smokephonon		50.1 # 3.0
SHARED_LIBS +=	smokeqimageblitz	50.1 # 3.0
SHARED_LIBS +=	smokeqsci		50.1 # 3.0
SHARED_LIBS +=	smokeqt3support		50.1 # 3.0
SHARED_LIBS +=	smokeqtcore		50.1 # 3.0
SHARED_LIBS +=	smokeqtdbus		50.1 # 3.0
SHARED_LIBS +=	smokeqtdeclarative	50.1 # 3.0
SHARED_LIBS +=	smokeqtgui		50.1 # 3.0
SHARED_LIBS +=	smokeqthelp		50.1 # 3.0
SHARED_LIBS +=	smokeqtmultimedia	50.1 # 3.0
SHARED_LIBS +=	smokeqtnetwork		50.1 # 3.0
SHARED_LIBS +=	smokeqtopengl		50.1 # 3.0
SHARED_LIBS +=	smokeqtscript		50.1 # 3.0
SHARED_LIBS +=	smokeqtsql		50.1 # 3.0
SHARED_LIBS +=	smokeqtsvg		50.1 # 3.0
SHARED_LIBS +=	smokeqttest		50.1 # 3.0
SHARED_LIBS +=	smokeqtuitools		50.1 # 3.0
SHARED_LIBS +=	smokeqtwebkit		50.1 # 3.0
SHARED_LIBS +=	smokeqtxml		50.1 # 3.0
SHARED_LIBS +=	smokeqtxmlpatterns	50.1 # 3.0
SHARED_LIBS +=	smokeqwt		50.1 # 3.0

MODKDE4_USE =
MODULES =	multimedia/phonon

LIB_DEPENDS =	editors/qscintilla \
		graphics/qimageblitz \
		${MODKDE4_DEP_DIR}/smokegen \
		x11/qwt

NO_TEST =	Yes

.include <bsd.port.mk>
