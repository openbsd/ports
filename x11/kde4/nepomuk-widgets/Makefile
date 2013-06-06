# $OpenBSD: Makefile,v 1.3 2013/06/06 08:36:49 zhuk Exp $

COMMENT =	Nepomuk-based KDE Plasma widgets
DISTNAME =	nepomuk-widgets-${MODKDE4_VERSION}

SHARED_LIBS =	nepomukwidgets		50.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/nepomukcore
WANTLIB += soprano

MODKDE4_USE =	libs

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION}

MAKE_ENV =	LD_TRACE_PLT=1

.include <bsd.port.mk>
