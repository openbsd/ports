# $OpenBSD: Makefile,v 1.3 2015/05/28 10:17:29 pascal Exp $

COMMENT =	system log files viewer for KDE
DISTNAME =	ksystemlog-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	sysutils
HOMEPAGE =	http://projects.kde.org/projects/kde/kdeadmin/ksystemlog

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
