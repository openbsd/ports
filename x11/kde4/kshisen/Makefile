# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:28:54 zhuk Exp $

COMMENT =	solitare board KDE game based on Mah Jongg ideas
DISTNAME =	kshisen-${MODKDE4_VERSION}

MODKDE4_USE =	games

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kmahjongglib

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/libkmahjongg>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
