# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:28 pascal Exp $

COMMENT =	speech tool for mute persons for KDE
DISTNAME =	kmouth-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/Qt3Support lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		${MODKDE4_DEP_DIR}/jovie>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
