# $OpenBSD: Makefile,v 1.11 2015/05/28 10:17:26 pascal Exp $

COMMENT =	KDE Activity rooms management
MODKDE4_VERSION =	4.13.3
DISTNAME =	kactivities-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kactivities		51.0 # 6.0
SHARED_LIBS +=	kactivities-models	51.0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/nepomukcore
WANTLIB += soprano

WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSql
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeclarative ${KDE4LIB}/plasma

MODKDE4_USE =		libs

BUILD_DEPENDS =		misc/shared-desktop-ontologies

LIB_DEPENDS =		${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
