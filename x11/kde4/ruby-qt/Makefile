# $OpenBSD: Makefile,v 1.30 2020/02/22 05:38:04 rsadowski Exp $

BROKEN-hppa =	relocation error
CATEGORIES =	devel x11/kde4
COMMENT =	Ruby bindings for Qt4
DISTNAME =	qtruby-${MODKDE4_VERSION}
PKGNAME =	qt4-${MODKDE4_VERSION}
REVISION =	9

HOMEPAGE =	http://techbase.kde.org/Development/Languages/Ruby

SHARED_LIBS =	qtruby4shared		51.0 # 2.0

WANTLIB =  ${MODRUBY_WANTLIB}
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokephonon
WANTLIB += ${KDE4LIB}/smokeqtcore ${KDE4LIB}/smokeqtdbus
WANTLIB += ${KDE4LIB}/smokeqtdeclarative ${KDE4LIB}/smokeqtgui
WANTLIB += ${KDE4LIB}/smokeqtnetwork ${KDE4LIB}/smokeqtopengl
WANTLIB += ${KDE4LIB}/smokeqtscript ${KDE4LIB}/smokeqtsql
WANTLIB += ${KDE4LIB}/smokeqtsvg ${KDE4LIB}/smokeqttest
WANTLIB += ${KDE4LIB}/smokeqtuitools ${KDE4LIB}/smokeqtwebkit
WANTLIB += ${KDE4LIB}/smokeqtxml

MODULES =	multimedia/phonon lang/ruby
MODKDE4_USE =

# Remember update @conflict markers in PLIST when changing FLAVORS.
FLAVORS =		ruby24 ruby25 ruby26
MODRUBY_HANDLE_FLAVORS=	Yes
MODRUBY_ADJ_FILES =	*.rb rbqtapi
SUBST_VARS =		MODRUBY_FLAVOR

LIB_DEPENDS = 		${MODKDE4_DEP_DIR}/smokeqt>=${MODKDE4_DEP_VERSION}p6

CONFIGURE_ARGS =	-DRUBY_EXECUTABLE=${RUBY} \
			-DCMAKE_DISABLE_FIND_PACKAGE_Qwt5=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_QScintilla=ON

NO_TEST =	Yes

.include <bsd.port.mk>
