# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:29 pascal Exp $

COMMENT =	solitare board KDE game based on Mah Jongg ideas
DISTNAME =	kshisen-${MODKDE4_VERSION}
REVISION =	1

MODKDE4_USE =	games

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kmahjongglib

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/libkmahjongg>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
