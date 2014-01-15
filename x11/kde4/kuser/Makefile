# $OpenBSD: Makefile,v 1.3 2014/01/15 19:42:10 zhuk Exp $

COMMENT =	user management application for KDE
DISTNAME =	kuser-${MODKDE4_VERSION}

CATEGORIES =	sysutils security
HOMEPAGE =	http://projects.kde.org/projects/kde/kdeadmin/kuser

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kldap
WANTLIB += ${KDE4LIB}/kntlm

MODKDE4_USE =	pim

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
