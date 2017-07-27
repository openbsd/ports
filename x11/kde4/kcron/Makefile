# $OpenBSD: Makefile,v 1.4 2017/07/27 11:57:48 sthen Exp $

COMMENT =	KDE-based GUI for cron task scheduler
DISTNAME =	kcron-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	sysutils productivity
HOMEPAGE =	http://projects.kde.org/projects/kde/kdeadmin/kcron

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

.include <bsd.port.mk>
