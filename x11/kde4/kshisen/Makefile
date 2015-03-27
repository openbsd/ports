# $OpenBSD: Makefile,v 1.5 2015/03/27 08:16:21 ajacoutot Exp $

COMMENT =	solitare board KDE game based on Mah Jongg ideas
DISTNAME =	kshisen-${MODKDE4_VERSION}
REVISION =	0

MODKDE4_USE =	games

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kmahjongglib

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/libkmahjongg>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
