# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:28 pascal Exp $

COMMENT =	Mah Jongg solitare board game for KDE
DISTNAME =	kmahjongg-${MODKDE4_VERSION}
REVISION =	1

MODKDE4_USE =	games

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdegamesprivate ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kmahjongglib

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/libkmahjongg>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
