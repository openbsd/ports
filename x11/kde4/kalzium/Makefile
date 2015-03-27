# $OpenBSD: Makefile,v 1.4 2015/03/27 08:16:19 ajacoutot Exp $

BROKEN =	requires key dependencies update
COMMENT =	periodic system of elements for KDE
DISTNAME =	kalzium-${MODKDE4_VERSION}

# TODO Works, but loops forever on exit. Previously there was double free.

SHARED_LIBS =	science			50.0 # 4.7
SHARED_LIBS +=	compoundviewer		50.0 # 4.7

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus
WANTLIB += lib/qt4/QtDeclarative lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/khtml ${KDE4LIB}/kio ${KDE4LIB}/kjs
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kunitconversion ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += avogadro openbabel soprano

MODULES =	x11/kde4 multimedia/phonon lang/ocaml

# misc/chemical-mime-data is checked but does not affect build.
BUILD_DEPENDS =	math/eigen2 \
		math/facile

RUN_DEPENDS =	devel/desktop-file-utils \
		math/facile \
		misc/chemical-mime-data \
		x11/gtk+3,-guic

LIB_DEPENDS = 	education/avogadro \
		misc/openbabel

.include <bsd.port.mk>
