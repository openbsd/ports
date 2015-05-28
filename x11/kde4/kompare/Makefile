# $OpenBSD: Makefile,v 1.4 2015/05/28 10:17:28 pascal Exp $

COMMENT =	file compare utility for KDE
DISTNAME =	kompare-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	textproc devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kompare

SHARED_LIBS =	komparedialogpages	52.0 # 4.7
#SHARED_LIBS +=	komparediff2		51.0 # 4.7
SHARED_LIBS +=	kompareinterface	52.0 # 4.7

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/komparediff2
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/ktexteditor ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += soprano

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/libkomparediff2>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
