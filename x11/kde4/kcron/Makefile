# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:06:12 zhuk Exp $

COMMENT =	KDE-based GUI for cron task scheduler
DISTNAME =	kcron-${MODKDE4_VERSION}

CATEGORIES =	sysutils productivity
HOMEPAGE =	http://projects.kde.org/projects/kde/kdeadmin/kcron

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

.include <bsd.port.mk>
