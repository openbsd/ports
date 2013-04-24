# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 20:45:30 zhuk Exp $

BROKEN-hppa =	relocation error
CATEGORIES =	devel lang/ruby x11/kde4
COMMENT =	Ruby bindings for Qt4
DISTNAME =	qtruby-${MODKDE4_VERSION}
PKGNAME =	qt4-${MODKDE4_VERSION}
HOMEPAGE =	http://techbase.kde.org/Development/Languages/Ruby

SHARED_LIBS =	qtruby4shared		0.0 # 2.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/phonon
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokephonon ${KDE4LIB}/smokeqsci
WANTLIB += ${KDE4LIB}/smokeqtcore ${KDE4LIB}/smokeqtdbus
WANTLIB += ${KDE4LIB}/smokeqtdeclarative ${KDE4LIB}/smokeqtgui
WANTLIB += ${KDE4LIB}/smokeqtnetwork ${KDE4LIB}/smokeqtopengl
WANTLIB += ${KDE4LIB}/smokeqtscript ${KDE4LIB}/smokeqtsql
WANTLIB += ${KDE4LIB}/smokeqtsvg ${KDE4LIB}/smokeqttest
WANTLIB += ${KDE4LIB}/smokeqtuitools ${KDE4LIB}/smokeqtwebkit
WANTLIB += ${KDE4LIB}/smokeqtxml ${KDE4LIB}/smokeqwt
WANTLIB += qscintilla2

MODULES =	lang/ruby
MODKDE4_USE =

# ruby 1.8 requires LD_PRELOAD hacks for pthreads
MODRUBY_ADJ_FILES =	*.rb rbqtapi
MODRUBY_HANDLE_FLAVORS =Yes
FLAVORS =		ruby18 ruby19
FLAVOR ?=		ruby18

CONFIGURE_ARGS =	-DRUBY_EXECUTABLE=${RUBY}

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/smokeqt

PATCHORIG =	.ports.orig

.include <bsd.port.mk>
