# $OpenBSD: Makefile,v 1.4 2013/07/04 00:46:58 zhuk Exp $

COMMENT =	graph theory IDE for KDE
DISTNAME =	rocs-${MODKDE4_VERSION}

# XXX Crashes sometimes.

#SHARED_LIBS =	rocslib			0.0 # 4.7
SHARED_LIBS =	rocscore		50.0 # 4.10
SHARED_LIBS +=	rocsvisualeditor	50.0 # 4.10

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtScriptTools lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/krosscore ${KDE4LIB}/krossui
WANTLIB += ${KDE4LIB}/ktexteditor ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += soprano

BUILD_DEPENDS =	devel/boost>=1.49

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

# XXX Ugly hack until CMake or rocs, whatever, could be fixed.
LOST_LIBS =	rocs_GraphStructure rocs_ListStructure
post-configure:
.for _l in ${LOST_LIBS}
	cd ${WRKBUILD}/lib && ln -s {,lib}${_l}.so
.endfor

.include <bsd.port.mk>
