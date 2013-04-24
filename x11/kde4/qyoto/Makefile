# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 18:43:55 zhuk Exp $

CATEGORIES =	devel
COMMENT =	Qt4 bindings for .NET/Mono
DISTNAME =	qyoto-${MODKDE4_VERSION}

SHARED_LIBS =	qyoto			0.0 # 2.0
SHARED_LIBS +=	phonon-sharp		0.0
SHARED_LIBS +=	qscintilla-sharp	0.0
SHARED_LIBS +=	qtscript-sharp		0.0
SHARED_LIBS +=	qttest-sharp		0.0
SHARED_LIBS +=	qtuitools-sharp		0.0
SHARED_LIBS +=	qtwebkit-sharp		0.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtTest lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/phonon
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokephonon ${KDE4LIB}/smokeqsci
WANTLIB += ${KDE4LIB}/smokeqtcore ${KDE4LIB}/smokeqtdbus
WANTLIB += ${KDE4LIB}/smokeqtgui ${KDE4LIB}/smokeqtnetwork
WANTLIB += ${KDE4LIB}/smokeqtopengl ${KDE4LIB}/smokeqtsql
WANTLIB += ${KDE4LIB}/smokeqtsvg ${KDE4LIB}/smokeqtxml
WANTLIB += ${KDE4LIB}/smokeqtscript ${KDE4LIB}/smokeqttest
WANTLIB += ${KDE4LIB}/smokeqtuitools ${KDE4LIB}/smokeqtwebkit
WANTLIB += qscintilla2 

MODULES =	lang/mono

MODKDE4_USE =

LIB_DEPENDS =	editors/qscintilla \
		${MODKDE4_DEP_DIR}/smokeqt

CONFIGURE_ARGS =	-DPHONON_INCLUDE_DIR:String=${MODQT4_INCDIR}

NO_TEST =	Yes

.include <bsd.port.mk>
