# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 11:41:12 zhuk Exp $

COMMENT =	KDE Activity rooms management
DISTNAME =	kactivities-${MODKDE4_VERSION}

SHARED_LIBS =	kactivities	0.0 # 6.0

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/nepomukcore ${KDE4LIB}/plasma
WANTLIB += soprano

# Force usage of GCC 4.2, to make sure daemon crap remains disabled
MODULES =		gcc4
MODKDE4_USE =		libs
MODGCC4_ARCHS =		*
MODGCC4_VERSION =	4.2
MODGCC4_LANGS =		c c++

BUILD_DEPENDS =		misc/shared-desktop-ontologies

LIB_DEPENDS =		${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
