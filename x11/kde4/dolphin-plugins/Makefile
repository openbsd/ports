# $OpenBSD: Makefile,v 1.4 2017/07/27 11:57:48 sthen Exp $

COMMENT =	VCS plugins for KDE Dolphin file manager
DISTNAME =	dolphin-plugins-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/ktexteditor ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/konq ${KDE4LIB}/kparts
WANTLIB += soprano

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/baseapps>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
