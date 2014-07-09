# $OpenBSD: Makefile,v 1.2 2014/07/09 20:03:29 zhuk Exp $

COMMENT =	hex file editor for KDE
DISTNAME =	okteta-${MODKDE4_VERSION}

CATEGORIES =	devel sysutils
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/okteta

SHARED_LIBS +=  kasten2controllers        51.0 # 0.2
SHARED_LIBS +=  kasten2core               51.0 # 0.2
SHARED_LIBS +=  kasten2gui                51.0 # 0.2
SHARED_LIBS +=  kasten2okteta1controllers 51.0 # 0.2
SHARED_LIBS +=  kasten2okteta1core        51.0 # 0.2
SHARED_LIBS +=  kasten2okteta1gui         51.0 # 0.2
SHARED_LIBS +=  okteta1core               51.0 # 0.8
SHARED_LIBS +=  okteta1gui                51.0 # 0.8

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtScriptTools lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3 ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += qca2 soprano

BUILD_DEPENDS =	misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

LIB_DEPENDS =	security/qca2

.include <bsd.port.mk>
