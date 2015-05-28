# $OpenBSD: Makefile,v 1.10 2015/05/28 10:17:27 pascal Exp $

COMMENT =	scientific calculator for KDE
DISTNAME =	kalgebra-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += GL GLU
WANTLIB += lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/analitza ${KDE4LIB}/analitzagui
WANTLIB += ${KDE4LIB}/analitzaplot ${KDE4LIB}/kdeclarative
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/plasma
WANTLIB += soprano

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/libkdeedu>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic	\
		${MODKDE4_DEP_DIR}/libkdeedu>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/analitza>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
