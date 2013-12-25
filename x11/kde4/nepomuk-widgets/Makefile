# $OpenBSD: Makefile,v 1.7 2013/12/25 14:58:33 zhuk Exp $

COMMENT =	Nepomuk-based KDE Plasma widgets
DISTNAME =	nepomuk-widgets-${MODKDE4_VERSION}

SHARED_LIBS =	nepomukwidgets		51.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/nepomukcore
WANTLIB += soprano

MODKDE4_USE =	libs

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
