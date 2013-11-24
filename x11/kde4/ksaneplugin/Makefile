# $OpenBSD: Makefile,v 1.2 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	scanner interface through libksane for KDE
DISTNAME =	ksaneplugin-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/ksane

LIB_DEPENDS = 	${MODKDE4_DEP_DIR}/libksane>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
