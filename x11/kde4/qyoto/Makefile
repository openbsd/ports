# $OpenBSD: Makefile,v 1.18 2020/02/22 05:38:04 rsadowski Exp $

CATEGORIES =	devel
COMMENT =	Qt4 bindings for .NET/Mono
DISTNAME =	qyoto-${MODKDE4_VERSION}
REVISION =	6

SHARED_LIBS =	qyoto			50.1 # 2.0
SHARED_LIBS +=	phonon-sharp		50.1
SHARED_LIBS +=	qtscript-sharp		50.1
SHARED_LIBS +=	qttest-sharp		50.1
SHARED_LIBS +=	qtuitools-sharp		50.1
SHARED_LIBS +=	qtwebkit-sharp		50.1

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtTest lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokephonon
WANTLIB += ${KDE4LIB}/smokeqtcore ${KDE4LIB}/smokeqtdbus
WANTLIB += ${KDE4LIB}/smokeqtgui ${KDE4LIB}/smokeqtnetwork
WANTLIB += ${KDE4LIB}/smokeqtopengl ${KDE4LIB}/smokeqtsql
WANTLIB += ${KDE4LIB}/smokeqtsvg ${KDE4LIB}/smokeqtxml
WANTLIB += ${KDE4LIB}/smokeqtscript ${KDE4LIB}/smokeqttest
WANTLIB += ${KDE4LIB}/smokeqtuitools ${KDE4LIB}/smokeqtwebkit

MODULES =	multimedia/phonon lang/mono
MODMONO_GMCS_COMPAT = Yes

MODKDE4_USE =

LIB_DEPENDS = 		${MODKDE4_DEP_DIR}/smokeqt>=${MODKDE4_DEP_VERSION}p6

CONFIGURE_ARGS =	-DPHONON_INCLUDE_DIR=${LOCALBASE}/${MODKDE4_INCLUDE_DIR} \
			-DCMAKE_DISABLE_FIND_PACKAGE_Qwt5=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_QScintilla=ON


NO_TEST =	Yes

.include <bsd.port.mk>
