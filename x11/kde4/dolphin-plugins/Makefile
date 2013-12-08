# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:03:35 zhuk Exp $

COMMENT =	VCS plugins for KDE Dolphin file manager
DISTNAME =	dolphin-plugins-${MODKDE4_VERSION}

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/ktexteditor ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/konq ${KDE4LIB}/kparts
WANTLIB += soprano

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/baseapps>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
