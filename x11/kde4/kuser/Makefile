# $OpenBSD: Makefile,v 1.7 2015/10/25 13:11:54 zhuk Exp $

COMMENT =	user management application for KDE
DISTNAME =	kuser-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	sysutils security
HOMEPAGE =	http://projects.kde.org/projects/kde/kdeadmin/kuser

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kldap
WANTLIB += ${KDE4LIB}/kntlm

MODKDE4_USE =	pim

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
