# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:08:20 zhuk Exp $

COMMENT =	file compare utility for KDE
DISTNAME =	kompare-${MODKDE4_VERSION}

CATEGORIES =	textproc
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kompare

SHARED_LIBS =	komparedialogpages	51.0 # 4.7
SHARED_LIBS +=	komparediff2		51.0 # 4.7
SHARED_LIBS +=	kompareinterface	51.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/ktexteditor ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += soprano

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
