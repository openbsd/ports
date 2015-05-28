# $OpenBSD: Makefile,v 1.3 2015/05/28 10:17:27 pascal Exp $

COMMENT =	KDE-based GUI for cron task scheduler
DISTNAME =	kcron-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	sysutils productivity
HOMEPAGE =	http://projects.kde.org/projects/kde/kdeadmin/kcron

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

.include <bsd.port.mk>
