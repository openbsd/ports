# $OpenBSD: Makefile,v 1.5 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	Nepomuk-based KDE Plasma widgets
DISTNAME =	nepomuk-widgets-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	nepomukwidgets		51.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/nepomukcore
WANTLIB += soprano

MODKDE4_USE =	libs

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION}

MAKE_ENV =	LD_TRACE_PLT=1

.include <bsd.port.mk>
