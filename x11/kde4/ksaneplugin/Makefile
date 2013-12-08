# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:31 zhuk Exp $

COMMENT =	scanner interface through libksane for KDE
DISTNAME =	ksaneplugin-${MODKDE4_VERSION}

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/ksane

MODKDE4_USE =	libs

LIB_DEPENDS = 	${MODKDE4_DEP_DIR}/libksane>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
